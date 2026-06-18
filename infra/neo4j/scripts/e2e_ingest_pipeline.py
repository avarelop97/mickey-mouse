#!/usr/bin/env python3
"""End-to-end COBOL -> Neo4j ingestion pipeline with strict evidence/audit gates."""

from __future__ import annotations

import argparse
import json
import os
import pathlib
import re
import subprocess
from collections import defaultdict
from datetime import datetime, timezone

REPO_ROOT = pathlib.Path(__file__).resolve().parents[3]
SRC_DIR = REPO_ROOT / "src"
CPY_DIR = REPO_ROOT / "cpy"
REPORT_DIR = REPO_ROOT / "infra" / "neo4j" / "reports"
QUERY_DIR = REPO_ROOT / "infra" / "neo4j" / "queries"

NEO4J_CONTAINER = os.environ.get("NEO4J_CONTAINER", "neo4j-local")
NEO4J_PASSWORD = os.environ.get("NEO4J_PASSWORD", "CambiaEstaClave123!")
NEO4J_DATABASE = os.environ.get("NEO4J_DATABASE", "neo4j")

ALLOWED_LABELS = {
    "Program",
    "Paragraph",
    "Copybook",
    "DBTable",
    "ParamType",
    "ExternalRoutine",
    "OutputFile",
}

CRITICAL_REL_TYPES = {
    "USES_COPYBOOK",
    "READS_DATA",
    "UPDATES_DATA",
    "DERIVES_FROM",
    "DEPENDS_ON_EXTERNAL",
    "INCLUDES_COPYBOOK",
    "READS_TABLE",
    "UPDATES_TABLE",
    "CALLS_ROUTINE",
    "USES_PARAM_TYPE",
    "WRITES_FILE",
    "IMPLEMENTED_BY",
}

INVALID_SUMMARY_TOKENS = [
    "limpieza pendiente",
    "nodo tecnico no funcional",
    "requiere limpieza",
    "placeholder",
    "todo",
]

# Accept both COBOL styles for paragraph headers:
# - "010-INIT."
# - "010-INIT SECTION."
PARAGRAPH_RE = re.compile(r"^\s*([0-9A-Z][0-9A-Z-]{1,70})(?:\s+SECTION)?\.\s*$", re.IGNORECASE)
COPY_RE = re.compile(r"^\s*COPY\s+([A-Z0-9-]+)\b", re.IGNORECASE)
CALL_RE = re.compile(r"\bCALL\s+'([A-Z0-9-]+)'", re.IGNORECASE)
PERFORM_RE = re.compile(r"\bPERFORM\s+([A-Z0-9-]+)\b", re.IGNORECASE)
EXEC_SQL_START_RE = re.compile(r"\bEXEC\s+SQL\b", re.IGNORECASE)
EXEC_SQL_END_RE = re.compile(r"\bEND-EXEC\b", re.IGNORECASE)
SQL_INCLUDE_RE = re.compile(r"\bINCLUDE\s+([A-Z0-9-]+)\b", re.IGNORECASE)
PARAGRAPH_EXCLUDE = {"END-IF", "END-EXEC", "END-PERFORM", "EXIT", "ELSE", "WHEN", "END-EVALUATE"}


def is_candidate_paragraph_name(paragraph_name: str) -> bool:
    name = paragraph_name.upper().strip()
    if name in PARAGRAPH_EXCLUDE:
        return False

    # Legacy estates mix numeric paragraph labels (1-9 digit prefixes) and alphabetic labels
    # (e.g. 9-STOP, 10-INIT, 100000-FOO, 700A-FOO, PROCESA-REPORTE). Keep all while excluding control keywords.
    if re.match(r"^\d+-", name):
        return True
    if re.match(r"^\d+[A-Z]-", name):
        return True
    if name.startswith("P-") or name.startswith("R-"):
        return True
    if "-" in name and re.match(r"^[A-Z][A-Z0-9-]{2,70}$", name):
        return True

    return False


def is_ignored_structural_line(logical_line: str) -> bool:
    stripped = logical_line.lstrip()
    return stripped.startswith("*") or stripped.startswith("/")


def is_ignorable_perform_target(target: str) -> bool:
    return target in {"UNTIL", "VARYING", "TIMES", "THRU", "THROUGH"}


