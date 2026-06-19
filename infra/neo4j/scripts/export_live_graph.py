#!/usr/bin/env python3
"""Export the live Neo4j graph from the local Docker container to Cypher.

The export is intentionally logical and reproducible:
- nodes are MERGE'd by their natural key
- relationships are MERGE'd by endpoint natural keys and type
- properties are preserved as Cypher maps

The script only depends on docker + cypher-shell inside the neo4j-local container.
"""

from __future__ import annotations

import ast
import os
import pathlib
import re
import subprocess
import sys
from datetime import datetime, timezone


ROOT = pathlib.Path(__file__).resolve().parents[1]
SNAPSHOT_DIR = ROOT / "snapshots"
CONTAINER = os.environ.get("NEO4J_CONTAINER", "neo4j-local")
PASSWORD = os.environ.get("NEO4J_PASSWORD", "CambiaEstaClave123!")
DATABASE = os.environ.get("NEO4J_DATABASE", "neo4j")


def run_query(query: str) -> list[str]:
    command = [
        "docker",
        "exec",
        CONTAINER,
        "cypher-shell",
        "-u",
        "neo4j",
        "-p",
        PASSWORD,
        "-d",
        DATABASE,
        "--format",
        "plain",
        "--wrap",
        "false",
        "--non-interactive",
        query,
    ]
    completed = subprocess.run(command, check=True, capture_output=True, text=True)
    lines = []
    for raw_line in completed.stdout.splitlines():
        line = raw_line.strip()
        if not line or line.startswith("ready to start consuming query"):
            continue
        lines.append(line)
    return lines


def parse_cypher_map(text: str) -> dict:
    cleaned = text.strip()
    if cleaned == "{}":
        return {}
    cleaned = re.sub(r"\bTRUE\b", "True", cleaned)
    cleaned = re.sub(r"\bFALSE\b", "False", cleaned)
    cleaned = re.sub(r"\bNULL\b", "None", cleaned)
    cleaned = re.sub(
        r'(:\s*)(\d{4}-\d{2}-\d{2}(?:T\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|[+-]\d{2}:?\d{2})?)?)',
        r'\1"\2"',
        cleaned,
    )
    cleaned = re.sub(r'([,{]\s*)([A-Za-z_][A-Za-z0-9_]*)\s*:', r'\1"\2":', cleaned)
    return ast.literal_eval(cleaned)


def parse_scalar_text(text: str) -> str:
    stripped = text.strip()
    if stripped.startswith('"') and stripped.endswith('"'):
        return ast.literal_eval(stripped)
    return stripped


def render_value(value) -> str:
    if value is None:
        return "null"
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, (int, float)) and not isinstance(value, bool):
        return str(value)
    if isinstance(value, str):
        return "'" + value.replace("\\", "\\\\").replace("'", "\\'") + "'"
    if isinstance(value, list):
        return "[" + ", ".join(render_value(item) for item in value) + "]"
    if isinstance(value, dict):
        return render_map(value)
    raise TypeError(f"Unsupported value type: {type(value)!r}")


def render_map(values: dict) -> str:
    items = []
    for key in sorted(values):
        items.append(f"{key}: {render_value(values[key])}")
    return "{" + ", ".join(items) + "}"


def node_key(label: str, props: dict) -> dict:
    if label == "Paragraph":
        key = {"programName": props.get("programName"), "name": props.get("name")}
    elif label == "ProcStep":
        key = {"procedureName": props.get("procedureName"), "stepName": props.get("stepName")}
    elif label == "ProcVariable":
        key = {
            "procedureName": props.get("procedureName"),
            "name": props.get("name"),
            "direction": props.get("direction"),
        }
    elif label == "ProcDD":
        key = {"procedureName": props.get("procedureName"), "ddName": props.get("ddName")}
    elif label == "RuntimeDataset":
        key = {"dsn": props.get("dsn")}
    elif label == "SchedulerCondition":
        key = {
            "scheduler": props.get("scheduler"),
            "name": props.get("name"),
            "dateScope": props.get("dateScope"),
        }
    else:
        key = {"name": props.get("name")}
    missing = [field for field, value in key.items() if value in (None, "")]
    if missing:
        raise ValueError(f"Missing natural key field(s) for {label}: {', '.join(missing)}")
    return key


