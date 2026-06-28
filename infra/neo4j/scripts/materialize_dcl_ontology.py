#!/usr/bin/env python3
"""Batch DCL -> Neo4j ontology materialization.

This script parses all DCLGEN files under dcl/ and materializes a canonical
DB2-centered graph:

DB2System -[:HAS_SCHEMA]-> DB2Schema -[:HAS_TABLE]-> DBTable
DB2System -[:HAS_LIBRARY]-> DclgenLibrary
DclgenLibrary -[:CONTAINS_DCLGEN]-> DclgenArtifact -[:DESCRIBES_TABLE]-> DBTable
DclgenArtifact -[:DECLARES_COLUMN]-> TableColumn -[:TRANSLATED_TO]-> CobolHostField

It is designed to make the ontology repeatable for all DCL files, independent
from COBOL program ingestion runs.
"""

from __future__ import annotations

import argparse
import json
import os
import pathlib
import re
import subprocess
from dataclasses import dataclass
from datetime import datetime, timezone

REPO_ROOT = pathlib.Path(__file__).resolve().parents[3]
DCL_DIR = REPO_ROOT / "dcl"
REPORT_DIR = REPO_ROOT / "infra" / "neo4j" / "reports"

NEO4J_CONTAINER = os.environ.get("NEO4J_CONTAINER", "neo4j-local")
NEO4J_PASSWORD = os.environ.get("NEO4J_PASSWORD", "CambiaEstaClave123!")
NEO4J_DATABASE = os.environ.get("NEO4J_DATABASE", "neo4j")

DCL_DECLARE_RE = re.compile(r"^\s*EXEC\s+SQL\s+DECLARE\s+([A-Z0-9_.-]+)\s+TABLE\b", re.IGNORECASE)
DCL_HOST_STRUCTURE_RE = re.compile(r"^\s*01\s+(DCL[A-Z0-9-]+)\.\s*$", re.IGNORECASE)
DCL_HOST_FIELD_RE = re.compile(r"^\s*10\s+([A-Z][A-Z0-9_-]*)\s+PIC\s+(.+?)\.\s*$", re.IGNORECASE)
DCL_HOST_GROUP_RE = re.compile(r"^\s*10\s+([A-Z][A-Z0-9_-]*)\s*\.\s*$", re.IGNORECASE)


@dataclass
class DclMetadata:
    member_name: str
    table_name: str
    qualified_name: str
    schema_name: str
    library_spec: str
    library_dataset: str
    library_member: str
    host_structure_name: str | None
    declared_columns: list[str]
    declared_column_definitions: list[str]
    db2_columns: list[dict]
    cobol_host_fields: list[dict]
    dcl_path: str


def utc_now_compact() -> str:
    return datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")


def extract_parenthesized_value(text: str, marker: str) -> str | None:
    start = text.upper().find(marker.upper())
    if start < 0:
        return None
    idx = start + len(marker)
    depth = 1
    chars: list[str] = []
    for ch in text[idx:]:
        if ch == "(":
            depth += 1
            chars.append(ch)
            continue
        if ch == ")":
            depth -= 1
            if depth == 0:
                return "".join(chars).strip()
            chars.append(ch)
            continue
        chars.append(ch)
    return None


def normalize_identifier(name: str) -> str:
    # DCL DB2 columns often use '_' while COBOL host fields use '-'.
    return name.upper().replace("-", "_").strip()


