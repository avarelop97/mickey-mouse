#!/usr/bin/env python3
"""Ingest BMS maps into Neo4j with optional parallel batch execution.

Usage examples:
    python3 infra/neo4j/scripts/ingest_bms_map.py --bms-file mps/ZMPG721.bms --dry-run
    python3 infra/neo4j/scripts/ingest_bms_map.py --bms-file mps/ZMPG721.bms --apply
    python3 infra/neo4j/scripts/ingest_bms_map.py --batch-file infra/neo4j/queries/bms-batch.txt --apply --workers 4 --max-retries 2
"""

from __future__ import annotations

import argparse
import concurrent.futures
import json
import os
import pathlib
import re
import subprocess
import time
import traceback
from dataclasses import dataclass
from datetime import datetime, timezone
from typing import Any


REPO_ROOT = pathlib.Path(__file__).resolve().parents[3]
SRC_DIR = REPO_ROOT / "src"
REPORT_DIR = REPO_ROOT / "infra" / "neo4j" / "reports"

NEO4J_CONTAINER = os.environ.get("NEO4J_CONTAINER", "neo4j-local")
NEO4J_PASSWORD = os.environ.get("NEO4J_PASSWORD", "CambiaEstaClave123!")
NEO4J_DATABASE = os.environ.get("NEO4J_DATABASE", "neo4j")


@dataclass
class FieldDef:
    name: str
    row: int | None
    col: int | None
    length: int | None
    attr: str
    initial: str


@dataclass
class LiteralDef:
    name: str
    row: int | None
    col: int | None
    text: str


@dataclass
class KeyDef:
    key_name: str
    action: str


@dataclass
class KeyFlowDef:
    program: str
    state_name: str
    key_name: str
    line_hint: int
    target_map_key: str | None
    target_program: str | None
    target_kind: str


@dataclass
class StateFieldUsageDef:
    program: str
    state_name: str
    field_name: str
    usage_type: str
    line_hint: int


@dataclass
class ParsedBms:
    declared_mapset_name: str
    mapset_name: str
    map_name: str
    map_key: str
    map_scope: str
    fields: list[FieldDef]
    literals: list[LiteralDef]
    keys: list[KeyDef]
    programs: list[str]
    bms_file: pathlib.Path


@dataclass
class LiteralFieldLink:
    literal_name: str
    field_name: str
    strategy: str
    confidence: float


DFHMSD_RE = re.compile(r"^\s*([A-Z0-9]+)\s+DFHMSD\b", re.IGNORECASE)
DFHMDI_RE = re.compile(r"^\s*([A-Z0-9]+)\s+DFHMDI\b", re.IGNORECASE)
ATTR_RE = re.compile(r"\bATTRB\s*=\s*\(([^)]*)\)", re.IGNORECASE)
LEN_RE = re.compile(r"\bLENGTH\s*=\s*(\d+)", re.IGNORECASE)
POS_RE = re.compile(r"\bPOS\s*=\s*\((\d+)\s*,\s*(\d+)\)", re.IGNORECASE)
INITIAL_RE = re.compile(r"\bINITIAL\s*=\s*'([^']*)'", re.IGNORECASE)
KEY_RE = re.compile(r"(PF\d+|ENT|ENTER)\s*=\s*([A-Z0-9]+)", re.IGNORECASE)
AID_WHEN_RE = re.compile(r"\bWHEN\s+DFH(PF\d+|ENTER)\b", re.IGNORECASE)
AID_IF_RE = re.compile(r"\bEIBAID\b[^\n]*\bDFH(PF\d+|ENTER)\b", re.IGNORECASE)
EVAL_STATE_RE = re.compile(r"\bEVALUATE\s+WC-ESTADO\b", re.IGNORECASE)
WHEN_STATE_RE = re.compile(r"\bWHEN\s+['\"]?([A-Z0-9_-]+)['\"]?\b", re.IGNORECASE)
IF_STATE_RE = re.compile(r"\bWC-ESTADO\b\s*=\s*['\"]?([A-Z0-9_-]+)['\"]?", re.IGNORECASE)
MAP_RE = re.compile(r"\bMAP\s*\(\s*['\"]?([A-Z0-9]+)['\"]?\s*\)", re.IGNORECASE)
MAPSET_RE = re.compile(r"\bMAPSET\s*\(\s*['\"]?([A-Z0-9]+)['\"]?\s*\)", re.IGNORECASE)
PROGRAM_TARGET_RE = re.compile(
    r"\b(?:XCTL|LINK|CALL)\b[^'\"\n]*['\"]([A-Z0-9]+)['\"]",
    re.IGNORECASE,
)
PROGRAM_CICS_LITERAL_RE = re.compile(r"\bPROGRAM\s*\(\s*['\"]([A-Z0-9]+)['\"]\s*\)", re.IGNORECASE)
PROGRAM_CICS_DYNAMIC_RE = re.compile(r"\bPROGRAM\s*\(\s*([A-Z0-9-]+)\s*\)", re.IGNORECASE)
EVALUATE_SUBJECT_RE = re.compile(r"\bEVALUATE\s+([A-Z0-9_-]+)\b", re.IGNORECASE)
PERFORM_TARGET_RE = re.compile(r"\bPERFORM\s+([A-Z0-9-]+)\b", re.IGNORECASE)
PARAGRAPH_HEADER_RE = re.compile(r"^\s*([A-Z0-9][A-Z0-9-]{1,70})(?:\s+SECTION)?\.\s*$", re.IGNORECASE)
COMMENT_PARAGRAPH_MARKER_RE = re.compile(r"^\s*\*+\s*([0-9]{3,5}-[A-Z0-9-]{1,70})(?:\s+SECTION)?\.?\s*$", re.IGNORECASE)
TRANSID_LITERAL_RE = re.compile(r"\b(?:RETURN|START)\b[^\n]*\bTRANSID\s*\(\s*['\"]([A-Z0-9]+)['\"]\s*\)", re.IGNORECASE)
TRANSID_DYNAMIC_RE = re.compile(r"\b(?:RETURN|START)\b[^\n]*\bTRANSID\s*\(\s*([A-Z0-9-]+)\s*\)", re.IGNORECASE)


def cypher_quote(value: str) -> str:
    return "'" + value.replace("\\", "\\\\").replace("'", "\\'") + "'"


def run_cypher(query: str) -> str:
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
    return completed.stdout.strip()


def normalize_bms_line(raw: str) -> str:
    # Keep up to column 72 (ignore COBOL id area).
    return raw[:72].rstrip("\n")


def merge_continuations(lines: list[str], start_idx: int) -> tuple[str, int]:
    parts = [lines[start_idx].rstrip()]
    idx = start_idx
    while parts[-1].endswith("-") and idx + 1 < len(lines):
        parts[-1] = parts[-1][:-1].rstrip()
        idx += 1
        parts.append(lines[idx].strip())
    merged = " ".join(part for part in parts if part)
    return merged, idx