def render_merge_for_node(label: str, props: dict) -> str:
    key = node_key(label, props)
    key_text = render_map(key)
    props_text = render_map(props)
    return f"MERGE (n:{label} {key_text})\nSET n += {props_text};"


def natural_key_string(label: str, props: dict) -> str:
    if label == "Paragraph":
        return f"{props.get('programName')}::{props.get('name')}"
    if label == "ProcStep":
        return f"{props.get('procedureName')}::{props.get('stepName')}"
    if label == "ProcVariable":
        return f"{props.get('procedureName')}::{props.get('name')}::{props.get('direction')}"
    if label == "ProcDD":
        return f"{props.get('procedureName')}::{props.get('ddName')}"
    if label == "RuntimeDataset":
        return str(props.get("dsn"))
    if label == "SchedulerCondition":
        return f"{props.get('scheduler')}::{props.get('name')}::{props.get('dateScope')}"
    return str(props.get("name"))


def key_map_from_string(label: str, key_text: str) -> dict:
    if label == "Paragraph":
        program_name, name = key_text.split("::", 1)
        return {"programName": program_name, "name": name}
    if label == "ProcStep":
        procedure_name, step_name = key_text.split("::", 1)
        return {"procedureName": procedure_name, "stepName": step_name}
    if label == "ProcVariable":
        procedure_name, name, direction = key_text.split("::", 2)
        return {"procedureName": procedure_name, "name": name, "direction": direction}
    if label == "ProcDD":
        procedure_name, dd_name = key_text.split("::", 1)
        return {"procedureName": procedure_name, "ddName": dd_name}
    if label == "RuntimeDataset":
        return {"dsn": key_text}
    if label == "SchedulerCondition":
        scheduler, name, date_scope = key_text.split("::", 2)
        return {"scheduler": scheduler, "name": name, "dateScope": date_scope}
    return {"name": key_text}