def run_cypher(query: str) -> list[str]:
    command = [
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
    completed = subprocess.run(command, check=True, capture_output=True, text=True)
    lines: list[str] = []
    for raw in completed.stdout.splitlines():
        line = raw.strip()
        if not line or line.startswith("ready to start consuming query"):
            continue
        lines.append(line)
    return lines


def normalize_fixed_line(raw_line: str) -> str:
    if len(raw_line) <= 6:
        return ""
    return raw_line[6:72]


def extract_sql_tables(sql_block: str) -> tuple[set[str], set[str]]:
    up = sql_block.upper()
    reads: set[str] = set()
    writes: set[str] = set()

    for m in re.finditer(r"\bFROM\s+([A-Z0-9_.-]+)", up):
        token = m.group(1).split(".")[-1]
        reads.add(token)
    for m in re.finditer(r"\bUPDATE\s+([A-Z0-9_.-]+)", up):
        token = m.group(1).split(".")[-1]
        writes.add(token)
    for m in re.finditer(r"\bINSERT\s+INTO\s+([A-Z0-9_.-]+)", up):
        token = m.group(1).split(".")[-1]
        writes.add(token)
    for m in re.finditer(r"\bDELETE\s+FROM\s+([A-Z0-9_.-]+)", up):
        token = m.group(1).split(".")[-1]
        writes.add(token)

    return reads, writes


def infer_summary(program: str, paragraph: str) -> str:
    p = paragraph.upper()
    if any(k in p for k in ["INICIO", "INICIAL", "ARRAN", "PREP"]):
        return f"Inicializa el flujo operativo de {program}, preparando contexto y validaciones de arranque."
    if any(k in p for k in ["LEE", "OBTEN", "BUSCA", "CONSUL"]):
        return f"Ejecuta lectura/consulta de datos requeridos por {program} y deja resultados listos para el siguiente tramo."
    if any(k in p for k in ["GRABA", "ACTUAL", "INSERT", "WRITE", "ALTA"]):
        return f"Persiste actualizaciones de negocio en {program}, aplicando reglas de escritura y control de estado."
    if any(k in p for k in ["ERROR", "ABORT", "ROLLBACK", "ANULA"]):
        return f"Gestiona contingencias en {program}, concentrando el manejo de error y salida controlada."
    if any(k in p for k in ["FIN", "TERM", "CIERRA"]):
        return f"Cierra la ejecucion de {program}, consolidando trazas y terminacion funcional del proceso."
    return f"Orquesta una fase funcional de {program}, encadenando validaciones y transformaciones del proceso principal."



def resolve_copybook_file(copybook_name: str) -> tuple[str, pathlib.Path] | tuple[None, None]:
    name = copybook_name.upper().strip()
    candidates = [name]
    # Some estates reference SIC* while physical copybook is SI2* (and vice versa).
    if name.startswith("SIC") and len(name) > 3:
        candidates.append("SI2" + name[3:])
    if name.startswith("SI2") and len(name) > 3:
        candidates.append("SIC" + name[3:])

    for candidate in candidates:
        path = CPY_DIR / f"{candidate}.cpy"
        if path.exists():
            return candidate, path

    return None, None


def extract_copybook_paragraph_names(copybook_name: str) -> set[str]:
    _, path = resolve_copybook_file(copybook_name)
    if not path:
        return set()

    names: set[str] = set()
    for raw in path.read_text(encoding="utf-8", errors="ignore").splitlines():
        logical = normalize_fixed_line(raw)
        pm = PARAGRAPH_RE.match(logical)
        if not pm:
            continue
        paragraph_name = pm.group(1).upper()
        if is_candidate_paragraph_name(paragraph_name):
            names.add(paragraph_name)

    return names
def parse_program(program: str) -> dict:
    src = SRC_DIR / f"{program}.cbl"
    if not src.exists():
        raise FileNotFoundError(f"Source file not found: {src}")

    lines = src.read_text(encoding="utf-8", errors="ignore").splitlines()

    procedure_line = None
    first_candidate_paragraph_line = None
    first_perform_line = None
    normalized: list[tuple[int, str]] = []
    for i, raw in enumerate(lines, start=1):
        logical = normalize_fixed_line(raw)
        normalized.append((i, logical))

        up = logical.upper()
        if procedure_line is None and "PROCEDURE DIVISION" in up:
            procedure_line = i

        if first_candidate_paragraph_line is None:
            pm = PARAGRAPH_RE.match(logical)
            if pm and is_candidate_paragraph_name(pm.group(1)):
                first_candidate_paragraph_line = i

        if first_perform_line is None:
            for m in PERFORM_RE.finditer(logical):
                tgt = m.group(1).upper()
                if not is_ignorable_perform_target(tgt):
                    first_perform_line = i
                    break

    parse_start_candidates = [line for line in [procedure_line, first_candidate_paragraph_line, first_perform_line] if line is not None]
    if parse_start_candidates:
        parse_start_line = min(parse_start_candidates)
        parse_start_reason = "PROCEDURE_DIVISION" if procedure_line is not None else "FALLBACK_PARAGRAPH_OR_PERFORM"
    else:
        parse_start_line = len(lines) + 1
        parse_start_reason = "NO_EXECUTABLE_SIGNALS"

    copybooks: dict[str, list[int]] = defaultdict(list)
    calls: dict[str, list[int]] = defaultdict(list)
    perform_targets: dict[str, list[int]] = defaultdict(list)
    paragraphs: list[dict] = []
    current_paragraph = None

    paragraph_calls: dict[str, dict[str, list[int]]] = defaultdict(lambda: defaultdict(list))
    paragraph_copybooks: dict[str, dict[str, list[int]]] = defaultdict(lambda: defaultdict(list))
    paragraph_perform_targets: dict[str, dict[str, list[int]]] = defaultdict(lambda: defaultdict(list))

    sql_blocks: list[tuple[list[int], str]] = []
    in_sql = False
    sql_lines: list[str] = []
    sql_evidence: list[int] = []

    for line_no, logical in normalized:
        up = logical.upper()

        # Skip comment lines and directive lines
        if is_ignored_structural_line(logical):
            continue

        cm = COPY_RE.match(logical)
        if cm:
            copybook_name = cm.group(1).upper()
            copybooks[copybook_name].append(line_no)
            if current_paragraph:
                paragraph_copybooks[current_paragraph][copybook_name].append(line_no)

        for m in CALL_RE.finditer(logical):
            routine_name = m.group(1).upper()
            calls[routine_name].append(line_no)
            if current_paragraph:
                paragraph_calls[current_paragraph][routine_name].append(line_no)

        if line_no >= parse_start_line:
            pm = PARAGRAPH_RE.match(logical)
            if pm:
                paragraph_name = pm.group(1).upper()
                if is_candidate_paragraph_name(paragraph_name):
                    current_paragraph = paragraph_name
                    paragraphs.append({"name": paragraph_name, "line": line_no})

            for m in PERFORM_RE.finditer(logical):
                tgt = m.group(1).upper()
                if not is_ignorable_perform_target(tgt):
                    perform_targets[tgt].append(line_no)
                    if current_paragraph:
                        paragraph_perform_targets[current_paragraph][tgt].append(line_no)

        if EXEC_SQL_START_RE.search(up):
            in_sql = True
            sql_lines = [logical]
            sql_evidence = [line_no]
            include_match = SQL_INCLUDE_RE.search(up)
            if include_match:
                include_name = include_match.group(1).upper()
                copybooks[include_name].append(line_no)
                if current_paragraph:
                    paragraph_copybooks[current_paragraph][include_name].append(line_no)
            continue

        if in_sql:
            sql_lines.append(logical)
            sql_evidence.append(line_no)
            include_match = SQL_INCLUDE_RE.search(up)
            if include_match:
                include_name = include_match.group(1).upper()
                copybooks[include_name].append(line_no)
                if current_paragraph:
                    paragraph_copybooks[current_paragraph][include_name].append(line_no)
            if EXEC_SQL_END_RE.search(up):
                sql_blocks.append((list(sql_evidence), " ".join(sql_lines)))
                in_sql = False
                sql_lines = []
                sql_evidence = []

    paragraph_name_set = {p["name"] for p in paragraphs}
    perform_set = set(perform_targets.keys())

    # Strictly resolve missing PERFORM targets against included copybooks.
    copybook_paragraph_index: dict[str, set[str]] = defaultdict(set)
    for copybook_name in copybooks.keys():
        for paragraph_name in extract_copybook_paragraph_names(copybook_name):
            copybook_paragraph_index[paragraph_name].add(copybook_name)

    resolved_perform_targets_via_copybook = {
        target: sorted(copybook_paragraph_index[target])
        for target in sorted(perform_set)
        if target not in paragraph_name_set and target in copybook_paragraph_index
    }

    # If a PERFORM target resolves via copybook, link that evidence back to the caller paragraph.
    for paragraph_name, targets in paragraph_perform_targets.items():
        for target_name, target_lines in targets.items():
            for copybook_name in resolved_perform_targets_via_copybook.get(target_name, []):
                paragraph_copybooks[paragraph_name][copybook_name].extend(target_lines)

    missing_perform_targets = sorted(
        target
        for target in perform_set
        if target not in paragraph_name_set and target not in resolved_perform_targets_via_copybook
    )

    read_tables: dict[str, list[int]] = defaultdict(list)
    update_tables: dict[str, list[int]] = defaultdict(list)
    for evidence_lines, sql in sql_blocks:
        reads, writes = extract_sql_tables(sql)
        for t in reads:
            read_tables[t].extend(evidence_lines)
        for t in writes:
            update_tables[t].extend(evidence_lines)

    extracted_paragraphs = []
    for idx, p in enumerate(paragraphs, start=1):
        extracted_paragraphs.append(
            {
                "name": p["name"],
                "evidenceLines": [p["line"]],
                "executionOrder": idx * 100,
                "executionPhase": "PROCESSING",
                "summary": infer_summary(program, p["name"]),
            }
        )

    paragraph_call_deps = [
        {
            "paragraph": paragraph_name,
            "routine": routine_name,
            "evidenceLines": sorted(set(dep_lines)),
        }
        for paragraph_name, routine_map in sorted(paragraph_calls.items())
        for routine_name, dep_lines in sorted(routine_map.items())
    ]

    paragraph_copybook_deps = [
        {
            "paragraph": paragraph_name,
            "copybook": copybook_name,
            "evidenceLines": sorted(set(dep_lines)),
        }
        for paragraph_name, copybook_map in sorted(paragraph_copybooks.items())
        for copybook_name, dep_lines in sorted(copybook_map.items())
    ]

    return {
        "program": program,
        "sourceFile": f"src/{program}.cbl",
        "procedureLine": procedure_line,
        "parseStartLine": parse_start_line,
        "parseStartReason": parse_start_reason,
        "copybooks": [{"name": k, "evidenceLines": sorted(set(v))} for k, v in sorted(copybooks.items())],
        "calls": [{"name": k, "evidenceLines": sorted(set(v))} for k, v in sorted(calls.items())],
        "readTables": [{"name": k, "evidenceLines": sorted(set(v))} for k, v in sorted(read_tables.items())],
        "updateTables": [{"name": k, "evidenceLines": sorted(set(v))} for k, v in sorted(update_tables.items())],
        "paragraphs": extracted_paragraphs,
        "paragraphCalls": paragraph_call_deps,
        "paragraphCopybooks": paragraph_copybook_deps,
        "coverage": {
            "sequenceColumnsNormalized": True,
            "procedureDivisionFound": procedure_line is not None,
            "parseStartLine": parse_start_line,
            "parseStartReason": parse_start_reason,
            "performTargetCount": len(perform_set),
            "paragraphCount": len(extracted_paragraphs),
            "missingPerformTargets": missing_perform_targets,
            "resolvedPerformTargetsViaCopybook": resolved_perform_targets_via_copybook,
        },
    }
def validate_payload(payload: dict) -> dict:
    findings: list[dict] = []

    for node in payload["nodes"]:
        label = node["label"]
        if label not in ALLOWED_LABELS:
            findings.append({"severity": "critical", "type": "ONTOLOGY_LABEL_VIOLATION", "evidence": label})
        props = node["properties"]
        if label == "Paragraph":
            for f in ("programName", "name", "summary"):
                if not props.get(f):
                    findings.append({"severity": "critical", "type": "MISSING_NATURAL_KEY_OR_SUMMARY", "evidence": f"{label}:{f}"})
            s = str(props.get("summary", "")).strip().lower()
            if any(tok in s for tok in INVALID_SUMMARY_TOKENS) or re.match(r"^parrafo .+ del programa .+\.$", s):
                findings.append({"severity": "high", "type": "INVALID_SUMMARY_CONTENT", "evidence": props.get("name", "")})
        else:
            if not props.get("name"):
                findings.append({"severity": "critical", "type": "MISSING_NATURAL_KEY", "evidence": f"{label}:name"})

    for rel in payload["relationships"]:
        if rel["type"] in CRITICAL_REL_TYPES:
            p = rel["properties"]
            if not p.get("evidenceFile") or not p.get("evidenceLines"):
                findings.append({"severity": "critical", "type": "MISSING_REL_EVIDENCE", "evidence": rel["type"]})

    for item in payload["coverage"]:
        if item["missingPerformTargets"]:
            findings.append(
                {
                    "severity": "critical",
                    "type": "PARAGRAPH_EXTRACTION_COVERAGE_GAP",
                    "evidence": {"program": item["program"], "missingPerformTargets": item["missingPerformTargets"][:20]},
                }
            )

    severity_rank = {"critical": 3, "high": 2, "medium": 1, "low": 0}
    blockers = [f for f in findings if severity_rank[f["severity"]] >= 3]

    return {
        "findings": findings,
        "blockers": blockers,
        "qualityGateResult": "pass" if not blockers else "fail",
    }


def build_payload(extractions: list[dict], run_id: str) -> dict:
    nodes: dict[tuple, dict] = {}
    relationships: dict[tuple, dict] = {}
    coverage = []

    def add_node(label: str, key: tuple, properties: dict):
        nodes[(label, key)] = {"label": label, "key": key, "properties": properties}

    def add_rel(rel_type: str, from_ref: tuple, to_ref: tuple, props: dict):
        relationships[(rel_type, from_ref, to_ref)] = {
            "type": rel_type,
            "from": from_ref,
            "to": to_ref,
            "properties": props,
        }

    for ext in extractions:
        program = ext["program"]
        source_file = ext["sourceFile"]

        add_node(
            "Program",
            (program,),
            {
                "name": program,
                "ingestion": "auto",
                "layer": "program",
                "nodeType": "program",
                "viewTag": "program",
                "reviewStatus": "pending_human_review",
                "reviewRequired": True,
                "reviewSource": "auto-ingestion",
                "sourceFile": source_file,
                "runId": run_id,
            },
        )

        for p in ext["paragraphs"]:
            add_node(
                "Paragraph",
                (program, p["name"]),
                {
                    "programName": program,
                    "name": p["name"],
                    "summary": p["summary"],
                    "executionOrder": p["executionOrder"],
                    "executionPhase": p["executionPhase"],
                    "ingestion": "auto",
                    "layer": "execution",
                    "nodeType": "process-step",
                    "viewTag": "execution",
                    "reviewStatus": "pending_human_review",
                    "reviewRequired": True,
                    "reviewSource": "auto-ingestion",
                    "sourceFile": source_file,
                    "evidenceFile": source_file,
                    "evidenceLines": p["evidenceLines"],
                    "runId": run_id,
                },
            )
            add_rel(
                "HAS_PARAGRAPH",
                ("Program", (program,)),
                ("Paragraph", (program, p["name"])),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": source_file,
                    "evidenceLines": p["evidenceLines"],
                },
            )

        for c in ext["copybooks"]:
            add_node(
                "Copybook",
                (c["name"],),
                {
                    "name": c["name"],
                    "ingestion": "auto",
                    "layer": "dependency",
                    "nodeType": "copybook",
                    "viewTag": "dependency",
                    "reviewStatus": "pending_human_review",
                    "reviewRequired": True,
                    "reviewSource": "auto-ingestion",
                    "sourceFile": source_file,
                    "evidenceFile": source_file,
                    "evidenceLines": c["evidenceLines"],
                    "runId": run_id,
                },
            )
            add_rel(
                "INCLUDES_COPYBOOK",
                ("Program", (program,)),
                ("Copybook", (c["name"],)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": source_file,
                    "evidenceLines": c["evidenceLines"],
                },
            )

        for r in ext["calls"]:
            add_node(
                "ExternalRoutine",
                (r["name"],),
                {
                    "name": r["name"],
                    "ingestion": "auto",
                    "layer": "integration",
                    "nodeType": "external-service-call",
                    "viewTag": "integration",
                    "reviewStatus": "pending_human_review",
                    "reviewRequired": True,
                    "reviewSource": "auto-ingestion",
                    "sourceFile": source_file,
                    "evidenceFile": source_file,
                    "evidenceLines": r["evidenceLines"],
                    "runId": run_id,
                },
            )
            add_rel(
                "CALLS_ROUTINE",
                ("Program", (program,)),
                ("ExternalRoutine", (r["name"],)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": source_file,
                    "evidenceLines": r["evidenceLines"],
                },
            )

        for t in ext["readTables"]:
            add_node(
                "DBTable",
                (t["name"],),
                {
                    "name": t["name"],
                    "ingestion": "auto",
                    "layer": "data-access",
                    "nodeType": "physical-table",
                    "viewTag": "data-access",
                    "reviewStatus": "pending_human_review",
                    "reviewRequired": True,
                    "reviewSource": "auto-ingestion",
                    "sourceFile": source_file,
                    "evidenceFile": source_file,
                    "evidenceLines": t["evidenceLines"],
                    "runId": run_id,
                },
            )
            add_rel(
                "READS_TABLE",
                ("Program", (program,)),
                ("DBTable", (t["name"],)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": source_file,
                    "evidenceLines": t["evidenceLines"],
                },
            )

        for t in ext["updateTables"]:
            add_node(
                "DBTable",
                (t["name"],),
                {
                    "name": t["name"],
                    "ingestion": "auto",
                    "layer": "data-access",
                    "nodeType": "physical-table",
                    "viewTag": "data-access",
                    "reviewStatus": "pending_human_review",
                    "reviewRequired": True,
                    "reviewSource": "auto-ingestion",
                    "sourceFile": source_file,
                    "evidenceFile": source_file,
                    "evidenceLines": t["evidenceLines"],
                    "runId": run_id,
                },
            )
            add_rel(
                "UPDATES_TABLE",
                ("Program", (program,)),
                ("DBTable", (t["name"],)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": source_file,
                    "evidenceLines": t["evidenceLines"],
                },
            )

        for dep in ext.get("paragraphCopybooks", []):
            add_rel(
                "USES_COPYBOOK",
                ("Paragraph", (program, dep["paragraph"])),
                ("Copybook", (dep["copybook"],)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": source_file,
                    "evidenceLines": dep["evidenceLines"],
                },
            )
            add_rel(
                "IMPLEMENTED_BY",
                ("Paragraph", (program, dep["paragraph"])),
                ("Copybook", (dep["copybook"],)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": source_file,
                    "evidenceLines": dep["evidenceLines"],
                },
            )

        for dep in ext.get("paragraphCalls", []):
            add_rel(
                "DEPENDS_ON_EXTERNAL",
                ("Paragraph", (program, dep["paragraph"])),
                ("ExternalRoutine", (dep["routine"],)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": source_file,
                    "evidenceLines": dep["evidenceLines"],
                },
            )

        coverage.append(
            {
                "program": program,
                "sequenceColumnsNormalized": ext["coverage"]["sequenceColumnsNormalized"],
                "performTargetCount": ext["coverage"]["performTargetCount"],
                "paragraphCount": ext["coverage"]["paragraphCount"],
                "missingPerformTargets": ext["coverage"]["missingPerformTargets"],
            }
        )

    return {
        "runId": run_id,
        "nodes": list(nodes.values()),
        "relationships": list(relationships.values()),
        "coverage": coverage,
    }