def parse_dcl_file(path: pathlib.Path, default_schema: str) -> DclMetadata | None:
    member_name = path.stem.upper()

    comment_qualified_name: str | None = None
    declare_table_token: str | None = None
    qualified_name: str | None = None
    table_name: str | None = None
    schema_name: str | None = None

    library_spec: str | None = None
    library_dataset: str | None = None
    library_member: str | None = None

    host_structure_name: str | None = None
    db2_columns: list[dict] = []
    host_fields: list[dict] = []
    declared_columns: list[str] = []
    declared_column_definitions: list[str] = []

    in_declare_block = False

    for raw_line in path.read_text(encoding="utf-8", errors="ignore").splitlines():
        line = raw_line.rstrip()
        upper_line = line.upper()

        if comment_qualified_name is None and "DCLGEN TABLE(" in upper_line:
            table_value = extract_parenthesized_value(line, "DCLGEN TABLE(")
            if table_value:
                comment_qualified_name = table_value.upper()

        if library_spec is None and "LIBRARY(" in upper_line:
            lib_value = extract_parenthesized_value(line, "LIBRARY(")
            if lib_value:
                library_spec = lib_value.upper()
                dataset_match = re.match(r"^(.+)\(([^()]+)\)$", library_spec)
                if dataset_match:
                    library_dataset = dataset_match.group(1).strip()
                    library_member = dataset_match.group(2).strip()
                else:
                    library_dataset = library_spec
                    library_member = member_name

        declare_match = DCL_DECLARE_RE.match(line)
        if declare_match:
            declare_table_token = declare_match.group(1).upper()
            in_declare_block = True
            continue

        if host_structure_name is None:
            host_match = DCL_HOST_STRUCTURE_RE.match(line)
            if host_match:
                host_structure_name = host_match.group(1).upper()

        host_field_match = DCL_HOST_FIELD_RE.match(line)
        if host_field_match:
            field_name = host_field_match.group(1).upper()
            pic_clause = re.sub(r"\s+", " ", host_field_match.group(2).strip()).upper()
            host_fields.append(
                {
                    "fieldName": field_name,
                    "picClause": pic_clause,
                    "position": len(host_fields) + 1,
                }
            )
        else:
            host_group_match = DCL_HOST_GROUP_RE.match(line)
            if host_group_match:
                field_name = host_group_match.group(1).upper()
                host_fields.append(
                    {
                        "fieldName": field_name,
                        "picClause": "GROUP-ITEM",
                        "position": len(host_fields) + 1,
                    }
                )

        if not in_declare_block:
            continue

        stripped = line.strip()
        if not stripped or stripped.startswith("*"):
            continue
        if stripped.startswith("("):
            stripped = stripped[1:].strip()
            if not stripped:
                continue
        if stripped == ")" or upper_line.startswith(") END-EXEC"):
            in_declare_block = False
            continue

        stripped = stripped.rstrip(",")
        column_match = re.match(r"^([A-Z][A-Z0-9_]*)\s+(.+)$", stripped, re.IGNORECASE)
        if not column_match:
            continue

        col_name = column_match.group(1).upper()
        col_def = re.sub(r"\s+", " ", column_match.group(2).strip()).upper()
        is_nullable = "NOT NULL" not in col_def

        declared_columns.append(col_name)
        declared_column_definitions.append(f"{col_name} {col_def}")
        db2_columns.append(
            {
                "columnName": col_name,
                "sqlDefinition": col_def,
                "nullable": is_nullable,
                "position": len(db2_columns) + 1,
            }
        )

    if declare_table_token:
        if "." in declare_table_token:
            qualified_name = declare_table_token
        elif comment_qualified_name and comment_qualified_name.endswith("." + declare_table_token):
            qualified_name = comment_qualified_name
        else:
            qualified_name = declare_table_token

    if not qualified_name:
        return None

    table_name = qualified_name.split(".")[-1]
    if "." in qualified_name:
        schema_name = qualified_name.rsplit(".", 1)[0]
    else:
        schema_name = default_schema
        qualified_name = f"{schema_name}.{table_name}"

    if not library_spec:
        library_dataset = "UNSPECIFIED_DCL_LIBRARY"
        library_member = member_name
        library_spec = f"{library_dataset}({library_member})"

    host_map = {normalize_identifier(item["fieldName"]): item for item in host_fields}
    for col in db2_columns:
        mapped = host_map.get(normalize_identifier(col["columnName"]))
        if mapped:
            col["hostFieldName"] = mapped["fieldName"]
            col["hostPicClause"] = mapped["picClause"]

    return DclMetadata(
        member_name=member_name,
        table_name=table_name,
        qualified_name=qualified_name,
        schema_name=schema_name,
        library_spec=library_spec,
        library_dataset=library_dataset or "UNSPECIFIED_DCL_LIBRARY",
        library_member=library_member or member_name,
        host_structure_name=host_structure_name,
        declared_columns=declared_columns,
        declared_column_definitions=declared_column_definitions,
        db2_columns=db2_columns,
        cobol_host_fields=host_fields,
        dcl_path=f"dcl/{path.name}",
    )