def collect_dfhmdf_statement(lines: list[str], start_idx: int) -> tuple[str, int]:
    """Collect a DFHMDF statement with trailing property lines.

    Many BMS files place INITIAL/PICOUT on following lines and may split
    literal text across multiple lines. This collector keeps those lines
    attached to the DFHMDF statement so attribute extraction is reliable.
    """
    parts = [lines[start_idx].strip()]
    idx = start_idx + 1

    while idx < len(lines):
        nxt = lines[idx]
        up = nxt.strip().upper()

        if "DFHMDF" in up or DFHMSD_RE.match(nxt) or DFHMDI_RE.match(nxt) or up == "END":
            break
        if up.startswith("*"):
            break

        if up:
            parts.append(nxt.strip())
        idx += 1

    normalized: list[str] = []
    for part in parts:
        if normalized and normalized[-1].endswith("-"):
            normalized[-1] = normalized[-1][:-1].rstrip() + part
        else:
            normalized.append(part)

    statement = " ".join(x for x in normalized if x)
    return statement, idx - 1


def extract_name_prefix(statement: str) -> str:
    m = re.match(r"^\s*([A-Z0-9]+)\s+DFHMDF\b", statement, re.IGNORECASE)
    return m.group(1).upper() if m else ""


def parse_bms(bms_file: pathlib.Path) -> tuple[str, str, list[FieldDef], list[LiteralDef], list[KeyDef]]:
    raw_lines = [normalize_bms_line(line) for line in bms_file.read_text(encoding="utf-8", errors="ignore").splitlines()]

    mapset_name = ""
    map_name = ""
    fields: list[FieldDef] = []
    literals: list[LiteralDef] = []
    keys: list[KeyDef] = []

    i = 0
    lit_idx = 1
    while i < len(raw_lines):
        line = raw_lines[i]
        if not mapset_name:
            ms = DFHMSD_RE.match(line)
            if ms:
                mapset_name = ms.group(1).upper()
        if not map_name:
            md = DFHMDI_RE.match(line)
            if md:
                map_name = md.group(1).upper()

        if "DFHMDF" not in line.upper():
            i += 1
            continue

        statement, i = collect_dfhmdf_statement(raw_lines, i)
        name = extract_name_prefix(statement)

        attr_match = ATTR_RE.search(statement)
        len_match = LEN_RE.search(statement)
        pos_match = POS_RE.search(statement)
        init_match = INITIAL_RE.search(statement)

        attr = attr_match.group(1).replace(" ", "") if attr_match else ""
        length = int(len_match.group(1)) if len_match else None
        row = int(pos_match.group(1)) if pos_match else None
        col = int(pos_match.group(2)) if pos_match else None
        initial = init_match.group(1).strip() if init_match else ""

        if name:
            fields.append(FieldDef(name=name, row=row, col=col, length=length, attr=attr, initial=initial))
        elif initial:
            lit_name = f"{map_name}_LIT_{lit_idx:03d}"
            literals.append(LiteralDef(name=lit_name, row=row, col=col, text=initial))
            lit_idx += 1

        if initial:
            for km in KEY_RE.finditer(initial.upper()):
                key_name = km.group(1).upper()
                action = km.group(2).upper()
                if key_name == "ENT":
                    key_name = "ENTER"
                keys.append(KeyDef(key_name=key_name, action=action))

        i += 1

    # Deduplicate keys while preserving order.
    seen: set[tuple[str, str]] = set()
    dedup_keys: list[KeyDef] = []
    for key in keys:
        marker = (key.key_name, key.action)
        if marker in seen:
            continue
        seen.add(marker)
        dedup_keys.append(key)

    return mapset_name, map_name, fields, literals, dedup_keys


def is_cobol_comment_line(line: str) -> bool:
    if not line.strip():
        return False
    if line.lstrip().startswith("*"):
        return True
    if len(line) >= 7 and line[6] in {"*", "/"}:
        return True
    return False


def extract_program_aid_keys(program_names: list[str]) -> list[KeyDef]:
    """Fallback extractor: infer keys from EIBAID/DFH* handling in COBOL."""
    keys: list[KeyDef] = []
    seen: set[str] = set()

    for program in program_names:
        source_file = SRC_DIR / f"{program}.cbl"
        if not source_file.exists():
            continue
        text = source_file.read_text(encoding="utf-8", errors="ignore")
        for raw in text.splitlines():
            if is_cobol_comment_line(raw):
                continue
            line = raw.upper()
            for match in AID_WHEN_RE.finditer(line):
                key_name = match.group(1).upper()
                if key_name == "ENT":
                    key_name = "ENTER"
                if key_name in seen:
                    continue
                seen.add(key_name)
                keys.append(KeyDef(key_name=key_name, action="PROGRAM_AID"))

            for match in AID_IF_RE.finditer(line):
                key_name = match.group(1).upper()
                if key_name == "ENT":
                    key_name = "ENTER"
                if key_name in seen:
                    continue
                seen.add(key_name)
                keys.append(KeyDef(key_name=key_name, action="PROGRAM_AID"))

    return keys


def normalize_state_name(token: str) -> str:
    cleaned = re.sub(r"[^A-Z0-9_]+", "_", token.upper()).strip("_")
    return cleaned if cleaned else "GLOBAL"


def current_state_from_stack(stack: list[dict[str, str]]) -> str:
    for entry in reversed(stack):
        if entry.get("type") == "WC_ESTADO":
            return entry.get("state", "GLOBAL")
    return "GLOBAL"


def infer_field_usage_type(line: str, token: str) -> str:
    """Infer usage type for a field reference in a COBOL line.

    Conservative heuristics:
    - WRITES_FIELD when field appears at the right side of MOVE ... TO ...
      or after INITIALIZE.
    - VALIDATES_INPUT when field appears in IF/EVALUATE/WHEN conditions.
    - READS_INPUT otherwise.
    """
    field_token = rf"\b{re.escape(token)}\b"
    token_up = token.upper()

    # Strong writes: variable on TO/INTO side.
    if re.search(rf"\bMOVE\b[^\n]*\bTO\b[^\n]*{field_token}", line, re.IGNORECASE):
        return "WRITES_FIELD"
    if re.search(rf"\b(?:STRING|UNSTRING|ACCEPT)\b[^\n]*\bINTO\b[^\n]*{field_token}", line, re.IGNORECASE):
        return "WRITES_FIELD"
    if re.search(rf"\bINITIALIZE\b[^\n]*{field_token}", line, re.IGNORECASE):
        return "WRITES_FIELD"

    # Strong validation: token in a decision expression.
    if re.search(rf"\bIF\b[^\n]*{field_token}[^\n]*(=|<>|<|>|NOT\s*=)", line, re.IGNORECASE):
        return "VALIDATES_INPUT"
    if re.search(rf"\b(?:WHEN|EVALUATE)\b[^\n]*{field_token}", line, re.IGNORECASE):
        return "VALIDATES_INPUT"

    # Input aliases tend to validate more often in conditions.
    if token_up.endswith("I") and re.search(rf"\b(?:IF|WHEN|EVALUATE)\b[^\n]*{field_token}", line, re.IGNORECASE):
        return "VALIDATES_INPUT"

    # Output aliases on TO/INTO side are writes.
    if token_up.endswith("O") and re.search(rf"\b(?:TO|INTO)\b[^\n]*{field_token}", line, re.IGNORECASE):
        return "WRITES_FIELD"

    # Reads: token consumed as source expression.
    if re.search(rf"\bMOVE\b\s*{field_token}\b[^\n]*\bTO\b", line, re.IGNORECASE):
        return "READS_INPUT"

    if re.search(rf"\b(IF|EVALUATE|WHEN)\b[^\n]*{field_token}", line, re.IGNORECASE):
        return "VALIDATES_INPUT"
    return "READS_INPUT"