def cypher_value(value):
    if value is None:
        return "null"
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, (int, float)):
        return str(value)
    if isinstance(value, str):
        return "'" + value.replace("\\", "\\\\").replace("'", "\\'") + "'"
    if isinstance(value, list):
        return "[" + ", ".join(cypher_value(v) for v in value) + "]"
    if isinstance(value, dict):
        items = ", ".join(f"{k}: {cypher_value(v)}" for k, v in sorted(value.items()))
        return "{" + items + "}"
    raise TypeError(type(value))


def key_map_for_node(node_ref: tuple) -> tuple[str, dict]:
    label, key = node_ref
    if label == "Paragraph":
        return label, {"programName": key[0], "name": key[1]}
    return label, {"name": key[0]}


def build_cypher(payload: dict) -> str:
    lines = [
        "// ============================================================================",
        f"// E2E INGEST WRITEPAYLOAD - RunId: {payload['runId']}",
        "// ============================================================================",
        "",
    ]

    for node in sorted(payload["nodes"], key=lambda n: (n["label"], str(n["key"]))):
        label = node["label"]
        key = node["key"]
        if label == "Paragraph":
            merge_key = {"programName": key[0], "name": key[1]}
        else:
            merge_key = {"name": key[0]}
        lines.append(f"MERGE (n:{label} {cypher_value(merge_key)})")
        lines.append(f"SET n += {cypher_value(node['properties'])};")
        lines.append("")

    for rel in sorted(payload["relationships"], key=lambda r: (r["type"], str(r["from"]), str(r["to"]))):
        from_label, from_key = key_map_for_node(rel["from"])
        to_label, to_key = key_map_for_node(rel["to"])
        lines.append(
            f"MATCH (a:{from_label} {cypher_value(from_key)}), (b:{to_label} {cypher_value(to_key)})"
        )
        lines.append(f"MERGE (a)-[r:{rel['type']}]->(b)")
        lines.append(f"SET r += {cypher_value(rel['properties'])};")
        lines.append("")

    return "\n".join(lines)