def build_payload(metadata_items: list[DclMetadata], run_id: str, db2_name: str) -> dict:
    nodes: list[dict] = []
    rels: list[dict] = []

    def base_props(source_file: str) -> dict:
        return {
            "ingestion": "auto",
            "reviewStatus": "pending_human_review",
            "reviewRequired": True,
            "reviewSource": "auto-ingestion",
            "runId": run_id,
            "sourceFile": source_file,
        }

    def add_node(label: str, name: str, props: dict) -> None:
        nodes.append({"label": label, "name": name, "properties": props})

    def add_rel(rel_type: str, from_label: str, from_name: str, to_label: str, to_name: str, props: dict) -> None:
        rels.append(
            {
                "type": rel_type,
                "fromLabel": from_label,
                "fromName": from_name,
                "toLabel": to_label,
                "toName": to_name,
                "properties": props,
            }
        )

    add_node(
        "DB2System",
        db2_name,
        {
            "name": db2_name,
            "layer": "data-access",
            "nodeType": "db2-system",
            "viewTag": "db2",
            **base_props("dcl/*"),
        },
    )

    for item in metadata_items:
        add_node(
            "DB2Schema",
            item.schema_name,
            {
                "name": item.schema_name,
                "layer": "data-access",
                "nodeType": "db2-schema",
                "viewTag": "db2",
                **base_props(item.dcl_path),
            },
        )
        add_rel(
            "HAS_SCHEMA",
            "DB2System",
            db2_name,
            "DB2Schema",
            item.schema_name,
            {
                "runId": run_id,
                "reviewStatus": "pending_human_review",
                "reviewSource": "auto-ingestion",
                "reviewRequired": True,
                "evidenceFile": item.dcl_path,
                "evidenceLines": [1],
            },
        )

        add_node(
            "DBTable",
            item.table_name,
            {
                "name": item.table_name,
                "qualifiedName": item.qualified_name,
                "schemaName": item.schema_name,
                "dclMember": item.member_name,
                "dclPath": item.dcl_path,
                "dclHostStructure": item.host_structure_name,
                "declaredColumnCount": len(item.declared_columns),
                "declaredColumns": item.declared_columns,
                "declaredColumnDefinitions": item.declared_column_definitions,
                "layer": "data-access",
                "nodeType": "db-table",
                "viewTag": "db2",
                **base_props(item.dcl_path),
            },
        )
        add_rel(
            "HAS_TABLE",
            "DB2Schema",
            item.schema_name,
            "DBTable",
            item.table_name,
            {
                "runId": run_id,
                "reviewStatus": "pending_human_review",
                "reviewSource": "auto-ingestion",
                "reviewRequired": True,
                "evidenceFile": item.dcl_path,
                "evidenceLines": [1],
            },
        )

        add_node(
            "DclgenLibrary",
            item.library_dataset,
            {
                "name": item.library_dataset,
                "librarySpec": item.library_spec,
                "layer": "data-access",
                "nodeType": "dclgen-library",
                "viewTag": "db2",
                **base_props(item.dcl_path),
            },
        )
        add_rel(
            "HAS_LIBRARY",
            "DB2System",
            db2_name,
            "DclgenLibrary",
            item.library_dataset,
            {
                "runId": run_id,
                "reviewStatus": "pending_human_review",
                "reviewSource": "auto-ingestion",
                "reviewRequired": True,
                "evidenceFile": item.dcl_path,
                "evidenceLines": [1],
            },
        )
        add_node(
            "DclgenArtifact",
            item.member_name,
            {
                "name": item.member_name,
                "qualifiedName": item.qualified_name,
                "schemaName": item.schema_name,
                "libraryDataset": item.library_dataset,
                "libraryMember": item.library_member,
                "hostStructureName": item.host_structure_name,
                "declaredColumnCount": len(item.declared_columns),
                "layer": "data-access",
                "nodeType": "dclgen-artifact",
                "viewTag": "db2",
                "evidenceFile": item.dcl_path,
                "evidenceLines": [1],
                **base_props(item.dcl_path),
            },
        )
        add_rel(
            "CONTAINS_DCLGEN",
            "DclgenLibrary",
            item.library_dataset,
            "DclgenArtifact",
            item.member_name,
            {
                "runId": run_id,
                "reviewStatus": "pending_human_review",
                "reviewSource": "auto-ingestion",
                "reviewRequired": True,
                "evidenceFile": item.dcl_path,
                "evidenceLines": [1],
            },
        )
        add_rel(
            "DESCRIBES_TABLE",
            "DclgenArtifact",
            item.member_name,
            "DBTable",
            item.table_name,
            {
                "runId": run_id,
                "reviewStatus": "pending_human_review",
                "reviewSource": "auto-ingestion",
                "reviewRequired": True,
                "evidenceFile": item.dcl_path,
                "evidenceLines": [1],
            },
        )

        for col in item.db2_columns:
            col_node_name = f"{item.table_name}.{col['columnName']}"
            add_node(
                "TableColumn",
                col_node_name,
                {
                    "name": col_node_name,
                    "tableName": item.table_name,
                    "columnName": col["columnName"],
                    "sqlDefinition": col["sqlDefinition"],
                    "nullable": col["nullable"],
                    "position": col["position"],
                    "layer": "data-access",
                    "nodeType": "db2-column",
                    "viewTag": "db2",
                    "evidenceFile": item.dcl_path,
                    "evidenceLines": [1],
                    **base_props(item.dcl_path),
                },
            )
            add_rel(
                "DECLARES_COLUMN",
                "DclgenArtifact",
                item.member_name,
                "TableColumn",
                col_node_name,
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": item.dcl_path,
                    "evidenceLines": [1],
                },
            )
            add_rel(
                "HAS_COLUMN",
                "DBTable",
                item.table_name,
                "TableColumn",
                col_node_name,
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": item.dcl_path,
                    "evidenceLines": [1],
                },
            )

            host_name = col.get("hostFieldName")
            host_pic = col.get("hostPicClause")
            if host_name and host_pic:
                host_node_name = f"{item.member_name}.{host_name}"
                add_node(
                    "CobolHostField",
                    host_node_name,
                    {
                        "name": host_node_name,
                        "memberName": item.member_name,
                        "fieldName": host_name,
                        "picClause": host_pic,
                        "hostStructureName": item.host_structure_name,
                        "layer": "data-access",
                        "nodeType": "cobol-host-field",
                        "viewTag": "db2",
                        "evidenceFile": item.dcl_path,
                        "evidenceLines": [1],
                        **base_props(item.dcl_path),
                    },
                )
                add_rel(
                    "DECLARES_HOST_FIELD",
                    "DclgenArtifact",
                    item.member_name,
                    "CobolHostField",
                    host_node_name,
                    {
                        "runId": run_id,
                        "reviewStatus": "pending_human_review",
                        "reviewSource": "auto-ingestion",
                        "reviewRequired": True,
                        "evidenceFile": item.dcl_path,
                        "evidenceLines": [1],
                    },
                )
                add_rel(
                    "TRANSLATED_TO",
                    "TableColumn",
                    col_node_name,
                    "CobolHostField",
                    host_node_name,
                    {
                        "runId": run_id,
                        "reviewStatus": "pending_human_review",
                        "reviewSource": "auto-ingestion",
                        "reviewRequired": True,
                        "evidenceFile": item.dcl_path,
                        "evidenceLines": [1],
                    },
                )

    return {
        "runId": run_id,
        "generatedAt": datetime.now(timezone.utc).isoformat(),
        "nodes": nodes,
        "relationships": rels,
        "dclFiles": [item.dcl_path for item in metadata_items],
    }