def collect_key_action_block(lines: list[str], start_idx: int, max_span: int = 160) -> list[str]:
    """Collect the code block for one WHEN DFH* key branch.

    Stops at next key branch, WHEN OTHER, or END-EVALUATE.
    """
    block: list[str] = [lines[start_idx]]
    stop_idx = min(len(lines), start_idx + max_span)
    for idx in range(start_idx + 1, stop_idx):
        up = lines[idx].upper()
        if re.search(r"\bWHEN\s+DFH(?:PF\d+|ENTER)\b", up):
            break
        if re.search(r"\bWHEN\s+OTHER\b", up):
            break
        if "END-EVALUATE" in up:
            break
        block.append(lines[idx])
    return block


def extract_navigation_targets_from_block(block_text: str) -> tuple[str | None, str | None, str]:
    """Extract direct (in-block) navigation targets and target kind."""
    map_name_match = MAP_RE.search(block_text)
    mapset_name_match = MAPSET_RE.search(block_text)
    cics_program_match = PROGRAM_CICS_LITERAL_RE.search(block_text)
    program_match = PROGRAM_TARGET_RE.search(block_text)
    dynamic_program_match = PROGRAM_CICS_DYNAMIC_RE.search(block_text)
    transid_literal_match = TRANSID_LITERAL_RE.search(block_text)
    transid_dynamic_match = TRANSID_DYNAMIC_RE.search(block_text)

    target_map_key = None
    if map_name_match and mapset_name_match:
        target_map_key = f"{mapset_name_match.group(1).upper()}::{map_name_match.group(1).upper()}"

    target_program = None
    if cics_program_match:
        target_program = cics_program_match.group(1).upper()
    elif program_match:
        target_program = program_match.group(1).upper()

    if target_map_key or target_program:
        return target_map_key, target_program, "explicit"

    if transid_literal_match:
        return None, None, "explicit_transid"

    if not target_program and dynamic_program_match:
        token = dynamic_program_match.group(1).upper()
        if token and token not in {"DFHRESP", "DFHVALUE"}:
            return target_map_key, None, "dynamic_unresolved"

    if transid_dynamic_match:
        return None, None, "dynamic_unresolved"

    return target_map_key, target_program, "none"


def collect_paragraph_block(lines: list[str], paragraph_name: str, max_span: int = 120) -> str:
    """Return a bounded text block for one paragraph label if found."""
    header_re = re.compile(rf"^\s*{re.escape(paragraph_name)}\s*(?:SECTION\s*)?\.\s*$", re.IGNORECASE)
    comment_marker_re = None
    if paragraph_name and paragraph_name[0].isdigit():
        comment_marker_re = re.compile(rf"^\s*\*+\s*{re.escape(paragraph_name)}\s*(?:SECTION\s*)?\.?\s*$", re.IGNORECASE)
    start_idx = -1
    for idx, raw in enumerate(lines):
        stripped = raw.strip().upper()
        if header_re.match(stripped) or (comment_marker_re and comment_marker_re.match(stripped)):
            start_idx = idx
            break
    if start_idx < 0:
        return ""

    end_idx = min(len(lines), start_idx + max_span)
    for idx in range(start_idx + 1, end_idx):
        stripped = lines[idx].strip().upper()
        if PARAGRAPH_HEADER_RE.match(stripped) or COMMENT_PARAGRAPH_MARKER_RE.match(stripped):
            end_idx = idx
            break

    chunk = lines[start_idx:end_idx]
    return "\n".join(chunk).upper()


def extract_perform_targets(block_text: str) -> list[str]:
    targets: list[str] = []
    for match in PERFORM_TARGET_RE.finditer(block_text):
        para = match.group(1).upper()
        if para in {"UNTIL", "VARYING", "TIMES", "THRU", "THROUGH"}:
            continue
        if para not in targets:
            targets.append(para)
    return targets


def resolve_navigation_via_perform_chain(block_text: str, all_lines: list[str], max_hops: int = 2) -> tuple[str | None, str | None, str]:
    """Resolve targets by following PERFORM paragraph calls up to max_hops."""
    visited: set[str] = set()
    frontier: list[tuple[str, int]] = [(target, 1) for target in extract_perform_targets(block_text)]
    unresolved_perform = False
    partial_kind = "none"

    while frontier:
        para, hop = frontier.pop(0)
        if para in visited or hop > max_hops:
            continue
        visited.add(para)

        para_block = collect_paragraph_block(all_lines, para)
        if not para_block:
            unresolved_perform = True
            continue

        t_map, t_program, kind = extract_navigation_targets_from_block(para_block)
        if t_map or t_program:
            return t_map, t_program, "derived_perform"
        if kind in {"dynamic_unresolved", "explicit_transid"} and partial_kind == "none":
            partial_kind = kind

        if hop < max_hops:
            for next_para in extract_perform_targets(para_block):
                if next_para not in visited:
                    frontier.append((next_para, hop + 1))

    if partial_kind in {"dynamic_unresolved", "explicit_transid"}:
        return None, None, partial_kind

    if unresolved_perform:
        return None, None, "dynamic_unresolved"

    return None, None, "none"


def extract_navigation_targets_from_key_block(block_text: str, all_lines: list[str]) -> tuple[str | None, str | None, str]:
    """Resolve navigation targets from key branch, including one-hop PERFORM."""
    target_map_key, target_program, target_kind = extract_navigation_targets_from_block(block_text)
    if target_map_key or target_program or target_kind in {"dynamic_unresolved", "explicit_transid"}:
        return target_map_key, target_program, target_kind

    t_map, t_program, t_kind = resolve_navigation_via_perform_chain(block_text, all_lines, max_hops=2)
    if t_map or t_program or t_kind in {"dynamic_unresolved", "explicit_transid", "derived_perform"}:
        return t_map, t_program, t_kind

    return None, None, "none"