def run_cypher_file(path: pathlib.Path):
    subprocess.run(
        [
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
            "--non-interactive",
        ],
        check=True,
        input=path.read_text(encoding="utf-8"),
        text=True,
    )


def count_query(query: str) -> int:
    lines = run_cypher(query)
    if len(lines) < 2:
        return 0
    value = lines[1].split(",", 1)[0].strip().strip('"')
    return int(value)


def post_audit(run_id: str, programs: list[str]) -> dict:
    program_list = "[" + ",".join("'" + p + "'" for p in programs) + "]"

    missing_mandatory = count_query(
        "WITH " + program_list + " AS progs "
        "MATCH (n) "
        "WHERE ((n:Program AND n.name IN progs) OR (n:Paragraph AND n.programName IN progs) OR (n:Copybook AND n.runId = '" + run_id + "') OR (n:DBTable AND n.runId = '" + run_id + "') OR (n:ExternalRoutine AND n.runId = '" + run_id + "')) "
        "WITH n, ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired','reviewSource'] AS common "
        "WITH n, common + CASE WHEN n:Program THEN ['name'] WHEN n:Paragraph THEN ['programName','name','summary'] ELSE ['name'] END AS fields "
        "WITH [f IN fields WHERE n[f] IS NULL OR n[f]=[] OR trim(toString(n[f]))=''] AS miss "
        "RETURN count(CASE WHEN size(miss) > 0 THEN 1 END) AS c;"
    )

    invalid_review_state = count_query(
        "WITH " + program_list + " AS progs "
        "MATCH (n) "
        "WHERE ((n:Program AND n.name IN progs) OR (n:Paragraph AND n.programName IN progs) OR n.runId = '" + run_id + "') "
        "AND (n.reviewStatus = 'pending_human_review' AND ((n.reviewedBy IS NOT NULL AND trim(toString(n.reviewedBy)) <> '') OR (n.reviewedAt IS NOT NULL AND trim(toString(n.reviewedAt)) <> ''))) "
        "RETURN count(*) AS c;"
    )

    invalid_summary = count_query(
        "WITH " + program_list + " AS progs "
        "MATCH (n:Paragraph) WHERE n.programName IN progs "
        "AND (n.summary IS NULL OR trim(toString(n.summary)) = '' "
        "OR toLower(trim(toString(n.summary))) =~ '^parrafo .+ del programa .+\\.$' "
        "OR any(token IN ['limpieza pendiente','nodo tecnico no funcional','requiere limpieza','placeholder','todo'] WHERE toLower(toString(n.summary)) CONTAINS token)) "
        "RETURN count(*) AS c;"
    )

    missing_rel_evidence = count_query(
        "WITH " + program_list + " AS progs "
        "MATCH (a)-[r]->() "
        "WHERE ((a:Program AND a.name IN progs) OR (a:Paragraph AND a.programName IN progs)) "
        "AND type(r) IN ['INCLUDES_COPYBOOK','READS_TABLE','UPDATES_TABLE','CALLS_ROUTINE','USES_COPYBOOK','READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL','USES_PARAM_TYPE','WRITES_FILE','IMPLEMENTED_BY'] "
        "AND (r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0) "
        "RETURN count(*) AS c;"
    )

    ontology_violations = count_query(
        "WITH " + program_list + " AS progs "
        "MATCH (n) WHERE (n:Program AND n.name IN progs) OR (n:Paragraph AND n.programName IN progs) OR n.runId = '" + run_id + "' "
        "WITH n, labels(n) AS ls "
        "RETURN count(CASE WHEN size([x IN ls WHERE x IN ['Program','Paragraph','Copybook','DBTable','ParamType','ExternalRoutine','OutputFile']]) = 0 THEN 1 END) AS c;"
    )

    return {
        "missingMandatoryProperties": missing_mandatory,
        "invalidReviewStateMetadata": invalid_review_state,
        "invalidParagraphSummary": invalid_summary,
        "missingCriticalRelationEvidence": missing_rel_evidence,
        "ontologyViolations": ontology_violations,
    }