def write_payload(payload: dict, run_id: str) -> pathlib.Path:
    REPORT_DIR.mkdir(parents=True, exist_ok=True)
    path = REPORT_DIR / f"dcl-ontology-{run_id}-payload.json"
    path.write_text(json.dumps(payload, indent=2, ensure_ascii=False), encoding="utf-8")
    return path


def run_cypher_script(cypher: str) -> None:
    cmd = [
        "docker",
        "exec",
        "-i",
        NEO4J_CONTAINER,
        "cypher-shell",
        "-u",
        "neo4j",
        "-p",
        NEO4J_PASSWORD,
        "-d",
        NEO4J_DATABASE,
    ]
    subprocess.run(cmd, input=cypher, text=True, check=True)


def _cypher_literal(value) -> str:
    if value is None:
        return "null"
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, (int, float)):
        return str(value)
    if isinstance(value, list):
        return "[" + ", ".join(_cypher_literal(v) for v in value) + "]"
    if isinstance(value, dict):
        items = [f"{k}: {_cypher_literal(v)}" for k, v in value.items()]
        return "{" + ", ".join(items) + "}"
    text = str(value).replace("\\", "\\\\").replace("'", "\\'")
    return f"'{text}'"


def _props_set_clause(alias: str, props: dict) -> str:
    keys = sorted(props.keys())
    if not keys:
        return ""
    assignments = [f"{alias}.{key} = {_cypher_literal(props[key])}" for key in keys]
    return "SET " + ", ".join(assignments)