def extract_symbolic_map_aliases(program: str) -> set[str]:
    """Extract likely symbolic map variable aliases from COBOL code.

    Pattern is intentionally conservative and generic for CICS BMS symbolic maps,
    where screen variables frequently appear as MXXXXI/MXXXXO tokens.
    """
    source_file = SRC_DIR / f"{program}.cbl"
    if not source_file.exists():
        return set()

    aliases: set[str] = set()
    token_re = re.compile(r"\b(M[A-Z0-9]{2,}(?:I|O))\b", re.IGNORECASE)
    for raw in source_file.read_text(encoding="utf-8", errors="ignore").splitlines():
        if is_cobol_comment_line(raw):
            continue
        for match in token_re.finditer(raw.upper()):
            aliases.add(match.group(1).upper())
    return aliases


def analyze_program_key_flows(program: str) -> tuple[set[str], list[KeyFlowDef]]:
    source_file = SRC_DIR / f"{program}.cbl"
    if not source_file.exists():
        return set(), []

    lines = source_file.read_text(encoding="utf-8", errors="ignore").splitlines()
    states: set[str] = set()
    flows: list[KeyFlowDef] = []

    eval_stack: list[dict[str, str]] = []

    for idx, raw in enumerate(lines):
        if is_cobol_comment_line(raw):
            continue
        line = raw.upper()

        if "END-EVALUATE" in line:
            end_count = line.count("END-EVALUATE")
            for _ in range(end_count):
                if eval_stack:
                    eval_stack.pop()
            continue

        eval_match = EVALUATE_SUBJECT_RE.search(line)
        if eval_match:
            subject = eval_match.group(1).upper()
            if subject == "WC-ESTADO":
                eval_stack.append({"type": "WC_ESTADO", "state": "GLOBAL"})
            elif subject == "EIBAID":
                eval_stack.append({"type": "EIBAID", "state": ""})
            else:
                eval_stack.append({"type": "OTHER", "state": ""})
            continue

        if eval_stack and eval_stack[-1].get("type") == "WC_ESTADO":
            state_match = WHEN_STATE_RE.search(line)
            if state_match and "DFH" not in line:
                current_state = normalize_state_name(state_match.group(1))
                eval_stack[-1]["state"] = current_state
                states.add(current_state)

        state_if_match = IF_STATE_RE.search(line)
        if state_if_match:
            states.add(normalize_state_name(state_if_match.group(1)))

        key_match = AID_WHEN_RE.search(line)
        if not key_match:
            continue

        if not eval_stack or eval_stack[-1].get("type") != "EIBAID":
            continue

        key_name = key_match.group(1).upper()
        if key_name == "ENT":
            key_name = "ENTER"

        block_lines = collect_key_action_block(lines, idx)
        block_text = "\n".join(block_lines).upper()
        target_map_key, target_program, target_kind = extract_navigation_targets_from_key_block(block_text, lines)
        state_name = current_state_from_stack(eval_stack)
        states.add(state_name)
        flows.append(
            KeyFlowDef(
                program=program,
                state_name=state_name,
                key_name=key_name,
                line_hint=idx + 1,
                target_map_key=target_map_key,
                target_program=target_program,
                target_kind=target_kind,
            )
        )

    if not states:
        states.add("GLOBAL")
    return states, flows


def analyze_program_state_field_usages(program: str, input_field_names: list[str]) -> list[StateFieldUsageDef]:
    source_file = SRC_DIR / f"{program}.cbl"
    if not source_file.exists() or not input_field_names:
        return []

    lines = source_file.read_text(encoding="utf-8", errors="ignore").splitlines()
    eval_stack: list[dict[str, str]] = []
    usages: list[StateFieldUsageDef] = []
    seen: set[tuple[str, str, str, int]] = set()

    field_aliases: dict[str, set[str]] = {name: {name, f"{name}I", f"{name}O"} for name in input_field_names}

    # If the map has a single input field, allow symbolic map aliases to bind to it.
    # This keeps behavior conservative while capturing common patterns like MCOMI/MCOMO.
    if len(input_field_names) == 1:
        single = input_field_names[0]
        field_aliases[single].update(extract_symbolic_map_aliases(program))

    field_patterns = {
        field_name: re.compile(
            r"\b(?:" + "|".join(re.escape(alias) for alias in sorted(aliases)) + r")\b",
            re.IGNORECASE,
        )
        for field_name, aliases in field_aliases.items()
        if aliases
    }

    for idx, raw in enumerate(lines):
        if is_cobol_comment_line(raw):
            continue
        line = raw.upper()

        if "END-EVALUATE" in line:
            end_count = line.count("END-EVALUATE")
            for _ in range(end_count):
                if eval_stack:
                    eval_stack.pop()
            continue

        eval_match = EVALUATE_SUBJECT_RE.search(line)
        if eval_match:
            subject = eval_match.group(1).upper()
            if subject == "WC-ESTADO":
                eval_stack.append({"type": "WC_ESTADO", "state": "GLOBAL"})
            elif subject == "EIBAID":
                eval_stack.append({"type": "EIBAID", "state": ""})
            else:
                eval_stack.append({"type": "OTHER", "state": ""})
            continue

        if eval_stack and eval_stack[-1].get("type") == "WC_ESTADO":
            state_match = WHEN_STATE_RE.search(line)
            if state_match and "DFH" not in line:
                eval_stack[-1]["state"] = normalize_state_name(state_match.group(1))

        current_state = current_state_from_stack(eval_stack)
        for field_name, pattern in field_patterns.items():
            match = pattern.search(line)
            if not match:
                continue
            usage_type = infer_field_usage_type(line, match.group(0).upper())
            marker = (current_state, field_name, usage_type, idx + 1)
            if marker in seen:
                continue
            seen.add(marker)
            usages.append(
                StateFieldUsageDef(
                    program=program,
                    state_name=current_state,
                    field_name=field_name,
                    usage_type=usage_type,
                    line_hint=idx + 1,
                )
            )

    return usages


def discover_programs_for_mapset(mapset_name: str) -> list[str]:
    pattern = f"MAPSET('{mapset_name}'"
    command = ["grep", "-Rnl", pattern, str(SRC_DIR)]
    result = subprocess.run(command, capture_output=True, text=True, check=False)
    programs: list[str] = []
    for line in result.stdout.splitlines():
        p = pathlib.Path(line)
        if p.suffix.lower() != ".cbl":
            continue
        programs.append(p.stem.upper())
    programs = sorted(set(programs))
    return programs


def classify_field_type(attr: str) -> str:
    up = attr.upper()
    if "UNPROT" in up:
        return "input"
    return "protected"


def clamp_confidence(value: float) -> float:
    return max(0.0, min(1.0, value))


def literal_end_column(lit: LiteralDef) -> int:
    base_col = lit.col if lit.col is not None else 0
    return base_col + max(0, len(lit.text) - 1)


def is_semantic_literal(text: str) -> bool:
    stripped = text.strip()
    if not stripped:
        return False
    # Exclude box-drawing/separator literals that are mostly punctuation.
    if len(re.findall(r"[A-Z0-9]", stripped.upper())) < 2:
        return False
    return True