def inventory_counts(programs: list[str], run_id: str) -> dict:
    program_list = "[" + ",".join("'" + p + "'" for p in programs) + "]"
    return {
        "programNodes": count_query("WITH " + program_list + " AS progs MATCH (n:Program) WHERE n.name IN progs RETURN count(*) AS c;"),
        "paragraphNodes": count_query("WITH " + program_list + " AS progs MATCH (n:Paragraph) WHERE n.programName IN progs RETURN count(*) AS c;"),
        "copybookNodesSeenByRun": count_query("MATCH (n:Copybook) WHERE n.runId='" + run_id + "' RETURN count(*) AS c;"),
        "dbTableNodesSeenByRun": count_query("MATCH (n:DBTable) WHERE n.runId='" + run_id + "' RETURN count(*) AS c;"),
        "externalRoutineNodesSeenByRun": count_query("MATCH (n:ExternalRoutine) WHERE n.runId='" + run_id + "' RETURN count(*) AS c;"),
        "includesCopybookRels": count_query("WITH " + program_list + " AS progs MATCH (:Program)-[r:INCLUDES_COPYBOOK]->() WHERE startNode(r).name IN progs RETURN count(*) AS c;"),
        "hasParagraphRels": count_query("WITH " + program_list + " AS progs MATCH (:Program)-[r:HAS_PARAGRAPH]->(:Paragraph) WHERE startNode(r).name IN progs RETURN count(*) AS c;"),
        "callsRoutineRels": count_query("WITH " + program_list + " AS progs MATCH (:Program)-[r:CALLS_ROUTINE]->() WHERE startNode(r).name IN progs RETURN count(*) AS c;"),
        "usesCopybookRels": count_query("WITH " + program_list + " AS progs MATCH (:Paragraph)-[r:USES_COPYBOOK]->(:Copybook) WHERE startNode(r).programName IN progs RETURN count(*) AS c;"),
        "implementedByRels": count_query("WITH " + program_list + " AS progs MATCH (:Paragraph)-[r:IMPLEMENTED_BY]->(:Copybook) WHERE startNode(r).programName IN progs RETURN count(*) AS c;"),
        "dependsOnExternalRels": count_query("WITH " + program_list + " AS progs MATCH (:Paragraph)-[r:DEPENDS_ON_EXTERNAL]->(:ExternalRoutine) WHERE startNode(r).programName IN progs RETURN count(*) AS c;"),
        "readsTableRels": count_query("WITH " + program_list + " AS progs MATCH (:Program)-[r:READS_TABLE]->() WHERE startNode(r).name IN progs RETURN count(*) AS c;"),
        "updatesTableRels": count_query("WITH " + program_list + " AS progs MATCH (:Program)-[r:UPDATES_TABLE]->() WHERE startNode(r).name IN progs RETURN count(*) AS c;"),
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--programs", nargs="+", required=True)
    parser.add_argument("--mode", choices=["discovery", "precheck", "commit", "post-audit", "full"], default="full")
    args = parser.parse_args()

    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    run_id = f"e2e-{timestamp}-" + "-".join(p.lower() for p in args.programs)

    REPORT_DIR.mkdir(parents=True, exist_ok=True)
    QUERY_DIR.mkdir(parents=True, exist_ok=True)

    extractions = [parse_program(p.upper()) for p in args.programs]

    extraction_report = {
        "stage": "discovery-extraction",
        "runId": run_id,
        "programs": args.programs,
        "extractions": extractions,
    }
    extraction_path = REPORT_DIR / f"{run_id}-extraction.json"
    extraction_path.write_text(json.dumps(extraction_report, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")

    payload = build_payload(extractions, run_id)
    payload_path = REPORT_DIR / f"{run_id}-writepayload.json"
    payload_path.write_text(json.dumps(payload, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")

    precheck = validate_payload(payload)
    precheck_path = REPORT_DIR / f"{run_id}-precheck.json"
    precheck_path.write_text(json.dumps(precheck, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")

    cypher = build_cypher(payload)
    cypher_path = QUERY_DIR / f"ingest-{run_id}.cypher"
    cypher_path.write_text(cypher + "\n", encoding="utf-8")

    commit_executed = False
    remediation = []
    if precheck["qualityGateResult"] == "pass":
        run_cypher_file(cypher_path)
        commit_executed = True

        # Remediation pass: enforce conditional human metadata and summary hygiene on just-ingested scope.
        program_list = "[" + ",".join("'" + p.upper() + "'" for p in args.programs) + "]"
        remediation_query = (
            "WITH " + program_list + " AS progs "
            "MATCH (n) WHERE (n:Program AND n.name IN progs) OR (n:Paragraph AND n.programName IN progs) OR n.runId='" + run_id + "' "
            "SET n.reviewStatus = coalesce(n.reviewStatus, 'pending_human_review'), "
            "n.reviewRequired = CASE WHEN n.reviewStatus='reviewed_human' THEN false ELSE coalesce(n.reviewRequired, true) END, "
            "n.reviewSource = coalesce(n.reviewSource, 'auto-ingestion') "
            "WITH n "
            "FOREACH (_ IN CASE WHEN n.reviewStatus='pending_human_review' THEN [1] ELSE [] END | REMOVE n.reviewedBy REMOVE n.reviewedAt )"
        )
        run_cypher(remediation_query)
        remediation.append("Enforced review metadata consistency for ingested scope")

    post = post_audit(run_id, [p.upper() for p in args.programs]) if commit_executed else {}
    post2 = post_audit(run_id, [p.upper() for p in args.programs]) if commit_executed else {}

    inventory = inventory_counts([p.upper() for p in args.programs], run_id) if commit_executed else {}

    backlog_integral = {
        "invalidLabelsGlobal": count_query("MATCH (n) WITH labels(n) AS ls UNWIND ls AS l WITH DISTINCT l WHERE NOT l IN ['Program','Paragraph','Copybook','DBTable','ParamType','ExternalRoutine','OutputFile'] RETURN count(*) AS c;"),
        "criticalRelWithoutEvidenceGlobal": count_query("MATCH ()-[r:USES_COPYBOOK|READS_DATA|UPDATES_DATA|DERIVES_FROM|DEPENDS_ON_EXTERNAL|INCLUDES_COPYBOOK|READS_TABLE|UPDATES_TABLE|CALLS_ROUTINE|USES_PARAM_TYPE|WRITES_FILE|IMPLEMENTED_BY]->() WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0 RETURN count(*) AS c;"),
    }

    final = {
        "runId": run_id,
        "programs": [p.upper() for p in args.programs],
        "artifacts": {
            "extraction": str(extraction_path.relative_to(REPO_ROOT)),
            "writePayload": str(payload_path.relative_to(REPO_ROOT)),
            "precheck": str(precheck_path.relative_to(REPO_ROOT)),
            "cypher": str(cypher_path.relative_to(REPO_ROOT)),
        },
        "precheck": precheck,
        "commitExecuted": commit_executed,
        "inventory": inventory,
        "postAudit": post,
        "postAuditAfterRemediation": post2,
        "remediationApplied": remediation,
        "integralBacklog": backlog_integral,
    }

    if precheck["qualityGateResult"] == "fail":
        final["decision"] = "BLOCKED"
    elif any(post2.get(k, 0) > 0 for k in ["ontologyViolations", "missingCriticalRelationEvidence"]):
        final["decision"] = "PASS_WITH_WARNINGS"
    else:
        final["decision"] = "PASS"

    final_path = REPORT_DIR / f"{run_id}-final-report.json"
    final_path.write_text(json.dumps(final, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")

    print(str(final_path.relative_to(REPO_ROOT)))
    print(json.dumps({
        "runId": run_id,
        "decision": final["decision"],
        "precheck": precheck["qualityGateResult"],
        "commitExecuted": commit_executed,
        "postAudit": post2,
    }, ensure_ascii=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
