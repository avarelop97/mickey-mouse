#!/usr/bin/env python3
"""Discover COBOL artifacts that are still missing from the Neo4j graph.

This script compares repository sources with the live Neo4j container and
creates a JSON report with backlog candidates for ingestion.
"""

from __future__ import annotations

import json
import os
import pathlib
import re
import subprocess
from datetime import datetime, timezone

ROOT = pathlib.Path(__file__).resolve().parents[3]
SRC_DIR = ROOT / "src"
CPY_DIR = ROOT / "cpy"
REPORT_DIR = ROOT / "infra" / "neo4j" / "reports"

CONTAINER = os.environ.get("NEO4J_CONTAINER", "neo4j-local")
PASSWORD = os.environ.get("NEO4J_PASSWORD", "CambiaEstaClave123!")
DATABASE = os.environ.get("NEO4J_DATABASE", "neo4j")

COPY_RE = re.compile(r"^\s*COPY\s+([A-Z0-9_-]+)\b", re.IGNORECASE)


def run_cypher(query: str) -> list[str]:
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
    lines: list[str] = []
    for raw in completed.stdout.splitlines():
        line = raw.strip()
        if not line or line.startswith("ready to start consuming query"):
            continue
        lines.append(line)
    return lines


def parse_single_column(lines: list[str]) -> set[str]:
    values: set[str] = set()
    for line in lines[1:]:
        item = line.strip()
        if item.startswith('"') and item.endswith('"'):
            item = item[1:-1]
        if item:
            values.add(item.upper())
    return values


def normalize_fixed_format(raw_line: str) -> str:
    # COBOL fixed format: ignore sequence columns 1-6 and id columns 73-80.
    if len(raw_line) <= 6:
        return ""
    return raw_line[6:72]


def discover_copy_references() -> dict[str, dict[str, list[int]]]:
    refs: dict[str, dict[str, list[int]]] = {}
    for cobol_file in sorted(SRC_DIR.glob("*.cbl")):
        program = cobol_file.stem.upper()
        refs[program] = {}
        with cobol_file.open("r", encoding="utf-8", errors="ignore") as handle:
            for line_number, raw_line in enumerate(handle, start=1):
                logical_line = normalize_fixed_format(raw_line)
                match = COPY_RE.match(logical_line)
                if not match:
                    continue
                copybook = match.group(1).upper()
                refs[program].setdefault(copybook, []).append(line_number)
    return refs


def main() -> int:
    source_programs = {path.stem.upper() for path in SRC_DIR.glob("*.cbl")}
    source_copybooks = {path.stem.upper() for path in CPY_DIR.glob("*.cpy")}

    graph_programs = parse_single_column(
        run_cypher("MATCH (p:Program) RETURN p.name ORDER BY p.name;")
    )
    graph_copybooks = parse_single_column(
        run_cypher("MATCH (c:Copybook) RETURN c.name ORDER BY c.name;")
    )

    includes_rows = run_cypher(
        "MATCH (p:Program)-[:INCLUDES_COPYBOOK]->(c:Copybook) "
        "RETURN p.name, c.name ORDER BY p.name, c.name;"
    )
    includes_pairs: set[tuple[str, str]] = set()
    for row in includes_rows[1:]:
        program_name, copybook_name = row.split(", ", 1)
        includes_pairs.add((program_name.strip('"').upper(), copybook_name.strip('"').upper()))

    copy_refs = discover_copy_references()

    missing_program_nodes = sorted(source_programs - graph_programs)
    missing_copybook_nodes = sorted(source_copybooks - graph_copybooks)

    referenced_copybooks = {
        copybook for per_program in copy_refs.values() for copybook in per_program.keys()
    }
    referenced_copybooks_not_modeled = sorted(referenced_copybooks - graph_copybooks)

    missing_include_edges: list[dict[str, object]] = []
    for program, refs in sorted(copy_refs.items()):
        if program not in graph_programs:
            continue
        for copybook, evidence_lines in sorted(refs.items()):
            if (program, copybook) in includes_pairs:
                continue
            missing_include_edges.append(
                {
                    "programName": program,
                    "copybookName": copybook,
                    "evidenceFile": f"src/{program}.cbl",
                    "evidenceLines": evidence_lines,
                }
            )

    timestamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    report = {
        "generatedAt": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "container": CONTAINER,
        "database": DATABASE,
        "summary": {
            "sourcePrograms": len(source_programs),
            "graphPrograms": len(graph_programs),
            "missingProgramNodes": len(missing_program_nodes),
            "sourceCopybooks": len(source_copybooks),
            "graphCopybooks": len(graph_copybooks),
            "missingCopybookNodes": len(missing_copybook_nodes),
            "referencedCopybooksNotModeled": len(referenced_copybooks_not_modeled),
            "missingIncludesEdges": len(missing_include_edges),
        },
        "missingProgramNodes": missing_program_nodes,
        "missingCopybookNodes": missing_copybook_nodes,
        "referencedCopybooksNotModeled": referenced_copybooks_not_modeled,
        "missingIncludesEdges": missing_include_edges,
    }

    REPORT_DIR.mkdir(parents=True, exist_ok=True)
    report_path = REPORT_DIR / f"discovery-missing-nodes-{timestamp}.json"
    report_path.write_text(json.dumps(report, indent=2, ensure_ascii=True) + "\n", encoding="utf-8")

    print(report_path)
    print(json.dumps(report["summary"], ensure_ascii=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