def infer_literal_field_links(fields: list[FieldDef], literals: list[LiteralDef]) -> list[LiteralFieldLink]:
    """Infer UiLiteral -> BmsField label links using positional evidence.

    Strategy order per input field:
    1) Same row, literal ends before field start (closest left text).
    2) Previous row, literal horizontally aligned with field start.
    3) Header propagation: literal in recent rows above with column overlap.
    """
    links: list[LiteralFieldLink] = []

    usable_literals = [
        lit
        for lit in literals
        if lit.row is not None and lit.col is not None and lit.text.strip() and is_semantic_literal(lit.text)
    ]

    row_index: dict[int, list[LiteralDef]] = {}
    for lit in usable_literals:
        assert lit.row is not None
        row_index.setdefault(lit.row, []).append(lit)

    for field in fields:
        if classify_field_type(field.attr) != "input":
            continue
        if field.row is None or field.col is None:
            continue

        candidates: list[LiteralFieldLink] = []

        best_literal: LiteralDef | None = None
        best_gap: int | None = None

        # Strategy 1: closest literal on the same row and to the left.
        for lit in row_index.get(field.row, []):
            lit_end = literal_end_column(lit)
            gap = field.col - lit_end
            if gap < 0:
                continue
            if best_gap is None or gap < best_gap:
                best_gap = gap
                best_literal = lit

        if best_literal is not None:
            assert best_gap is not None
            candidates.append(
                LiteralFieldLink(
                    literal_name=best_literal.name,
                    field_name=field.name,
                    strategy="same_row_left",
                    confidence=clamp_confidence(0.98 - (best_gap * 0.02)),
                )
            )

        # Strategy 2: previous-row hint around the field column.
        prev_row_candidates: list[tuple[int, LiteralDef]] = []
        for lit in row_index.get(field.row - 1, []):
            lit_end = literal_end_column(lit)
            if lit.col <= field.col <= lit_end + 2:
                distance = min(abs(field.col - lit.col), abs(field.col - lit_end))
                prev_row_candidates.append((distance, lit))

        if prev_row_candidates:
            prev_row_candidates.sort(key=lambda x: x[0])
            candidates.append(
                LiteralFieldLink(
                    literal_name=prev_row_candidates[0][1].name,
                    field_name=field.name,
                    strategy="prev_row_aligned",
                    confidence=clamp_confidence(0.88 - (prev_row_candidates[0][0] * 0.015)),
                )
            )

        # Strategy 3: header propagation for tabular blocks.
        # Scan up to 4 rows above and pick nearest overlapping header literal.
        header_candidates: list[tuple[int, int, LiteralDef]] = []
        for row_offset in range(1, 5):
            header_row = field.row - row_offset
            for lit in row_index.get(header_row, []):
                lit_end = literal_end_column(lit)
                if field.col < lit.col - 1 or field.col > lit_end + 1:
                    continue
                edge_distance = min(abs(field.col - lit.col), abs(field.col - lit_end))
                header_candidates.append((row_offset, edge_distance, lit))

        if header_candidates:
            header_candidates.sort(key=lambda x: (x[0], x[1], x[2].name))
            best_header = header_candidates[0]
            row_offset, edge_distance, lit = best_header
            candidates.append(
                LiteralFieldLink(
                    literal_name=lit.name,
                    field_name=field.name,
                    strategy="header_column_propagated",
                    confidence=clamp_confidence(0.84 - (row_offset * 0.04) - (edge_distance * 0.01)),
                )
            )

        if not candidates:
            continue

        # Keep the strongest candidate per field; preserve deterministic tie-break.
        candidates.sort(key=lambda c: (-c.confidence, c.strategy, c.literal_name))
        links.append(candidates[0])

    return links


def to_int_or_zero(value: int | None) -> int:
    return value if value is not None else 0


def make_map_key(mapset: str, map_name: str) -> str:
    return f"{mapset}::{map_name}"


def make_map_scope(mapset: str, map_name: str) -> str:
    return f"{mapset}__{map_name}"