def commit_payload(payload_path: pathlib.Path) -> None:
    payload = json.loads(payload_path.read_text(encoding="utf-8"))
    lines: list[str] = []

    for node in payload.get("nodes", []):
        label = node["label"]
        name = node["name"]
        props = node.get("properties", {})
        lines.append(f"MERGE (n:{label} {{name: {_cypher_literal(name)}}})")
        set_clause = _props_set_clause("n", props)
        if set_clause:
            lines.append(set_clause)
        lines.append(";")

    for rel in payload.get("relationships", []):
        from_label = rel["fromLabel"]
        to_label = rel["toLabel"]
        rel_type = rel["type"]
        from_name = rel["fromName"]
        to_name = rel["toName"]
        props = rel.get("properties", {})

        lines.append(
            f"MATCH (a:{from_label} {{name: {_cypher_literal(from_name)}}}), (b:{to_label} {{name: {_cypher_literal(to_name)}}})"
        )
        lines.append(f"MERGE (a)-[r:{rel_type}]->(b)")
        set_clause = _props_set_clause("r", props)
        if set_clause:
            lines.append(set_clause)
        lines.append(";")

    run_cypher_script("\n".join(lines))


def validate_equivalence() -> dict:
    query = """
MATCH pCore = (db2:DB2System)-[:HAS_SCHEMA]->(sch:DB2Schema)-[:HAS_TABLE]->(tbl:DBTable)
OPTIONAL MATCH pLib = (lib:DclgenLibrary)-[:CONTAINS_DCLGEN]->(art:DclgenArtifact)-[:DESCRIBES_TABLE]->(tbl)
OPTIONAL MATCH pCols = (art)-[:DECLARES_COLUMN]->(col:TableColumn)
OPTIONAL MATCH pMap = (col)-[:TRANSLATED_TO]->(host:CobolHostField)
RETURN
  count(DISTINCT pCore) AS corePaths,
  count(DISTINCT pLib) AS libPaths,
  count(DISTINCT pCols) AS colPaths,
  count(DISTINCT pMap) AS mapPaths;
"""
    cmd = [
        "docker",
        "exec",
        NEO4J_CONTAINER,
        "cypher-shell",
        "-u",
        "neo4j",
        "-p",
        NEO4J_PASSWORD,
        "-d",
        NEO4J_DATABASE,
        "--format",
        "plain",
        "--wrap",
        "false",
        "--non-interactive",
        query,
    ]
    out = subprocess.run(cmd, check=True, capture_output=True, text=True).stdout.splitlines()
    rows = [line.strip() for line in out if line.strip() and not line.strip().startswith("ready to start consuming")]
    if len(rows) < 2:
        return {"corePaths": 0, "libPaths": 0, "colPaths": 0, "mapPaths": 0}
    values = [x.strip() for x in rows[1].split(",")]
    return {
        "corePaths": int(values[0]),
        "libPaths": int(values[1]),
        "colPaths": int(values[2]),
        "mapPaths": int(values[3]),
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Materialize DB2 ontology from DCL files")
    parser.add_argument("--mode", choices=["discovery", "commit", "full"], default="full")
    parser.add_argument("--db2-name", default="DB2")
    parser.add_argument("--default-schema", default="UNSPECIFIED_SCHEMA")
    parser.add_argument("--members", nargs="*", help="Optional DCL member names (without .dcl)")
    return parser.parse_args()


def main() -> None:
    args = parse_args()
    run_id = f"dcl-ontology-{utc_now_compact()}"

    if args.members:
        dcl_files = [DCL_DIR / f"{name.upper()}.dcl" for name in args.members]
    else:
        dcl_files = sorted(DCL_DIR.glob("*.dcl"))

    metadata_items: list[DclMetadata] = []
    skipped: list[str] = []

    for path in dcl_files:
        if not path.exists():
            skipped.append(str(path.relative_to(REPO_ROOT)))
            continue
        parsed = parse_dcl_file(path, default_schema=args.default_schema)
        if parsed is None:
            skipped.append(str(path.relative_to(REPO_ROOT)))
            continue
        metadata_items.append(parsed)

    payload = build_payload(metadata_items, run_id=run_id, db2_name=args.db2_name)
    payload_path = write_payload(payload, run_id=run_id)

    summary = {
        "runId": run_id,
        "mode": args.mode,
        "totalDclFilesRequested": len(dcl_files),
        "parsedDclFiles": len(metadata_items),
        "skippedDclFiles": len(skipped),
        "payloadFile": str(payload_path.relative_to(REPO_ROOT)),
        "nodes": len(payload["nodes"]),
        "relationships": len(payload["relationships"]),
        "skipped": skipped[:100],
    }

    if args.mode in {"commit", "full"}:
        commit_payload(payload_path)

    if args.mode == "full":
        summary["equivalenceCheck"] = validate_equivalence()

    summary_path = REPORT_DIR / f"dcl-ontology-{run_id}-summary.json"
    summary_path.write_text(json.dumps(summary, indent=2, ensure_ascii=False), encoding="utf-8")

    print(json.dumps(summary, ensure_ascii=False))


if __name__ == "__main__":
    main()