def build_snapshot() -> str:
    timestamp = datetime.now(timezone.utc).isoformat(timespec="seconds")

    node_lines = run_query(
        "MATCH (n) "
        "WITH head(labels(n)) AS label, properties(n) AS props, "
        "CASE "
        "WHEN head(labels(n)) = 'Paragraph' THEN coalesce(n.programName, '') + '::' + coalesce(n.name, '') "
        "WHEN head(labels(n)) = 'ProcStep' THEN coalesce(n.procedureName, '') + '::' + coalesce(n.stepName, '') "
        "WHEN head(labels(n)) = 'ProcVariable' THEN coalesce(n.procedureName, '') + '::' + coalesce(n.name, '') + '::' + coalesce(n.direction, '') "
        "WHEN head(labels(n)) = 'ProcDD' THEN coalesce(n.procedureName, '') + '::' + coalesce(n.ddName, '') "
        "WHEN head(labels(n)) = 'RuntimeDataset' THEN coalesce(n.dsn, '') "
        "WHEN head(labels(n)) = 'SchedulerCondition' THEN coalesce(n.scheduler, '') + '::' + coalesce(n.name, '') + '::' + coalesce(n.dateScope, '') "
        "ELSE coalesce(n.name, '') "
        "END AS naturalKey, "
        "n.programName AS programName, n.name AS name "
        "ORDER BY label, naturalKey "
        "RETURN label, naturalKey, props;"
    )

    relationship_lines = run_query(
        "MATCH (s)-[r]->(t) "
        "WITH head(labels(s)) AS sourceLabel, type(r) AS relType, properties(r) AS relProps, head(labels(t)) AS targetLabel, "
        "CASE "
        "WHEN head(labels(s)) = 'Paragraph' THEN coalesce(s.programName, '') + '::' + coalesce(s.name, '') "
        "WHEN head(labels(s)) = 'ProcStep' THEN coalesce(s.procedureName, '') + '::' + coalesce(s.stepName, '') "
        "WHEN head(labels(s)) = 'ProcVariable' THEN coalesce(s.procedureName, '') + '::' + coalesce(s.name, '') + '::' + coalesce(s.direction, '') "
        "WHEN head(labels(s)) = 'ProcDD' THEN coalesce(s.procedureName, '') + '::' + coalesce(s.ddName, '') "
        "WHEN head(labels(s)) = 'RuntimeDataset' THEN coalesce(s.dsn, '') "
        "WHEN head(labels(s)) = 'SchedulerCondition' THEN coalesce(s.scheduler, '') + '::' + coalesce(s.name, '') + '::' + coalesce(s.dateScope, '') "
        "ELSE coalesce(s.name, '') "
        "END AS sourceKey, "
        "CASE "
        "WHEN head(labels(t)) = 'Paragraph' THEN coalesce(t.programName, '') + '::' + coalesce(t.name, '') "
        "WHEN head(labels(t)) = 'ProcStep' THEN coalesce(t.procedureName, '') + '::' + coalesce(t.stepName, '') "
        "WHEN head(labels(t)) = 'ProcVariable' THEN coalesce(t.procedureName, '') + '::' + coalesce(t.name, '') + '::' + coalesce(t.direction, '') "
        "WHEN head(labels(t)) = 'ProcDD' THEN coalesce(t.procedureName, '') + '::' + coalesce(t.ddName, '') "
        "WHEN head(labels(t)) = 'RuntimeDataset' THEN coalesce(t.dsn, '') "
        "WHEN head(labels(t)) = 'SchedulerCondition' THEN coalesce(t.scheduler, '') + '::' + coalesce(t.name, '') + '::' + coalesce(t.dateScope, '') "
        "ELSE coalesce(t.name, '') "
        "END AS targetKey, "
        "s.programName AS sourceProgramName, s.name AS sourceName, t.programName AS targetProgramName, t.name AS targetName "
        "ORDER BY sourceLabel, sourceKey, relType, targetLabel, targetKey "
        "RETURN sourceLabel, sourceKey, relType, targetLabel, targetKey, relProps;"
    )

    node_records = []
    for line in node_lines[1:]:
        label, natural_key, props_text = line.split(", ", 2)
        label = parse_scalar_text(label)
        natural_key = parse_scalar_text(natural_key)
        props = parse_cypher_map(props_text)
        node_records.append((label, props))

    relationship_records = []
    for line in relationship_lines[1:]:
        source_label, source_key, rel_type, target_label, target_key, rel_props_text = line.split(", ", 5)
        source_label = parse_scalar_text(source_label)
        source_key = parse_scalar_text(source_key)
        rel_type = parse_scalar_text(rel_type)
        target_label = parse_scalar_text(target_label)
        target_key = parse_scalar_text(target_key)
        rel_props = parse_cypher_map(rel_props_text)
        relationship_records.append((source_label, source_key, rel_type, rel_props, target_label, target_key))

    snapshot_lines = [
        "// Generated from the live Neo4j Docker container",
        f"// Container: {CONTAINER}",
        f"// Database: {DATABASE}",
        f"// Exported at: {timestamp}",
        f"// Nodes: {len(node_records)}",
        f"// Relationships: {len(relationship_records)}",
        "",
    ]

    for label, props in sorted(node_records, key=lambda item: (item[0], natural_key_string(item[0], item[1]))):
        snapshot_lines.append(render_merge_for_node(label, props))

    snapshot_lines.append("")

    for source_label, source_key, rel_type, rel_props, target_label, target_key in sorted(
        relationship_records,
        key=lambda item: (
            item[0],
            item[1],
            item[2],
            item[4],
            item[5],
        ),
    ):
        snapshot_lines.append(
            f"MATCH (source:{source_label} {render_map(key_map_from_string(source_label, source_key))}), (target:{target_label} {render_map(key_map_from_string(target_label, target_key))})\n"
            f"MERGE (source)-[r:{rel_type}]->(target)\n"
            f"SET r += {render_map(rel_props)};"
        )

    snapshot_lines.append("")
    snapshot_lines.append("// End of export")
    snapshot_lines.append("")

    return "\n".join(snapshot_lines)


def main() -> int:
    SNAPSHOT_DIR.mkdir(parents=True, exist_ok=True)
    snapshot_path = SNAPSHOT_DIR / f"neo4j-live-{datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%SZ')}.cypher"
    snapshot_path.write_text(build_snapshot(), encoding="utf-8")
    print(snapshot_path)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())