def apply_ingestion(bms_file: pathlib.Path, mapset: str, map_name: str, map_key: str, map_scope: str, fields: list[FieldDef], literals: list[LiteralDef], keys: list[KeyDef], programs: list[str]) -> None:
    source_rel = str(bms_file.relative_to(REPO_ROOT)).replace("\\", "/")
    ingestion_tag = "copilot-bms-ingestion-2026-06-24"

    core_parts: list[str] = [
        f"MERGE (ms:BmsMapset {{name:{cypher_quote(mapset)}}})",
        f"SET ms += {{sourceFile:{cypher_quote(source_rel)}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}",
        f"MERGE (m:BmsMap {{name:{cypher_quote(map_key)}}})",
        f"SET m += {{mapName:{cypher_quote(map_name)}, mapsetName:{cypher_quote(mapset)}, sourceFile:{cypher_quote(source_rel)}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}",
        "MERGE (ms)-[:HAS_MAP]->(m)",
    ]

    for program in programs:
        core_parts.extend(
            [
                f"MERGE (p_{program}:Program {{name:{cypher_quote(program)}}})",
                f"SET p_{program} += {{sourceFile:{cypher_quote('src/' + program + '.cbl')}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}",
                f"MERGE (p_{program})-[:PRESENTS_MAP]->(m)",
                f"MERGE (p_{program})-[:USES_MAPSET]->(ms)",
            ]
        )

    core_query = "\n".join(x for x in core_parts if x) + "\nRETURN 'core_ok' AS status"
    run_cypher(core_query)

    for field in fields:
        position = f"{to_int_or_zero(field.row)},{to_int_or_zero(field.col)}"
        props = [
            f"position:{cypher_quote(position)}",
            f"length:{to_int_or_zero(field.length)}",
            f"attribute:{cypher_quote(field.attr)}",
            f"type:{cypher_quote(classify_field_type(field.attr))}",
            f"mapName:{cypher_quote(map_name)}",
            f"mapsetName:{cypher_quote(mapset)}",
            f"mapKey:{cypher_quote(map_key)}",
            f"sourceFile:{cypher_quote(source_rel)}",
            "reviewStatus:'pending_human_review'",
            "reviewSource:'auto-ingestion'",
            f"ingestion:{cypher_quote(ingestion_tag)}",
        ]
        field_query = (
            f"MATCH (m:BmsMap {{name:{cypher_quote(map_key)}}})\n"
            f"MERGE (f:BmsField {{name:{cypher_quote(field.name)}, mapKey:{cypher_quote(map_key)}}})\n"
            f"SET f += {{{', '.join(props)}}}\n"
            "MERGE (m)-[:HAS_FIELD]->(f)\n"
            "RETURN 'field_ok' AS status"
        )
        run_cypher(field_query)

    for lit in literals:
        pos = f"{lit.row},{lit.col}" if lit.row is not None and lit.col is not None else ""
        lit_length = len(lit.text)
        lit_row = lit.row if lit.row is not None else 0
        lit_col = lit.col if lit.col is not None else 0
        lit_query = (
            f"MATCH (m:BmsMap {{name:{cypher_quote(map_key)}}})\n"
            f"MERGE (l:UiLiteral {{name:{cypher_quote(lit.name)}, mapKey:{cypher_quote(map_key)}}})\n"
            f"SET l += {{text:{cypher_quote(lit.text)}, position:{cypher_quote(pos)}, row:{lit_row}, column:{lit_col}, length:{lit_length}, mapName:{cypher_quote(map_name)}, mapsetName:{cypher_quote(mapset)}, sourceFile:{cypher_quote(source_rel)}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}\n"
            "MERGE (m)-[:DISPLAYS_LITERAL]->(l)\n"
            "RETURN 'literal_ok' AS status"
        )
        run_cypher(lit_query)

    inferred_links = infer_literal_field_links(fields, literals)
    for link in inferred_links:
        link_query = (
            f"MATCH (l:UiLiteral {{name:{cypher_quote(link.literal_name)}, mapKey:{cypher_quote(map_key)}}})\n"
            f"MATCH (f:BmsField {{name:{cypher_quote(link.field_name)}, mapKey:{cypher_quote(map_key)}}})\n"
            "MERGE (l)-[r:LABELS_FIELD]->(f)\n"
            f"SET r += {{inference:'auto-positional-v2', strategy:{cypher_quote(link.strategy)}, confidence:{link.confidence:.4f}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}\n"
            "RETURN 'label_link_ok' AS status"
        )
        run_cypher(link_query)

    # Functionality and per-key subfunctionality.
    func_name = f"{map_scope}_FUNCTIONALITY"
    func_query = (
        f"MERGE (f:Functionality {{name:{cypher_quote(func_name)}}})\n"
        f"SET f += {{description:{cypher_quote('Functionalidad derivada de ' + map_scope)}, objective:{cypher_quote('Representar comportamiento funcional del mapa ' + map_scope)}, sourceFile:{cypher_quote(source_rel)}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}\n"
        "RETURN 'func_ok' AS status"
    )
    run_cypher(func_query)

    # Link first program as implementation anchor if available.
    if programs:
        impl_query = (
            f"MATCH (p:Program {{name:{cypher_quote(programs[0])}}}), (f:Functionality {{name:{cypher_quote(func_name)}}})\n"
            "MERGE (p)-[:IMPLEMENTS_FUNCTIONALITY]->(f)\n"
            "RETURN 'impl_ok' AS status"
        )
        run_cypher(impl_query)

    for key in keys:
        sub_name = f"{map_scope}__{key.key_name}_{key.action}"
        key_query = (
            f"MATCH (m:BmsMap {{name:{cypher_quote(map_key)}}}), (f:Functionality {{name:{cypher_quote(func_name)}}})\n"
            f"MERGE (k:UiFunctionKey {{name:{cypher_quote(key.key_name)}, mapKey:{cypher_quote(map_key)}}})\n"
            f"SET k += {{mapName:{cypher_quote(map_name)}, mapsetName:{cypher_quote(mapset)}, description:{cypher_quote(key.key_name + ' ' + key.action)}, sourceFile:{cypher_quote(source_rel)}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}\n"
            f"MERGE (s:SubFunctionality {{name:{cypher_quote(sub_name)}}})\n"
            f"SET s += {{description:{cypher_quote('Subfuncionalidad de tecla ' + key.key_name)}, objective:{cypher_quote('Accion ' + key.action + ' disparada por ' + key.key_name)}, sourceFile:{cypher_quote(source_rel)}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}\n"
            "MERGE (m)-[:SUPPORTS_KEY]->(k)\n"
            "MERGE (f)-[:HAS_SUBFUNCTIONALITY]->(s)\n"
            "MERGE (k)-[:TRIGGERS_SUBFUNCTIONALITY]->(s)\n"
            "RETURN 'key_ok' AS status"
        )
        run_cypher(key_query)

    key_to_subfunction: dict[str, str] = {}
    for key in keys:
        key_to_subfunction.setdefault(key.key_name, f"{map_scope}__{key.key_name}_{key.action}")

    input_field_names = [field.name for field in fields if classify_field_type(field.attr) == "input"]

    for program in programs:
        cleanup_query = (
            f"MATCH (st:ProgramState {{programName:{cypher_quote(program)}}})-[r:ENABLES_KEY]->(k:UiFunctionKey {{mapKey:{cypher_quote(map_key)}}})\n"
            "DELETE r\n"
            "RETURN 'cleanup_enable_key_ok' AS status"
        )
        run_cypher(cleanup_query)

        cleanup_exec_query = (
            f"MATCH (st:ProgramState {{programName:{cypher_quote(program)}}})-[r:EXECUTES_SUBFUNCTIONALITY]->(s:SubFunctionality)\n"
            f"WHERE s.name STARTS WITH {cypher_quote(map_scope + '__')}\n"
            "DELETE r\n"
            "RETURN 'cleanup_exec_ok' AS status"
        )
        run_cypher(cleanup_exec_query)

        cleanup_transition_query = (
            f"MATCH (t:NavigationTransition {{sourceProgram:{cypher_quote(program)}, sourceMapKey:{cypher_quote(map_key)}}})\n"
            "DETACH DELETE t\n"
            "RETURN 'cleanup_transition_ok' AS status"
        )
        run_cypher(cleanup_transition_query)

        cleanup_field_usage_query = (
            f"MATCH (st:ProgramState {{programName:{cypher_quote(program)}}})-[r:READS_INPUT|VALIDATES_INPUT|WRITES_FIELD]->(f:BmsField {{mapKey:{cypher_quote(map_key)}}})\n"
            "DELETE r\n"
            "RETURN 'cleanup_field_usage_ok' AS status"
        )
        run_cypher(cleanup_field_usage_query)

        states, flows = analyze_program_key_flows(program)
        for state_name in states:
            state_node_name = f"{program}__{state_name}"
            state_query = (
                f"MATCH (p:Program {{name:{cypher_quote(program)}}})\n"
                f"MERGE (st:ProgramState {{name:{cypher_quote(state_node_name)}}})\n"
                f"SET st += {{programName:{cypher_quote(program)}, stateName:{cypher_quote(state_name)}, sourceFile:{cypher_quote('src/' + program + '.cbl')}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}\n"
                "MERGE (p)-[:HAS_STATE]->(st)\n"
                "RETURN 'state_ok' AS status"
            )
            run_cypher(state_query)

        for flow in flows:
            key_sub = key_to_subfunction.get(flow.key_name)
            flow_node_name = f"{flow.program}__{map_key}__{flow.state_name}__{flow.key_name}__L{flow.line_hint}"
            flow_query = (
                f"MATCH (st:ProgramState {{name:{cypher_quote(flow.program + '__' + flow.state_name)}}})\n"
                f"MATCH (k:UiFunctionKey {{name:{cypher_quote(flow.key_name)}, mapKey:{cypher_quote(map_key)}}})\n"
                f"MERGE (t:NavigationTransition {{name:{cypher_quote(flow_node_name)}}})\n"
                f"SET t += {{sourceProgram:{cypher_quote(flow.program)}, sourceMapKey:{cypher_quote(map_key)}, stateName:{cypher_quote(flow.state_name)}, keyName:{cypher_quote(flow.key_name)}, lineHint:{flow.line_hint}, sourceFile:{cypher_quote('src/' + flow.program + '.cbl')}, targetMapKey:{cypher_quote(flow.target_map_key or '')}, targetProgram:{cypher_quote(flow.target_program or '')}, targetKind:{cypher_quote(flow.target_kind)}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}\n"
                "MERGE (st)-[:ENABLES_KEY]->(k)\n"
                "MERGE (st)-[:HAS_KEY_RULE]->(t)\n"
                "MERGE (k)-[:EMITS_TRANSITION]->(t)\n"
                "RETURN 'flow_ok' AS status"
            )
            run_cypher(flow_query)

            if key_sub:
                sub_query = (
                    f"MATCH (st:ProgramState {{name:{cypher_quote(flow.program + '__' + flow.state_name)}}})\n"
                    f"MATCH (t:NavigationTransition {{name:{cypher_quote(flow_node_name)}}})\n"
                    f"MATCH (s:SubFunctionality {{name:{cypher_quote(key_sub)}}})\n"
                    f"MATCH (p:Program {{name:{cypher_quote(flow.program)}}})\n"
                    f"MATCH (m:BmsMap {{name:{cypher_quote(map_key)}}})\n"
                    "MERGE (st)-[:EXECUTES_SUBFUNCTIONALITY]->(s)\n"
                    "MERGE (t)-[:EXECUTES]->(s)\n"
                    "MERGE (m)-[:HAS_SUBFUNCTIONALITY]->(s)\n"
                    "MERGE (s)-[:IMPLEMENTED_BY]->(p)\n"
                    "RETURN 'sub_link_ok' AS status"
                )
                run_cypher(sub_query)

            if flow.target_map_key:
                target_mapset = flow.target_map_key.split("::", 1)[0]
                target_map_name = flow.target_map_key.split("::", 1)[1]
                map_query = (
                    f"MATCH (t:NavigationTransition {{name:{cypher_quote(flow_node_name)}}})\n"
                    f"MERGE (tm:BmsMap {{name:{cypher_quote(flow.target_map_key)}}})\n"
                    f"SET tm += {{mapName:{cypher_quote(target_map_name)}, mapsetName:{cypher_quote(target_mapset)}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}\n"
                    "MERGE (t)-[:TO_MAP]->(tm)\n"
                    "RETURN 'target_map_ok' AS status"
                )
                run_cypher(map_query)

            if flow.target_program:
                program_query = (
                    f"MATCH (t:NavigationTransition {{name:{cypher_quote(flow_node_name)}}})\n"
                    f"MERGE (tp:Program {{name:{cypher_quote(flow.target_program)}}})\n"
                    f"SET tp += {{sourceFile:{cypher_quote('src/' + flow.target_program + '.cbl')}, reviewStatus:'pending_human_review', reviewSource:'auto-ingestion', ingestion:{cypher_quote(ingestion_tag)}}}\n"
                    "MERGE (t)-[:TO_PROGRAM]->(tp)\n"
                    "RETURN 'target_program_ok' AS status"
                )
                run_cypher(program_query)

        field_usages = analyze_program_state_field_usages(program, input_field_names)
        grouped_usage: dict[tuple[str, str, str], list[int]] = {}
        for usage in field_usages:
            if usage.usage_type not in {"READS_INPUT", "VALIDATES_INPUT", "WRITES_FIELD"}:
                continue
            marker = (usage.state_name, usage.field_name, usage.usage_type)
            grouped_usage.setdefault(marker, []).append(usage.line_hint)

        for (state_name, field_name, relation_type), line_hints in grouped_usage.items():
            if not line_hints:
                continue
            first_hint = min(line_hints)
            last_hint = max(line_hints)
            evidence_count = len(line_hints)

            field_usage_query = (
                f"MATCH (st:ProgramState {{name:{cypher_quote(program + '__' + state_name)}}})\n"
                f"MATCH (f:BmsField {{name:{cypher_quote(field_name)}, mapKey:{cypher_quote(map_key)}}})\n"
                f"MERGE (st)-[r:{relation_type}]->(f)\n"
                f"SET r.firstLineHint={first_hint}, r.lastLineHint={last_hint}, r.evidenceCount={evidence_count}, r.sourceFile={cypher_quote('src/' + program + '.cbl')}, r.reviewStatus='pending_human_review', r.reviewSource='auto-ingestion', r.ingestion={cypher_quote(ingestion_tag)}\n"
                "RETURN 'field_usage_ok' AS status"
            )
            run_cypher(field_usage_query)


