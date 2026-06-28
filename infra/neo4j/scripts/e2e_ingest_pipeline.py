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
DCL_DIR = REPO_ROOT / "dcl"
REPORT_DIR = REPO_ROOT / "infra" / "neo4j" / "reports"
QUERY_DIR = REPO_ROOT / "infra" / "neo4j" / "queries"
APPROVED_PATTERN_RULES_PATH = REPO_ROOT / "infra" / "neo4j" / "approved-perform-target-patterns.json"

NEO4J_CONTAINER = os.environ.get("NEO4J_CONTAINER", "neo4j-local")
NEO4J_PASSWORD = os.environ.get("NEO4J_PASSWORD", "CambiaEstaClave123!")
NEO4J_DATABASE = os.environ.get("NEO4J_DATABASE", "neo4j")

ALLOWED_LABELS = {
    "Program",
    "Functionality",
    "SubFunctionality",
    "Paragraph",
    "Copybook",
    "ArtifactChange",
    "DB2System",
    "DB2Schema",
    "DclgenLibrary",
    "DBTable",
    "DclgenArtifact",
    "TableColumn",
    "CobolHostField",
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
    "WRITES_FILE",
    "IMPLEMENTED_BY",
    "IMPLEMENTS_FUNCTIONALITY",
    "HAS_SUBFUNCTIONALITY",
    "REALIZED_BY",
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
PARAGRAPH_RE = re.compile(r"^\s*([0-9A-Z][0-9A-Z-]{1,70})(?:\s+SECTION)?\s*\.\s*$", re.IGNORECASE)
PARAGRAPH_RE_NO_DOT = re.compile(r"^\s*([0-9A-Z][0-9A-Z-]{1,70})(?:\s+SECTION)?\s*$", re.IGNORECASE)
DOT_ONLY_RE = re.compile(r"^\s*\.\s*$")
COPY_RE = re.compile(r"^\s*COPY\s+([A-Z0-9-]+)\b", re.IGNORECASE)
CALL_RE = re.compile(r"\bCALL\s+'([A-Z0-9-]+)'", re.IGNORECASE)
PERFORM_RE = re.compile(r"\bPERFORM\s+([A-Z0-9-]+)\b", re.IGNORECASE)
DATA_ITEM_DEF_RE = re.compile(r"^\s*\d{1,2}\s+([A-Z][A-Z0-9-]{1,70})\b", re.IGNORECASE)
EXEC_SQL_START_RE = re.compile(r"\bEXEC\s+SQL\b", re.IGNORECASE)
EXEC_SQL_END_RE = re.compile(r"\bEND-EXEC\b", re.IGNORECASE)
SQL_INCLUDE_RE = re.compile(r"\bINCLUDE\s+([A-Z0-9-]+)\b", re.IGNORECASE)
DCL_DECLARE_RE = re.compile(r"^\s*EXEC\s+SQL\s+DECLARE\s+([A-Z0-9_.-]+)\s+TABLE\b", re.IGNORECASE)
DCL_HOST_STRUCTURE_RE = re.compile(r"^\s*01\s+(DCL[A-Z0-9-]+)\.\s*$", re.IGNORECASE)
DCLGEN_TABLE_COMMENT_RE = re.compile(r"^\s*\*\s*DCLGEN\s+TABLE\(([^)]+)\)", re.IGNORECASE)
DCL_HOST_FIELD_RE = re.compile(r"^\s*10\s+([A-Z][A-Z0-9_-]*)\s+PIC\s+(.+?)\.\s*$", re.IGNORECASE)
DCL_HOST_GROUP_RE = re.compile(r"^\s*10\s+([A-Z][A-Z0-9_-]*)\s*\.\s*$", re.IGNORECASE)
PARAGRAPH_EXCLUDE = {"END-IF", "END-EXEC", "END-PERFORM", "EXIT", "ELSE", "WHEN", "END-EVALUATE"}
MAX_COPYBOOK_RECURSION_DEPTH = 12

_APPROVED_PARAGRAPH_PATTERNS: list[re.Pattern[str]] | None = None
_COPYBOOK_TRANSITIVE_PARAGRAPH_CACHE: dict[str, set[str]] = {}
_DCL_METADATA_CACHE: dict[str, dict | None] = {}


def load_approved_paragraph_patterns() -> list[re.Pattern[str]]:
    global _APPROVED_PARAGRAPH_PATTERNS
    if _APPROVED_PARAGRAPH_PATTERNS is not None:
        return _APPROVED_PARAGRAPH_PATTERNS

    if not APPROVED_PATTERN_RULES_PATH.exists():
        _APPROVED_PARAGRAPH_PATTERNS = []
        return _APPROVED_PARAGRAPH_PATTERNS

    try:
        payload = json.loads(APPROVED_PATTERN_RULES_PATH.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        raise ValueError(f"Invalid JSON in {APPROVED_PATTERN_RULES_PATH}: {exc}") from exc

    raw_patterns = payload.get("approvedParagraphNameRegex", [])
    if not isinstance(raw_patterns, list):
        raise ValueError(
            f"Field approvedParagraphNameRegex must be a list in {APPROVED_PATTERN_RULES_PATH}"
        )

    compiled: list[re.Pattern[str]] = []
    for idx, raw in enumerate(raw_patterns):
        if not isinstance(raw, str):
            raise ValueError(
                f"Pattern at index {idx} must be a string in {APPROVED_PATTERN_RULES_PATH}"
            )
        if not raw.startswith("^") or not raw.endswith("$"):
            raise ValueError(
                f"Pattern at index {idx} must be fully anchored (^...$): {raw}"
            )
        try:
            compiled.append(re.compile(raw, re.IGNORECASE))
        except re.error as exc:
            raise ValueError(f"Invalid regex at index {idx}: {raw}: {exc}") from exc

    _APPROVED_PARAGRAPH_PATTERNS = compiled
    return _APPROVED_PARAGRAPH_PATTERNS


def is_candidate_paragraph_name(paragraph_name: str) -> bool:
    name = paragraph_name.upper().strip()
    if name in PARAGRAPH_EXCLUDE:
        return False

    # Legacy estates mix numeric paragraph labels and mixed alphanumeric prefixes.
    # Examples: 9-STOP, 10-INIT, 183D1-VALIDA, 050MIS-MUEVE, 2B1A-UPDATE, 700A-FOO.
    if re.match(r"^\d+-", name):
        return True
    if re.match(r"^\d+[A-Z]-", name):
        return True
    if re.match(r"^\d+[A-Z0-9]+-", name):
        return True

    if name.startswith("P-") or name.startswith("R-"):
        return True

    # Accept pure alphabetic legacy labels (e.g. INICIO, ENCABEZADO) and hyphenated labels.
    if re.match(r"^[A-Z][A-Z0-9]{2,70}$", name):
        return True
    if "-" in name and re.match(r"^[A-Z][A-Z0-9-]{2,70}$", name):
        return True

    # Allow controlled extensions approved during pattern-learning review.
    for pattern in load_approved_paragraph_patterns():
        if pattern.match(name):
            return True

    return False


def is_ignored_structural_line(logical_line: str) -> bool:
    stripped = logical_line.lstrip()
    return stripped.startswith("*") or stripped.startswith("/")


def is_ignorable_perform_target(target: str) -> bool:
    return target in {"UNTIL", "VARYING", "TIMES", "THRU", "THROUGH"}


def is_ignorable_perform_pair(logical_line: str, target: str, data_item_names: set[str] | None = None) -> bool:
    # Ignore loop-count PERFORM forms such as "PERFORM 7 TIMES".
    if re.match(r"^\d+$", target):
        pattern = rf"\bPERFORM\s+{re.escape(target)}\s+TIMES\b"
        if re.search(pattern, logical_line, re.IGNORECASE):
            return True

    # Ignore loop-count PERFORM forms such as "PERFORM TTV7-MAX TIMES"
    # when the identifier is a declared data item.
    if data_item_names and target in data_item_names:
        pattern = rf"\bPERFORM\s+{re.escape(target)}\s+TIMES\b"
        if re.search(pattern, logical_line, re.IGNORECASE):
            return True

    return False


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


def strip_quoted_literals(logical_line: str) -> str:
    def _blank(match: re.Match[str]) -> str:
        return " " * len(match.group(0))

    return re.sub(r"'[^']*'", _blank, logical_line)


def extract_paragraph_name_from_normalized(
    normalized_lines: list[tuple[int, str]],
    idx: int,
) -> str | None:
    logical = normalized_lines[idx][1]

    pm = PARAGRAPH_RE.match(logical)
    if pm:
        return pm.group(1).upper()

    pm_no_dot = PARAGRAPH_RE_NO_DOT.match(logical)
    if not pm_no_dot:
        return None

    if idx + 1 >= len(normalized_lines):
        return None

    next_logical = normalized_lines[idx + 1][1]
    if DOT_ONLY_RE.match(next_logical):
        return pm_no_dot.group(1).upper()

    return None


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


def parse_dcl_artifact(member_name: str) -> dict | None:
    normalized_name = member_name.upper().strip()
    if normalized_name in _DCL_METADATA_CACHE:
        return _DCL_METADATA_CACHE[normalized_name]

    dcl_path = DCL_DIR / f"{normalized_name}.dcl"
    if not dcl_path.exists():
        _DCL_METADATA_CACHE[normalized_name] = None
        return None

    def extract_parenthesized_value(text: str, marker: str) -> str | None:
        start = text.upper().find(marker.upper())
        if start < 0:
            return None
        value_start = start + len(marker)
        depth = 1
        value_chars: list[str] = []
        for char in text[value_start:]:
            if char == '(':
                depth += 1
                value_chars.append(char)
                continue
            if char == ')':
                depth -= 1
                if depth == 0:
                    return ''.join(value_chars).strip()
                value_chars.append(char)
                continue
            value_chars.append(char)
        return None

    def normalize_identifier(name: str) -> str:
        # DCL DB2 columns often use '_' while COBOL host fields use '-'.
        return name.upper().replace("-", "_").strip()

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
    column_names: list[str] = []
    column_definitions: list[str] = []
    in_declare_block = False

    for raw_line in dcl_path.read_text(encoding="utf-8", errors="ignore").splitlines():
        line = raw_line.rstrip()
        upper_line = line.upper()

        table_comment_match = DCLGEN_TABLE_COMMENT_RE.match(line)
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
                library_member = normalized_name

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

        column_name = column_match.group(1).upper()
        column_definition = re.sub(r"\s+", " ", column_match.group(2).strip()).upper()
        is_nullable = "NOT NULL" not in column_definition
        column_names.append(column_name)
        column_definitions.append(f"{column_name} {column_definition}")
        db2_columns.append(
            {
                "columnName": column_name,
                "sqlDefinition": column_definition,
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

    if qualified_name:
        table_name = qualified_name.split(".")[-1]
        schema_name = qualified_name.rsplit(".", 1)[0] if "." in qualified_name else None

    host_field_map = {normalize_identifier(field["fieldName"]): field for field in host_fields}
    for column in db2_columns:
        host_field = host_field_map.get(normalize_identifier(column["columnName"]))
        if host_field:
            column["hostFieldName"] = host_field["fieldName"]
            column["hostPicClause"] = host_field["picClause"]

    if not table_name or not qualified_name:
        _DCL_METADATA_CACHE[normalized_name] = None
        return None

    metadata = {
        "memberName": normalized_name,
        "tableName": table_name,
        "qualifiedName": qualified_name,
        "schemaName": schema_name,
        "librarySpec": library_spec,
        "libraryDataset": library_dataset,
        "libraryMember": library_member,
        "hostStructureName": host_structure_name,
        "declaredColumnCount": len(column_names),
        "declaredColumns": column_names,
        "declaredColumnDefinitions": column_definitions,
        "db2Columns": db2_columns,
        "cobolHostFields": host_fields,
        "dclPath": f"dcl/{normalized_name}.dcl",
    }
    _DCL_METADATA_CACHE[normalized_name] = metadata
    return metadata


def extract_program_metadata(program: str, normalized_lines: list[tuple[int, str]]) -> dict:
    """Extract metadata: objective, description, system from COBOL IDENTIFICATION division."""
    objective: str | None = None
    description: str | None = None
    system: str | None = None
    author: str | None = None

    # Parse IDENTIFICATION DIVISION
    in_identification = False
    objective_lines: list[str] = []
    installation_lines: list[str] = []
    author_lines: list[str] = []

    for line_no, logical in normalized_lines:
        up = logical.upper()

        # Detect IDENTIFICATION DIVISION
        if "IDENTIFICATION DIVISION" in up:
            in_identification = True
            continue

        # Exit IDENTIFICATION when we hit another DIVISION
        if in_identification and any(div in up for div in ["ENVIRONMENT DIVISION", "DATA DIVISION", "PROCEDURE DIVISION"]):
            in_identification = False
            continue

        if not in_identification:
            continue

        # Collect lines under OBJECTIVE / OBJETIVO
        if "OBJECTIVE" in up or "OBJETIVO" in up:
            # Extract everything after "OBJETIVO :" or "OBJECTIVE :"
            for match in re.finditer(r"(?:OBJECTIVE|OBJETIVO)\s*:\s*(.*)", logical, re.IGNORECASE):
                text = match.group(1).strip().rstrip("*").strip()
                if text:
                    objective_lines.append(text)
            continue

        if objective_lines and logical.startswith("*"):
            if any(k in logical.upper() for k in ["INSTALLATION", "AUTHOR", "DATE-WRITTEN"]):
                objective_lines.append(logical.replace("*", " ").strip())
            else:
                # Continuation of objective
                text = logical[1:].strip().rstrip("*").strip()
                if text and text != "-" and not text.startswith("-"):
                    objective_lines.append(text)

        # Detect INSTALLATION (system) - it's a keyword line followed by content
        if re.search(r"^\s*INSTALLATION\s*\.\s*$", logical, re.IGNORECASE):
            installation_lines = []  # Reset when we find the keyword
            continue

        # After finding INSTALLATION, capture following lines until next keyword
        if re.search(r"^\s*[A-Z-]+\s*\.\s*$", logical, re.IGNORECASE) and not re.search(r"INSTALLATION", logical, re.IGNORECASE):
            if installation_lines:
                # We hit the next keyword, stop collecting INSTALLATION
                pass
        elif installation_lines is not None and (logical.strip() and not logical.startswith("*")):
            text = logical.strip()
            if text and any(k in text.upper() for k in ["AUTHOR", "DATE-WRITTEN"]):
                pass  # Don't capture next keywords
            elif text:
                installation_lines.append(text)

    # Build metadata - clean up captured text
    objective_raw = " ".join(objective_lines).strip() if objective_lines else None
    objective = None
    if objective_raw:
        # Clean up multiple spaces and comment artifacts
        objective = re.sub(r'\s+', ' ', objective_raw)
        objective = objective.replace("* ", "").replace("*", "").strip()
        # Remove trailing dates that might have been captured
        objective = re.sub(r'\s+\d+/[A-Z]{3}/\d{4}.*$', '', objective, flags=re.IGNORECASE)

    installation_text = " ".join(installation_lines).strip() if installation_lines else None
    system = None
    if installation_text:
        # Clean up the installation line (remove dates, extra spaces)
        system = re.sub(r'\s+', ' ', installation_text).strip()
        # Remove dates appended from DATE-WRITTEN
        system = re.sub(r'\s+\d+/[A-Z]{3}/\d{4}.*$', '', system, flags=re.IGNORECASE).strip()
        # Also remove standalone dates
        system = re.sub(r'\s+\d{2}/\d{2}/\d{4}.*$', '', system, flags=re.IGNORECASE).strip()
        
        description = f"Programa COBOL que {objective.lower() if objective else 'ejecuta procesos'}. Pertenece a: {system}."
    else:
        description = f"Programa COBOL que {objective.lower() if objective else 'ejecuta procesos'}."

    return {
        "objective": objective,
        "description": description,
        "system": system,
        "author": " ".join(author_lines).strip() if author_lines else None,
    }


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


def extract_copybook_paragraph_names(
    copybook_name: str,
    visited: set[str] | None = None,
    depth: int = 0,
) -> set[str]:
    resolved_name, path = resolve_copybook_file(copybook_name)
    if not path or not resolved_name:
        return set()

    if resolved_name in _COPYBOOK_TRANSITIVE_PARAGRAPH_CACHE:
        return set(_COPYBOOK_TRANSITIVE_PARAGRAPH_CACHE[resolved_name])

    if depth >= MAX_COPYBOOK_RECURSION_DEPTH:
        return set()

    if visited is None:
        visited = set()
    if resolved_name in visited:
        return set()

    visited_local = set(visited)
    visited_local.add(resolved_name)

    names: set[str] = set()
    nested_copybooks: set[str] = set()

    normalized = [
        (line_no, normalize_fixed_line(raw))
        for line_no, raw in enumerate(path.read_text(encoding="utf-8", errors="ignore").splitlines(), start=1)
    ]

    for idx, (_, logical) in enumerate(normalized):
        if is_ignored_structural_line(logical):
            continue

        paragraph_name = extract_paragraph_name_from_normalized(normalized, idx)
        if paragraph_name and is_candidate_paragraph_name(paragraph_name):
            names.add(paragraph_name)

        cm = COPY_RE.match(logical)
        if cm:
            nested_copybooks.add(cm.group(1).upper())

        include_match = SQL_INCLUDE_RE.search(logical.upper())
        if include_match:
            nested_copybooks.add(include_match.group(1).upper())

    for nested in sorted(nested_copybooks):
        names.update(extract_copybook_paragraph_names(nested, visited_local, depth + 1))

    _COPYBOOK_TRANSITIVE_PARAGRAPH_CACHE[resolved_name] = set(names)
    return names


def parse_program(program: str) -> dict:
    src = SRC_DIR / f"{program}.cbl"
    if not src.exists():
        raise FileNotFoundError(f"Source file not found: {src}")

    lines = src.read_text(encoding="utf-8", errors="ignore").splitlines()

    normalized: list[tuple[int, str]] = []
    for i, raw in enumerate(lines, start=1):
        logical = normalize_fixed_line(raw)
        normalized.append((i, logical))

    data_item_names: set[str] = set()
    for _, logical in normalized:
        if is_ignored_structural_line(logical):
            continue
        dm = DATA_ITEM_DEF_RE.match(logical)
        if dm:
            data_item_names.add(dm.group(1).upper())

    procedure_line = None
    first_candidate_paragraph_line = None
    first_perform_line = None
    for idx, (line_no, logical) in enumerate(normalized):
        searchable = strip_quoted_literals(logical)

        up = logical.upper()
        if procedure_line is None and "PROCEDURE DIVISION" in up:
            procedure_line = line_no

        if first_candidate_paragraph_line is None:
            paragraph_name = extract_paragraph_name_from_normalized(normalized, idx)
            if paragraph_name and is_candidate_paragraph_name(paragraph_name):
                first_candidate_paragraph_line = line_no

        if first_perform_line is None:
            for m in PERFORM_RE.finditer(searchable):
                tgt = m.group(1).upper()
                if is_ignorable_perform_pair(logical, tgt, data_item_names):
                    continue
                if not is_ignorable_perform_target(tgt):
                    first_perform_line = line_no
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

    for idx, (line_no, logical) in enumerate(normalized):
        searchable = strip_quoted_literals(logical)
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

        for m in CALL_RE.finditer(searchable):
            routine_name = m.group(1).upper()
            calls[routine_name].append(line_no)
            if current_paragraph:
                paragraph_calls[current_paragraph][routine_name].append(line_no)

        if line_no >= parse_start_line:
            paragraph_name = extract_paragraph_name_from_normalized(normalized, idx)
            if paragraph_name and is_candidate_paragraph_name(paragraph_name):
                current_paragraph = paragraph_name
                paragraphs.append({"name": paragraph_name, "line": line_no})

            for m in PERFORM_RE.finditer(searchable):
                tgt = m.group(1).upper()
                if is_ignorable_perform_pair(logical, tgt, data_item_names):
                    continue
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

    # Strictly resolve missing PERFORM targets against included copybooks (transitively).
    copybook_paragraph_index: dict[str, set[str]] = defaultdict(set)
    for copybook_name in sorted(copybooks.keys()):
        for paragraph_name in extract_copybook_paragraph_names(copybook_name):
            copybook_paragraph_index[paragraph_name].add(copybook_name)

    resolved_perform_targets_via_copybook = {
        target: sorted(copybook_paragraph_index[target])
        for target in sorted(perform_set)
        if target not in paragraph_name_set and target in copybook_paragraph_index
    }

    # Resolve deterministic aliases when a missing target maps to exactly one known paragraph
    # by strict prefix extension. Example: 508-LEE-ZMDT603 -> 508-LEE-ZMDT603-CJ
    known_paragraph_names = paragraph_name_set | set(copybook_paragraph_index.keys())
    resolved_perform_targets_via_prefix_alias: dict[str, str] = {}
    for target in sorted(perform_set):
        if target in paragraph_name_set or target in resolved_perform_targets_via_copybook:
            continue
        if "-" not in target:
            continue

        if target.endswith("-"):
            matches = sorted(name for name in known_paragraph_names if name.startswith(target))
        else:
            matches = sorted(name for name in known_paragraph_names if name.startswith(target + "-"))

        if len(matches) == 1:
            resolved_perform_targets_via_prefix_alias[target] = matches[0]

    # If a PERFORM target resolves via copybook, link that evidence back to the caller paragraph.
    for paragraph_name, targets in paragraph_perform_targets.items():
        for target_name, target_lines in targets.items():
            for copybook_name in resolved_perform_targets_via_copybook.get(target_name, []):
                paragraph_copybooks[paragraph_name][copybook_name].extend(target_lines)
            alias_name = resolved_perform_targets_via_prefix_alias.get(target_name)
            if alias_name:
                for copybook_name in copybook_paragraph_index.get(alias_name, set()):
                    paragraph_copybooks[paragraph_name][copybook_name].extend(target_lines)

    missing_perform_targets = sorted(
        target
        for target in perform_set
        if target not in paragraph_name_set
        and target not in resolved_perform_targets_via_copybook
        and target not in resolved_perform_targets_via_prefix_alias
    )

    read_tables: dict[str, list[int]] = defaultdict(list)
    update_tables: dict[str, list[int]] = defaultdict(list)
    for evidence_lines, sql in sql_blocks:
        reads, writes = extract_sql_tables(sql)
        for t in reads:
            read_tables[t].extend(evidence_lines)
        for t in writes:
            update_tables[t].extend(evidence_lines)

    dcl_tables: dict[str, dict] = {}
    for copybook_name in sorted(copybooks.keys()):
        dcl_metadata = parse_dcl_artifact(copybook_name)
        if not dcl_metadata:
            continue
        dcl_tables[dcl_metadata["tableName"]] = dcl_metadata

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

    # Extract program metadata (objective, description, system)
    metadata = extract_program_metadata(program, normalized)

    return {
        "program": program,
        "sourceFile": f"src/{program}.cbl",
        "procedureLine": procedure_line,
        "parseStartLine": parse_start_line,
        "parseStartReason": parse_start_reason,
        "metadata": metadata,
        "copybooks": [{"name": k, "evidenceLines": sorted(set(v))} for k, v in sorted(copybooks.items())],
        "dclTables": [dcl_tables[name] for name in sorted(dcl_tables.keys())],
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
            "resolvedPerformTargetsViaPrefixAlias": resolved_perform_targets_via_prefix_alias,
        },
    }

def discover_programs_from_src() -> list[str]:
    return sorted(path.stem.upper() for path in SRC_DIR.glob("*.cbl"))


def deterministic_sample(programs: list[str], sample_size: int) -> list[str]:
    if sample_size <= 0 or sample_size >= len(programs):
        return list(programs)
    if sample_size == 1:
        return [programs[0]]

    n = len(programs)
    indices = {round(i * (n - 1) / (sample_size - 1)) for i in range(sample_size)}
    return [programs[i] for i in sorted(indices)]


def infer_regex_from_missing_target(target: str) -> str:
    name = target.upper().strip()

    m = re.match(r"^(\d+)-", name)
    if m:
        digits = len(m.group(1))
        return rf"^\d{{{digits}}}-"

    m = re.match(r"^(\d+)([A-Z])-", name)
    if m:
        digits = len(m.group(1))
        return rf"^\d{{{digits}}}[A-Z]-"

    if name.startswith(("P-", "R-")):
        return r"^[PR]-"

    if "-" in name and re.match(r"^[A-Z][A-Z0-9-]{2,70}$", name):
        return r"^[A-Z][A-Z0-9-]{2,70}$"

    escaped = re.escape(name)
    return rf"^{escaped}$"


def build_pattern_learning_report(extractions: list[dict], run_id: str, scope: dict, extraction_errors: list[dict]) -> dict:
    unresolved_by_program: list[dict] = []
    unsupported_missing_targets: list[str] = []
    all_missing_targets: list[str] = []

    for ext in extractions:
        program = ext["program"]
        coverage = ext.get("coverage", {})
        missing = sorted(set(coverage.get("missingPerformTargets", [])))
        if missing:
            unresolved_by_program.append({"program": program, "missingPerformTargets": missing})
            all_missing_targets.extend(missing)
            for target in missing:
                if not is_candidate_paragraph_name(target):
                    unsupported_missing_targets.append(target)

    unique_missing = sorted(set(all_missing_targets))
    unique_unsupported = sorted(set(unsupported_missing_targets))

    grouped_patterns: dict[str, list[str]] = defaultdict(list)
    for target in unique_unsupported:
        grouped_patterns[infer_regex_from_missing_target(target)].append(target)

    existing_paragraph_names = {
        paragraph["name"]
        for ext in extractions
        for paragraph in ext.get("paragraphs", [])
    }

    suggestions = []
    total_unsupported = max(1, len(unique_unsupported))
    for pattern, examples in sorted(grouped_patterns.items(), key=lambda item: (-len(item[1]), item[0])):
        support_hits = [name for name in sorted(existing_paragraph_names) if re.match(pattern, name)]
        covered = len(examples)
        coverage_ratio = covered / total_unsupported
        support_ratio = min(1.0, len(support_hits) / max(1, covered))
        confidence = round(100 * (0.75 * coverage_ratio + 0.25 * support_ratio), 1)

        suggestions.append(
            {
                "suggestedRegex": pattern,
                "requiresHumanApproval": True,
                "confidence": confidence,
                "coveredUnsupportedTargets": covered,
                "exampleUnsupportedTargets": examples[:10],
                "existingParagraphMatchesInSample": len(support_hits),
                "exampleExistingParagraphMatches": support_hits[:10],
            }
        )

    total_perform_targets = sum(ext.get("coverage", {}).get("performTargetCount", 0) for ext in extractions)
    total_missing = len(all_missing_targets)
    total_supported_missing = total_missing - len(unique_unsupported)

    return {
        "stage": "pattern-learning",
        "runId": run_id,
        "scope": scope,
        "extractionErrors": extraction_errors,
        "summary": {
            "programsAnalyzed": len(extractions),
            "programsWithCoverageGaps": len(unresolved_by_program),
            "performTargetsAnalyzed": total_perform_targets,
            "missingTargets": total_missing,
            "missingTargetsResolvedByCurrentRulesOrCopybook": total_supported_missing,
            "unsupportedMissingTargets": len(unique_unsupported),
            "uniqueMissingTargets": len(unique_missing),
        },
        "unresolvedByProgram": unresolved_by_program,
        "unsupportedMissingTargets": unique_unsupported,
        "suggestions": suggestions,
        "qualityGateResult": "pass" if not unique_unsupported else "review_required",
        "nextSafeAction": "Continue with current parser rules" if not unique_unsupported else "Review suggestions and approve deterministic rule updates",
    }


def build_ai_residual_cases_prompt(report: dict) -> str:
    unresolved = report.get("unresolvedByProgram", [])
    summary = report.get("summary", {})
    run_id = report.get("runId", "unknown-run")

    lines = [
        "# Residual Cases Remediation Prompt",
        "",
        "You are a COBOL parser remediation specialist.",
        "",
        "## Context",
        f"- runId: {run_id}",
        f"- programsAnalyzed: {summary.get('programsAnalyzed', 0)}",
        f"- programsWithCoverageGaps: {summary.get('programsWithCoverageGaps', 0)}",
        f"- missingTargets: {summary.get('missingTargets', 0)}",
        f"- unsupportedMissingTargets: {summary.get('unsupportedMissingTargets', 0)}",
        "",
        "## Objective",
        "For each residual program/target, determine the deterministic remediation path without inventing nodes or relations.",
        "",
        "## Required Output Per Target",
        "1. rootCauseCategory: one of",
        "   - IN_STRING_LITERAL",
        "   - TRUNCATED_TARGET",
        "   - COPYBOOK_TRANSITIVE",
        "   - LOCAL_PARAGRAPH_NAME_VARIANT",
        "   - TEMPLATE_ROUTINE",
        "   - TRUE_MISSING_REQUIRES_HUMAN_REVIEW",
        "2. evidence: source file + exact line(s)",
        "3. deterministicAction: exact parser behavior change or no-change with manual review",
        "4. risk: LOW/MEDIUM/HIGH and why",
        "",
        "## Hard Constraints",
        "- No hallucinations.",
        "- No ontology violations.",
        "- If ambiguous, choose TRUE_MISSING_REQUIRES_HUMAN_REVIEW.",
        "- Keep unsupportedMissingTargets at 0.",
        "",
        "## Residual Programs and Missing Targets",
    ]

    for item in unresolved:
        program = item.get("program", "UNKNOWN")
        targets = item.get("missingPerformTargets", [])
        lines.append(f"- {program} ({len(targets)}): {', '.join(targets)}")

    lines.extend(
        [
            "",
            "## Final Summary Required",
            "- Count by rootCauseCategory",
            "- Proposed deterministic changes count",
            "- Targets that must stay pending_human_review",
        ]
    )

    return "\n".join(lines) + "\n"

def run_pattern_learning(run_id: str, programs: list[str], sample_size: int, scan_all: bool) -> tuple[pathlib.Path, dict]:
    source_programs = [p.upper() for p in programs] if programs else discover_programs_from_src()
    selected_programs = source_programs if scan_all else deterministic_sample(source_programs, sample_size)

    extractions: list[dict] = []
    extraction_errors: list[dict] = []
    for program in selected_programs:
        try:
            extractions.append(parse_program(program))
        except Exception as exc:  # defensive path for large estate scans
            extraction_errors.append({"program": program, "error": str(exc)[:300]})

    report = build_pattern_learning_report(
        extractions=extractions,
        run_id=run_id,
        scope={
            "scanAll": scan_all,
            "requestedPrograms": [p.upper() for p in programs] if programs else [],
            "sampleSize": sample_size,
            "selectedPrograms": len(selected_programs),
            "totalProgramsAvailable": len(source_programs),
        },
        extraction_errors=extraction_errors,
    )

    prompt_path = REPORT_DIR / f"{run_id}-residual-remediation.prompt.md"
    prompt_content = build_ai_residual_cases_prompt(report)
    prompt_path.write_text(prompt_content, encoding="utf-8")
    report["artifacts"] = {
        "residualRemediationPrompt": str(prompt_path.relative_to(REPO_ROOT)),
    }

    report_path = REPORT_DIR / f"{run_id}-pattern-learning.json"
    report_path.write_text(json.dumps(report, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")
    return report_path, report


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

    def build_dbtable_properties(table_name: str, evidence_lines: list[int], source_file: str, dcl_metadata: dict | None) -> dict:
        properties = {
            "name": table_name,
            "ingestion": "auto",
            "layer": "data-access",
            "nodeType": "physical-table",
            "viewTag": "data-access",
            "reviewStatus": "pending_human_review",
            "reviewRequired": True,
            "reviewSource": "auto-ingestion",
            "sourceFile": source_file,
            "evidenceFile": source_file,
            "evidenceLines": evidence_lines,
            "runId": run_id,
        }
        if dcl_metadata:
            properties.update(
                {
                    "qualifiedName": dcl_metadata["qualifiedName"],
                    "schemaName": dcl_metadata["schemaName"],
                    "dclMember": dcl_metadata["memberName"],
                    "dclPath": dcl_metadata["dclPath"],
                    "dclHostStructure": dcl_metadata["hostStructureName"],
                    "declaredColumnCount": dcl_metadata["declaredColumnCount"],
                    "declaredColumns": dcl_metadata["declaredColumns"],
                    "declaredColumnDefinitions": dcl_metadata["declaredColumnDefinitions"],
                }
            )
        return properties

    def base_review_properties() -> dict:
        return {
            "ingestion": "auto",
            "reviewStatus": "pending_human_review",
            "reviewRequired": True,
            "reviewSource": "auto-ingestion",
            "runId": run_id,
        }

    for ext in extractions:
        program = ext["program"]
        source_file = ext["sourceFile"]
        metadata = ext.get("metadata", {})
        functionality_name = f"FUNCTIONALITY_{program}"
        dcl_tables = {item["tableName"]: item for item in ext.get("dclTables", [])}
        copybook_evidence = {c["name"]: c["evidenceLines"] for c in ext["copybooks"]}

        add_node(
            "DB2System",
            ("DB2",),
            {
                "name": "DB2",
                "layer": "data-access",
                "nodeType": "db2-system",
                "viewTag": "db2",
                **base_review_properties(),
                "sourceFile": source_file,
            },
        )

        for dcl in dcl_tables.values():
            schema_name = dcl.get("schemaName")
            table_name = dcl["tableName"]
            include_lines = copybook_evidence.get(dcl["memberName"], [1])

            if schema_name:
                add_node(
                    "DB2Schema",
                    (schema_name,),
                    {
                        "name": schema_name,
                        "layer": "data-access",
                        "nodeType": "db2-schema",
                        "viewTag": "db2",
                        **base_review_properties(),
                        "sourceFile": source_file,
                    },
                )
                add_rel(
                    "HAS_SCHEMA",
                    ("DB2System", ("DB2",)),
                    ("DB2Schema", (schema_name,)),
                    {
                        "runId": run_id,
                        "reviewStatus": "pending_human_review",
                        "reviewSource": "auto-ingestion",
                        "reviewRequired": True,
                        "evidenceFile": dcl["dclPath"],
                        "evidenceLines": [1],
                    },
                )

            add_node(
                "DclgenLibrary",
                (dcl.get("libraryDataset") or "UNSPECIFIED_DCL_LIBRARY",),
                {
                    "name": dcl.get("libraryDataset") or "UNSPECIFIED_DCL_LIBRARY",
                    "librarySpec": dcl.get("librarySpec"),
                    "layer": "data-access",
                    "nodeType": "dclgen-library",
                    "viewTag": "db2",
                    **base_review_properties(),
                    "sourceFile": source_file,
                },
            )
            add_rel(
                "HAS_LIBRARY",
                ("DB2System", ("DB2",)),
                ("DclgenLibrary", ((dcl.get("libraryDataset") or "UNSPECIFIED_DCL_LIBRARY"),)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": dcl["dclPath"],
                    "evidenceLines": [1],
                },
            )

            add_node(
                "DclgenArtifact",
                (dcl["memberName"],),
                {
                    "name": dcl["memberName"],
                    "qualifiedName": dcl["qualifiedName"],
                    "schemaName": dcl.get("schemaName"),
                    "libraryDataset": dcl.get("libraryDataset"),
                    "libraryMember": dcl.get("libraryMember") or dcl["memberName"],
                    "hostStructureName": dcl.get("hostStructureName"),
                    "declaredColumnCount": dcl.get("declaredColumnCount"),
                    "layer": "data-access",
                    "nodeType": "dclgen-artifact",
                    "viewTag": "db2",
                    **base_review_properties(),
                    "sourceFile": dcl["dclPath"],
                    "evidenceFile": dcl["dclPath"],
                    "evidenceLines": [1],
                },
            )

            add_rel(
                "CONTAINS_DCLGEN",
                ("DclgenLibrary", ((dcl.get("libraryDataset") or "UNSPECIFIED_DCL_LIBRARY"),)),
                ("DclgenArtifact", (dcl["memberName"],)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": dcl["dclPath"],
                    "evidenceLines": [1],
                },
            )

            add_node(
                "DBTable",
                (table_name,),
                build_dbtable_properties(table_name, include_lines, source_file, dcl),
            )

            add_rel(
                "DESCRIBES_TABLE",
                ("DclgenArtifact", (dcl["memberName"],)),
                ("DBTable", (table_name,)),
                {
                    "runId": run_id,
                    "reviewStatus": "pending_human_review",
                    "reviewSource": "auto-ingestion",
                    "reviewRequired": True,
                    "evidenceFile": dcl["dclPath"],
                    "evidenceLines": [1],
                },
            )

            if schema_name:
                add_rel(
                    "HAS_TABLE",
                    ("DB2Schema", (schema_name,)),
                    ("DBTable", (table_name,)),
                    {
                        "runId": run_id,
                        "reviewStatus": "pending_human_review",
                        "reviewSource": "auto-ingestion",
                        "reviewRequired": True,
                        "evidenceFile": dcl["dclPath"],
                        "evidenceLines": [1],
                    },
                )

            for column in dcl.get("db2Columns", []):
                column_node_name = f"{table_name}.{column['columnName']}"
                add_node(
                    "TableColumn",
                    (column_node_name,),
                    {
                        "name": column_node_name,
                        "tableName": table_name,
                        "columnName": column["columnName"],
                        "sqlDefinition": column["sqlDefinition"],
                        "nullable": column["nullable"],
                        "position": column["position"],
                        "layer": "data-access",
                        "nodeType": "db2-column",
                        "viewTag": "db2",
                        **base_review_properties(),
                        "sourceFile": dcl["dclPath"],
                        "evidenceFile": dcl["dclPath"],
                        "evidenceLines": [1],
                    },
                )
                add_rel(
                    "HAS_COLUMN",
                    ("DBTable", (table_name,)),
                    ("TableColumn", (column_node_name,)),
                    {
                        "runId": run_id,
                        "reviewStatus": "pending_human_review",
                        "reviewSource": "auto-ingestion",
                        "reviewRequired": True,
                        "evidenceFile": dcl["dclPath"],
                        "evidenceLines": [1],
                    },
                )
                add_rel(
                    "DECLARES_COLUMN",
                    ("DclgenArtifact", (dcl["memberName"],)),
                    ("TableColumn", (column_node_name,)),
                    {
                        "runId": run_id,
                        "reviewStatus": "pending_human_review",
                        "reviewSource": "auto-ingestion",
                        "reviewRequired": True,
                        "evidenceFile": dcl["dclPath"],
                        "evidenceLines": [1],
                    },
                )

                host_field_name = column.get("hostFieldName")
                host_pic = column.get("hostPicClause")
                if host_field_name and host_pic:
                    host_node_name = f"{dcl['memberName']}.{host_field_name}"
                    add_node(
                        "CobolHostField",
                        (host_node_name,),
                        {
                            "name": host_node_name,
                            "memberName": dcl["memberName"],
                            "fieldName": host_field_name,
                            "picClause": host_pic,
                            "hostStructureName": dcl.get("hostStructureName"),
                            "layer": "data-access",
                            "nodeType": "cobol-host-field",
                            "viewTag": "db2",
                            **base_review_properties(),
                            "sourceFile": dcl["dclPath"],
                            "evidenceFile": dcl["dclPath"],
                            "evidenceLines": [1],
                        },
                    )
                    add_rel(
                        "DECLARES_HOST_FIELD",
                        ("DclgenArtifact", (dcl["memberName"],)),
                        ("CobolHostField", (host_node_name,)),
                        {
                            "runId": run_id,
                            "reviewStatus": "pending_human_review",
                            "reviewSource": "auto-ingestion",
                            "reviewRequired": True,
                            "evidenceFile": dcl["dclPath"],
                            "evidenceLines": [1],
                        },
                    )
                    add_rel(
                        "TRANSLATED_TO",
                        ("TableColumn", (column_node_name,)),
                        ("CobolHostField", (host_node_name,)),
                        {
                            "runId": run_id,
                            "reviewStatus": "pending_human_review",
                            "reviewSource": "auto-ingestion",
                            "reviewRequired": True,
                            "evidenceFile": dcl["dclPath"],
                            "evidenceLines": [1],
                        },
                    )

        add_node(
            "Program",
            (program,),
            {
                "name": program,
                "ingestion": "auto",
                "layer": "program",
                "nodeType": "program",
                "viewTag": "cobol-program",
                "reviewStatus": "pending_human_review",
                "reviewRequired": True,
                "reviewSource": "auto-ingestion",
                "sourceFile": source_file,
                "objective": metadata.get("objective"),
                "description": metadata.get("description"),
                "system": metadata.get("system"),
                "runId": run_id,
            },
        )

        add_node(
            "Functionality",
            (functionality_name,),
            {
                "name": functionality_name,
                "objective": metadata.get("objective") or f"Capacidad funcional principal de {program}.",
                "description": metadata.get("description") or f"Nodo funcional paraguas para {program}.",
                "businessDomain": "pending_human_review",
                "ingestion": "auto",
                "layer": "functional",
                "nodeType": "business-function",
                "viewTag": "functional",
                "reviewStatus": "pending_human_review",
                "reviewRequired": True,
                "reviewSource": "auto-ingestion",
                "sourceFile": source_file,
                "runId": run_id,
            },
        )
        add_rel(
            "IMPLEMENTS_FUNCTIONALITY",
            ("Program", (program,)),
            ("Functionality", (functionality_name,)),
            {
                "runId": run_id,
                "reviewStatus": "pending_human_review",
                "reviewSource": "auto-ingestion",
                "reviewRequired": True,
                "evidenceFile": source_file,
                "evidenceLines": [1],
            },
        )

        phase_to_subfunction: dict[str, str] = {}
        for p in ext["paragraphs"]:
            phase = (p.get("executionPhase") or "PROCESSING").upper()
            if phase not in phase_to_subfunction:
                sub_name = f"{program}_{phase}"
                phase_to_subfunction[phase] = sub_name
                add_node(
                    "SubFunctionality",
                    (functionality_name, sub_name),
                    {
                        "functionalityName": functionality_name,
                        "name": sub_name,
                        "description": f"Sub-funcionalidad de {program} para fase {phase}.",
                        "ingestion": "auto",
                        "layer": "functional",
                        "nodeType": "sub-business-function",
                        "viewTag": "functional",
                        "reviewStatus": "pending_human_review",
                        "reviewRequired": True,
                        "reviewSource": "auto-ingestion",
                        "sourceFile": source_file,
                        "runId": run_id,
                    },
                )
                add_rel(
                    "HAS_SUBFUNCTIONALITY",
                    ("Functionality", (functionality_name,)),
                    ("SubFunctionality", (functionality_name, sub_name)),
                    {
                        "runId": run_id,
                        "reviewStatus": "pending_human_review",
                        "reviewSource": "auto-ingestion",
                        "reviewRequired": True,
                        "evidenceFile": source_file,
                        "evidenceLines": [1],
                    },
                )

        for p in ext["paragraphs"]:
            phase = (p.get("executionPhase") or "PROCESSING").upper()
            sub_name = phase_to_subfunction[phase]

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
                build_dbtable_properties(t["name"], t["evidenceLines"], source_file, dcl_tables.get(t["name"])),
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
                build_dbtable_properties(t["name"], t["evidenceLines"], source_file, dcl_tables.get(t["name"])),
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
                "REALIZED_BY",
                ("SubFunctionality", (functionality_name, sub_name)),
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
    if label == "SubFunctionality":
        return label, {"functionalityName": key[0], "name": key[1]}
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
        elif label == "SubFunctionality":
            merge_key = {"functionalityName": key[0], "name": key[1]}
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
        "WHERE ((n:Program AND n.name IN progs) OR (n:Functionality AND n.runId = '" + run_id + "') OR (n:SubFunctionality AND n.runId = '" + run_id + "') OR (n:Paragraph AND n.programName IN progs) OR (n:Copybook AND n.runId = '" + run_id + "') OR (n:DBTable AND n.runId = '" + run_id + "') OR (n:ExternalRoutine AND n.runId = '" + run_id + "')) "
        "WITH n, ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired','reviewSource'] AS common "
        "WITH n, common + CASE WHEN n:Program THEN ['name'] WHEN n:Functionality THEN ['name'] WHEN n:SubFunctionality THEN ['functionalityName','name'] WHEN n:Paragraph THEN ['programName','name','summary'] ELSE ['name'] END AS fields "
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
        "WHERE ((a:Program AND a.name IN progs) OR (a:Functionality AND a.runId = '" + run_id + "') OR (a:SubFunctionality AND a.runId = '" + run_id + "') OR (a:Paragraph AND a.programName IN progs)) "
        "AND type(r) IN ['INCLUDES_COPYBOOK','READS_TABLE','UPDATES_TABLE','CALLS_ROUTINE','USES_COPYBOOK','READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL','WRITES_FILE','IMPLEMENTED_BY','IMPLEMENTS_FUNCTIONALITY','HAS_SUBFUNCTIONALITY','REALIZED_BY'] "
        "AND (r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0) "
        "RETURN count(*) AS c;"
    )

    deprecated_program_paramtype = count_query(
        "MATCH (:Program)-[r:USES_PARAM_TYPE]->(:ParamType) RETURN count(r) AS c;"
    )

    ontology_violations = count_query(
        "WITH " + program_list + " AS progs "
        "MATCH (n) WHERE (n:Program AND n.name IN progs) OR (n:Paragraph AND n.programName IN progs) OR n.runId = '" + run_id + "' "
        "WITH n, labels(n) AS ls "
        "RETURN count(CASE WHEN size([x IN ls WHERE x IN ['Program','Functionality','SubFunctionality','Paragraph','Copybook','ArtifactChange','DB2System','DB2Schema','DclgenLibrary','DBTable','DclgenArtifact','TableColumn','CobolHostField','ParamType','ExternalRoutine','OutputFile']]) = 0 THEN 1 END) AS c;"
    )

    return {
        "missingMandatoryProperties": missing_mandatory,
        "invalidReviewStateMetadata": invalid_review_state,
        "invalidParagraphSummary": invalid_summary,
        "missingCriticalRelationEvidence": missing_rel_evidence,
        "ontologyViolations": ontology_violations,
        "deprecatedProgramUsesParamType": deprecated_program_paramtype,
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
    parser.add_argument("--programs", nargs="+")
    parser.add_argument("--mode", choices=["discovery", "precheck", "commit", "post-audit", "full", "pattern-learn"], default="full")
    parser.add_argument("--sample-size", type=int, default=250)
    parser.add_argument("--scan-all", action="store_true")
    args = parser.parse_args()

    REPORT_DIR.mkdir(parents=True, exist_ok=True)
    QUERY_DIR.mkdir(parents=True, exist_ok=True)

    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")

    if args.mode == "pattern-learn":
        program_suffix = "custom" if args.programs else "auto-scan"
        run_id = f"e2e-{timestamp}-pattern-learning-{program_suffix}"
        report_path, report = run_pattern_learning(
            run_id=run_id,
            programs=args.programs or [],
            sample_size=args.sample_size,
            scan_all=args.scan_all,
        )
        print(str(report_path.relative_to(REPO_ROOT)))
        print(json.dumps({
            "runId": run_id,
            "mode": "pattern-learn",
            "qualityGateResult": report["qualityGateResult"],
            "programsAnalyzed": report["summary"]["programsAnalyzed"],
            "programsWithCoverageGaps": report["summary"]["programsWithCoverageGaps"],
            "unsupportedMissingTargets": report["summary"]["unsupportedMissingTargets"],
            "suggestions": len(report["suggestions"]),
            "residualRemediationPrompt": report.get("artifacts", {}).get("residualRemediationPrompt", ""),
        }, ensure_ascii=True))
        return 0

    if not args.programs:
        parser.error("--programs is required for mode '" + args.mode + "'")

    run_id = f"e2e-{timestamp}-" + "-".join(p.lower() for p in args.programs)

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
    allow_write_stage = args.mode in {"commit", "full"}

    if precheck["qualityGateResult"] == "pass" and allow_write_stage:
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
        "invalidLabelsGlobal": count_query("MATCH (n) WITH labels(n) AS ls UNWIND ls AS l WITH DISTINCT l WHERE NOT l IN ['Program','Functionality','SubFunctionality','Paragraph','Copybook','ArtifactChange','DB2System','DB2Schema','DclgenLibrary','DBTable','DclgenArtifact','TableColumn','CobolHostField','ParamType','ExternalRoutine','OutputFile'] RETURN count(*) AS c;"),
        "criticalRelWithoutEvidenceGlobal": count_query("MATCH ()-[r:USES_COPYBOOK|READS_DATA|UPDATES_DATA|DERIVES_FROM|DEPENDS_ON_EXTERNAL|INCLUDES_COPYBOOK|READS_TABLE|UPDATES_TABLE|CALLS_ROUTINE|WRITES_FILE|IMPLEMENTED_BY]->() WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile))='' OR r.evidenceLines IS NULL OR size(r.evidenceLines)=0 RETURN count(*) AS c;"),
        "deprecatedProgramUsesParamTypeGlobal": count_query("MATCH (:Program)-[r:USES_PARAM_TYPE]->(:ParamType) RETURN count(r) AS c;"),
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
    elif post2.get("deprecatedProgramUsesParamType", 0) > 0:
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