def resolve_bms_path(path_str: str) -> pathlib.Path:
    bms_file = pathlib.Path(path_str)
    if not bms_file.is_absolute():
        bms_file = (REPO_ROOT / bms_file).resolve()
    return bms_file


def parse_one_bms(bms_file: pathlib.Path) -> ParsedBms:
    declared_mapset, map_name, fields, literals, keys = parse_bms(bms_file)
    if not declared_mapset or not map_name:
        raise ValueError(f"Unable to detect mapset/map from {bms_file}")

    # Prefer declared DFHMSD name, but fallback to filename stem when DFHMSD
    # appears to be stale and no programs reference it.
    resolved_mapset = declared_mapset
    programs = discover_programs_for_mapset(resolved_mapset)
    file_stem_mapset = bms_file.stem.upper()
    if not programs and file_stem_mapset != declared_mapset:
        fallback_programs = discover_programs_for_mapset(file_stem_mapset)
        if fallback_programs:
            resolved_mapset = file_stem_mapset
            programs = fallback_programs

    map_key = make_map_key(mapset=resolved_mapset, map_name=map_name)
    map_scope = make_map_scope(mapset=resolved_mapset, map_name=map_name)
    if not keys and programs:
        keys = extract_program_aid_keys(programs)
    return ParsedBms(
        declared_mapset_name=declared_mapset,
        mapset_name=resolved_mapset,
        map_name=map_name,
        map_key=map_key,
        map_scope=map_scope,
        fields=fields,
        literals=literals,
        keys=keys,
        programs=programs,
        bms_file=bms_file,
    )


def print_summary(parsed: ParsedBms) -> None:
    print(f"bms_file={parsed.bms_file}")
    print(f"mapset={parsed.mapset_name}")
    print(f"map={parsed.map_name}")
    print(f"map_key={parsed.map_key}")
    print(f"programs={','.join(parsed.programs) if parsed.programs else 'none'}")
    print(f"fields={len(parsed.fields)}")
    print(f"literals={len(parsed.literals)}")
    print(f"function_keys={len(parsed.keys)}")


def load_batch_paths(batch_file: pathlib.Path) -> list[pathlib.Path]:
    if not batch_file.exists():
        raise ValueError(f"Batch file not found: {batch_file}")

    text = batch_file.read_text(encoding="utf-8", errors="ignore").strip()
    entries: list[str] = []

    if batch_file.suffix.lower() == ".json":
        payload = json.loads(text)
        if not isinstance(payload, list):
            raise ValueError("JSON batch file must be a list of BMS file paths")
        for item in payload:
            if not isinstance(item, str):
                raise ValueError("JSON batch file values must be strings")
            entries.append(item)
    else:
        for raw in text.splitlines():
            line = raw.strip()
            if not line or line.startswith("#"):
                continue
            entries.append(line)

    if not entries:
        raise ValueError("Batch file does not contain any BMS entries")

    paths = [resolve_bms_path(entry) for entry in entries]
    return paths


def ingest_with_retry(parsed: ParsedBms, max_retries: int) -> None:
    attempts = max_retries + 1
    last_error: Exception | None = None
    for attempt in range(1, attempts + 1):
        try:
            apply_ingestion(
                bms_file=parsed.bms_file,
                mapset=parsed.mapset_name,
                map_name=parsed.map_name,
                map_key=parsed.map_key,
                map_scope=parsed.map_scope,
                fields=parsed.fields,
                literals=parsed.literals,
                keys=parsed.keys,
                programs=parsed.programs,
            )
            return
        except Exception as exc:  # noqa: BLE001
            last_error = exc
            if attempt >= attempts:
                break
            sleep_seconds = min(2 ** (attempt - 1), 8)
            time.sleep(sleep_seconds)
    assert last_error is not None
    raise last_error


def process_one(path: pathlib.Path, apply: bool, max_retries: int) -> dict[str, Any]:
    started = datetime.now(timezone.utc)
    result: dict[str, Any] = {
        "bmsFile": str(path),
        "status": "failed",
        "startedAt": started.isoformat(timespec="seconds"),
    }
    try:
        parsed = parse_one_bms(path)
        result.update(
            {
                "mapset": parsed.mapset_name,
                "map": parsed.map_name,
                "mapKey": parsed.map_key,
                "programs": parsed.programs,
                "fields": len(parsed.fields),
                "literals": len(parsed.literals),
                "functionKeys": len(parsed.keys),
            }
        )
        if apply:
            ingest_with_retry(parsed=parsed, max_retries=max_retries)
        result["status"] = "ok"
    except Exception as exc:  # noqa: BLE001
        result["error"] = str(exc)
        result["traceback"] = traceback.format_exc()
    finally:
        ended = datetime.now(timezone.utc)
        result["endedAt"] = ended.isoformat(timespec="seconds")
    return result


def default_report_path() -> pathlib.Path:
    REPORT_DIR.mkdir(parents=True, exist_ok=True)
    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    return REPORT_DIR / f"bms-batch-report-{timestamp}.json"


def write_report(report_path: pathlib.Path, report_payload: dict[str, Any]) -> None:
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report_payload, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")


def run_single_mode(args: argparse.Namespace) -> int:
    assert args.bms_file
    bms_file = resolve_bms_path(args.bms_file)
    if not bms_file.exists():
        raise SystemExit(f"BMS file not found: {bms_file}")

    parsed = parse_one_bms(bms_file)
    print_summary(parsed)

    if not args.apply:
        return 0

    ingest_with_retry(parsed=parsed, max_retries=args.max_retries)
    print("ingestion=ok")
    return 0


def run_batch_mode(args: argparse.Namespace) -> int:
    assert args.batch_file
    batch_file = pathlib.Path(args.batch_file)
    if not batch_file.is_absolute():
        batch_file = (REPO_ROOT / batch_file).resolve()

    bms_paths = load_batch_paths(batch_file)
    total = len(bms_paths)
    workers = max(1, args.workers)
    mode = "apply" if args.apply else "dry-run"
    print(f"batch_mode={mode}")
    print(f"batch_items={total}")
    print(f"workers={workers}")
    print(f"max_retries={args.max_retries}")

    results: list[dict[str, Any]] = []

    if workers == 1:
        for item in bms_paths:
            one = process_one(path=item, apply=args.apply, max_retries=args.max_retries)
            results.append(one)
            print(f"item={one.get('bmsFile')} status={one.get('status')} map={one.get('map', 'n/a')} mapKey={one.get('mapKey', 'n/a')}")
            if args.fail_fast and one.get("status") != "ok":
                break
    else:
        with concurrent.futures.ThreadPoolExecutor(max_workers=workers) as executor:
            future_to_path = {
                executor.submit(process_one, path=item, apply=args.apply, max_retries=args.max_retries): item
                for item in bms_paths
            }
            for future in concurrent.futures.as_completed(future_to_path):
                one = future.result()
                results.append(one)
                print(f"item={one.get('bmsFile')} status={one.get('status')} map={one.get('map', 'n/a')} mapKey={one.get('mapKey', 'n/a')}")
                if args.fail_fast and one.get("status") != "ok":
                    for pending in future_to_path:
                        if not pending.done():
                            pending.cancel()
                    break

    success = sum(1 for item in results if item.get("status") == "ok")
    failed = sum(1 for item in results if item.get("status") != "ok")

    report_payload: dict[str, Any] = {
        "generatedAt": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "mode": mode,
        "batchFile": str(batch_file),
        "workers": workers,
        "maxRetries": args.max_retries,
        "summary": {
            "total": len(results),
            "success": success,
            "failed": failed,
        },
        "results": results,
    }

    report_path = pathlib.Path(args.report_file).resolve() if args.report_file else default_report_path()
    write_report(report_path=report_path, report_payload=report_payload)
    print(f"report={report_path}")

    if failed > 0:
        return 2
    return 0


def main() -> int:
    parser = argparse.ArgumentParser(description="Ingest BMS maps into Neo4j")
    source_group = parser.add_mutually_exclusive_group(required=True)
    source_group.add_argument("--bms-file", help="Path to one .bms file (relative to repo root or absolute)")
    source_group.add_argument("--batch-file", help="Text or JSON file with .bms paths to process")

    parser.add_argument("--apply", action="store_true", help="Execute ingestion against Neo4j")
    parser.add_argument("--workers", type=int, default=1, help="Parallel workers for --batch-file mode")
    parser.add_argument("--max-retries", type=int, default=1, help="Retries per map on transient failures")
    parser.add_argument("--fail-fast", action="store_true", help="Stop batch at first failed item")
    parser.add_argument("--report-file", help="Path for JSON report (batch mode)")
    args = parser.parse_args()

    if args.bms_file:
        return run_single_mode(args)
    return run_batch_mode(args)


if __name__ == "__main__":
    raise SystemExit(main())
