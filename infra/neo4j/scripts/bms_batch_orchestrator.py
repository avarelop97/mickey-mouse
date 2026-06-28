#!/usr/bin/env python3
"""Batch orchestrator for BMS map analysis and Neo4j ingestion.

This script wraps ingest_bms_map.py with persistent batch state, resume support,
and phase-separated concurrency:
- Phase A: analysis (dry-run parse and evidence extraction)
- Phase B: Neo4j apply (idempotent MERGE writes)

Usage examples:
  python3 infra/neo4j/scripts/bms_batch_orchestrator.py \
      --list-file docs/batch/my-maps.txt \
      --analysis-workers 8 \
      --neo4j-workers 4 \
      --apply

  python3 infra/neo4j/scripts/bms_batch_orchestrator.py \
      --list-file docs/batch/my-maps.txt \
      --resume \
      --apply
"""

from __future__ import annotations

import argparse
import csv
import os
import pathlib
import re
import threading
from concurrent.futures import ThreadPoolExecutor, as_completed
from dataclasses import dataclass
from datetime import datetime, timezone
from typing import Any

import ingest_bms_map


REPO_ROOT = pathlib.Path(__file__).resolve().parents[3]
BATCH_DIR = REPO_ROOT / "docs" / "batch"

STATUS_COLUMNS = [
    "mapName",
    "bmsPath",
    "status",
    "phase",
    "startedAt",
    "finishedAt",
    "attempts",
    "lastError",
    "mapset",
    "map",
    "mapKey",
    "fields",
    "literals",
    "functionKeys",
    "programCount",
    "primaryProgram",
    "graphFields",
    "graphInputFields",
    "graphLiterals",
    "graphLabelLinks",
    "graphKeyChains",
    "graphTransfers",
    "graphPresenterLinks",
    "qualityStatus",
    "qualityFindings",
    "qualityWarnings",
    "visualizationQueryFile",
    "reviewRequired",
    "notes",
]

INT_RE = re.compile(r"-?\d+")


@dataclass
class BatchConfig:
    list_file: pathlib.Path
    run_id: str
    status_file: pathlib.Path
    summary_file: pathlib.Path
    analysis_workers: int
    neo4j_workers: int
    apply: bool
    resume: bool
    max_retries: int


def now_utc() -> str:
    return datetime.now(timezone.utc).isoformat(timespec="seconds")


def sanitize_cell(value: Any) -> str:
    if value is None:
        return ""
    text = str(value)
    return text.replace("\t", " ").replace("\n", " ").strip()


def make_default_record(map_name: str, bms_path: str) -> dict[str, str]:
    return {
        "mapName": map_name,
        "bmsPath": bms_path,
        "status": "pending",
        "phase": "queued",
        "startedAt": "",
        "finishedAt": "",
        "attempts": "0",
        "lastError": "",
        "mapset": "",
        "map": "",
        "mapKey": "",
        "fields": "",
        "literals": "",
        "functionKeys": "",
        "programCount": "",
        "primaryProgram": "",
        "graphFields": "",
        "graphInputFields": "",
        "graphLiterals": "",
        "graphLabelLinks": "",
        "graphKeyChains": "",
        "graphTransfers": "",
        "graphPresenterLinks": "",
        "qualityStatus": "pending",
        "qualityFindings": "",
        "qualityWarnings": "",
        "visualizationQueryFile": "",
        "reviewRequired": "false",
        "notes": "",
    }


def ensure_batch_dir() -> None:
    BATCH_DIR.mkdir(parents=True, exist_ok=True)


def parse_map_list(list_file: pathlib.Path) -> list[tuple[str, str]]:
    entries: list[tuple[str, str]] = []
    seen: set[str] = set()

    for raw in list_file.read_text(encoding="utf-8", errors="ignore").splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue

        candidate = pathlib.Path(line)
        if not candidate.is_absolute():
            candidate = (REPO_ROOT / line).resolve()

        if candidate.suffix.lower() != ".bms":
            candidate = candidate.with_suffix(".bms")

        if not candidate.exists():
            raise FileNotFoundError(f"BMS file not found: {candidate}")

        map_name = candidate.stem.upper()
        if map_name in seen:
            continue
        seen.add(map_name)

        rel_path = candidate.relative_to(REPO_ROOT).as_posix()
        entries.append((map_name, rel_path))

    if not entries:
        raise ValueError("List file does not contain valid BMS entries")
    return entries


def load_status(status_file: pathlib.Path) -> dict[str, dict[str, str]]:
    if not status_file.exists():
        return {}

    records: dict[str, dict[str, str]] = {}
    with status_file.open("r", encoding="utf-8", newline="") as fh:
        reader = csv.DictReader(fh, delimiter="\t")
        for row in reader:
            map_name = sanitize_cell(row.get("mapName", "")).upper()
            if not map_name:
                continue
            clean = {col: sanitize_cell(row.get(col, "")) for col in STATUS_COLUMNS}
            records[map_name] = clean
    return records


def write_status(status_file: pathlib.Path, records: dict[str, dict[str, str]]) -> None:
    status_file.parent.mkdir(parents=True, exist_ok=True)
    with status_file.open("w", encoding="utf-8", newline="") as fh:
        writer = csv.DictWriter(fh, fieldnames=STATUS_COLUMNS, delimiter="\t")
        writer.writeheader()
        for map_name in sorted(records.keys()):
            row = {col: sanitize_cell(records[map_name].get(col, "")) for col in STATUS_COLUMNS}
            writer.writerow(row)


def init_records(config: BatchConfig) -> dict[str, dict[str, str]]:
    list_entries = parse_map_list(config.list_file)
    existing = load_status(config.status_file) if config.resume else {}

    records: dict[str, dict[str, str]] = {}
    for map_name, rel_path in list_entries:
        if map_name in existing:
            row = existing[map_name]
            row["mapName"] = map_name
            row["bmsPath"] = rel_path
            records[map_name] = row
        else:
            records[map_name] = make_default_record(map_name, rel_path)

    write_status(config.status_file, records)
    return records


def review_needed(result: dict[str, Any]) -> tuple[bool, str]:
    programs = result.get("programs") or []
    function_keys = int(result.get("functionKeys") or 0)
    fields = int(result.get("fields") or 0)

    reasons: list[str] = []
    if fields == 0:
        reasons.append("no_fields_detected")
    if len(programs) == 0:
        reasons.append("no_program_link")
    if function_keys == 0:
        reasons.append("no_function_keys")

    if not reasons:
        return False, ""
    return True, ",".join(reasons)


def run_count_query(query: str) -> int:
    output = ingest_bms_map.run_cypher(query)
    for line in reversed(output.splitlines()):
        match = INT_RE.search(line)
        if match:
            return int(match.group(0))
    raise ValueError(f"Unable to parse count from Cypher output: {output}")


def compute_quality_metrics(mapset: str, map_name: str, programs: list[str]) -> dict[str, int]:
    mapset_q = ingest_bms_map.cypher_quote(mapset)
    map_name_q = ingest_bms_map.cypher_quote(map_name)

    graph_fields = run_count_query(
        "\n".join(
            [
                f"MATCH (m:BmsMap {{mapsetName:{mapset_q}, mapName:{map_name_q}}})",
                "OPTIONAL MATCH (m)-[:HAS_FIELD]->(f:BmsField)",
                "RETURN count(DISTINCT f) AS c",
            ]
        )
    )
    graph_input_fields = run_count_query(
        "\n".join(
            [
                f"MATCH (m:BmsMap {{mapsetName:{mapset_q}, mapName:{map_name_q}}})",
                "OPTIONAL MATCH (m)-[:HAS_FIELD]->(f:BmsField {type:'input'})",
                "RETURN count(DISTINCT f) AS c",
            ]
        )
    )
    graph_literals = run_count_query(
        "\n".join(
            [
                f"MATCH (m:BmsMap {{mapsetName:{mapset_q}, mapName:{map_name_q}}})",
                "OPTIONAL MATCH (m)-[:DISPLAYS_LITERAL]->(l:UiLiteral)",
                "RETURN count(DISTINCT l) AS c",
            ]
        )
    )
    graph_label_links = run_count_query(
        "\n".join(
            [
                f"MATCH (m:BmsMap {{mapsetName:{mapset_q}, mapName:{map_name_q}}})",
                "OPTIONAL MATCH (m)-[:DISPLAYS_LITERAL]->(:UiLiteral)-[r:LABELS_FIELD]->(:BmsField)",
                "RETURN count(DISTINCT r) AS c",
            ]
        )
    )
    graph_key_chains = run_count_query(
        "\n".join(
            [
                f"MATCH (m:BmsMap {{mapsetName:{mapset_q}, mapName:{map_name_q}}})",
                "OPTIONAL MATCH (m)-[:SUPPORTS_KEY]->(:UiFunctionKey)-[:TRIGGERS_SUBFUNCTIONALITY]->(:SubFunctionality)-[:IMPLEMENTED_BY]->(:Program)",
                "RETURN count(*) AS c",
            ]
        )
    )
    graph_transfers = run_count_query(
        "\n".join(
            [
                f"MATCH (m:BmsMap {{mapsetName:{mapset_q}, mapName:{map_name_q}}})",
                "OPTIONAL MATCH (m)-[:SUPPORTS_KEY]->(:UiFunctionKey)-[:TRIGGERS_SUBFUNCTIONALITY]->(:SubFunctionality)-[:TRANSFERS_TO_PROGRAM]->(:Program)",
                "RETURN count(*) AS c",
            ]
        )
    )

    if programs:
        first_program_q = ingest_bms_map.cypher_quote(programs[0])
        graph_presenter_links = run_count_query(
            "\n".join(
                [
                    f"MATCH (p:Program {{name:{first_program_q}}})",
                    f"MATCH (m:BmsMap {{mapsetName:{mapset_q}, mapName:{map_name_q}}})",
                    "OPTIONAL MATCH (p)-[r:PRESENTS_MAP]->(m)",
                    "RETURN count(DISTINCT r) AS c",
                ]
            )
        )
    else:
        graph_presenter_links = run_count_query(
            "\n".join(
                [
                    f"MATCH (m:BmsMap {{mapsetName:{mapset_q}, mapName:{map_name_q}}})",
                    "OPTIONAL MATCH (:Program)-[r:PRESENTS_MAP]->(m)",
                    "RETURN count(DISTINCT r) AS c",
                ]
            )
        )

    return {
        "graphFields": graph_fields,
        "graphInputFields": graph_input_fields,
        "graphLiterals": graph_literals,
        "graphLabelLinks": graph_label_links,
        "graphKeyChains": graph_key_chains,
        "graphTransfers": graph_transfers,
        "graphPresenterLinks": graph_presenter_links,
    }


def evaluate_quality(row: dict[str, str], metrics: dict[str, int], programs: list[str]) -> tuple[str, str, str]:
    blocking_findings: list[str] = []
    warning_findings: list[str] = []

    parsed_fields = int(row.get("fields") or 0)
    parsed_literals = int(row.get("literals") or 0)
    parsed_keys = int(row.get("functionKeys") or 0)
    has_literal_evidence = parsed_literals > 0

    if metrics["graphFields"] <= 0:
        blocking_findings.append("missing_graph_fields")
    if has_literal_evidence and metrics["graphLiterals"] <= 0:
        blocking_findings.append("missing_graph_literals")
    if parsed_keys > 0 and metrics["graphKeyChains"] <= 0:
        blocking_findings.append("missing_key_subfunctionality_program_chain")
    if metrics["graphInputFields"] > 0 and has_literal_evidence and metrics["graphLabelLinks"] <= 0:
        blocking_findings.append("missing_labels_field_links")
    if parsed_fields > 0 and metrics["graphFields"] < parsed_fields:
        blocking_findings.append("missing_fields_in_graph")
    if parsed_literals > 0 and metrics["graphLiterals"] < parsed_literals:
        blocking_findings.append("missing_literals_in_graph")
    if len(programs) == 0:
        warning_findings.append("no_program_link")

    if blocking_findings:
        return "failed", ",".join(blocking_findings), ",".join(warning_findings)
    if warning_findings:
        return "warning", "", ",".join(warning_findings)
    return "passed", "", ""


def build_visualization_query(mapset: str, map_name: str, program: str | None) -> str:
    mapset_q = ingest_bms_map.cypher_quote(mapset)
    map_name_q = ingest_bms_map.cypher_quote(map_name)
    if program:
        program_filter = f" {{name:{ingest_bms_map.cypher_quote(program)}}}"
    else:
        program_filter = ""

    lines = [
        f"MATCH pathProgram = (prog:Program{program_filter})-[:USES_MAPSET]->(ms:BmsMapset {{name:{mapset_q}}})-[:HAS_MAP]->(m:BmsMap {{mapsetName:{mapset_q}, mapName:{map_name_q}}})",
        "",
        "OPTIONAL MATCH pathPresenter = (prog)-[:PRESENTS_MAP]->(m)",
        "",
        "OPTIONAL MATCH pathLiterals = (m)-[:DISPLAYS_LITERAL]->(l:UiLiteral)",
        "",
        "OPTIONAL MATCH pathFields = (m)-[:HAS_FIELD]->(f:BmsField)",
        "",
        "OPTIONAL MATCH pathLabels = (m)-[:DISPLAYS_LITERAL]->(:UiLiteral)-[:LABELS_FIELD]->(:BmsField)",
        "",
        "OPTIONAL MATCH pathKeys = (m)-[:SUPPORTS_KEY]->(k:UiFunctionKey)-[:TRIGGERS_SUBFUNCTIONALITY]->(s:SubFunctionality)-[:IMPLEMENTED_BY]->(impl:Program)",
        "",
        "OPTIONAL MATCH pathTransfers = (s)-[:TRANSFERS_TO_PROGRAM]->(dest:Program)",
        "",
        "RETURN pathProgram, pathPresenter, pathLiterals, pathFields, pathLabels, pathKeys, pathTransfers;",
    ]
    return "\n".join(lines)


def write_visualization_queries(config: BatchConfig, records: dict[str, dict[str, str]]) -> pathlib.Path:
    visualization_file = BATCH_DIR / f"{config.run_id}-visualization.cypher"
    blocks: list[str] = []

    for map_name in sorted(records.keys()):
        row = records[map_name]
        mapset = row.get("mapset", "")
        map_value = row.get("map", "")
        if not mapset or not map_value:
            continue

        bms_path = row.get("bmsPath", "")
        query_program = row.get("primaryProgram", "")

        blocks.append(f"-- {map_name} ({bms_path})")
        blocks.append(build_visualization_query(mapset=mapset, map_name=map_value, program=query_program or None))
        blocks.append("")

        row["visualizationQueryFile"] = visualization_file.relative_to(REPO_ROOT).as_posix()

    if not blocks:
        blocks = ["-- No completed maps available for visualization queries."]

    visualization_file.parent.mkdir(parents=True, exist_ok=True)
    visualization_file.write_text("\n".join(blocks), encoding="utf-8")
    return visualization_file


def process_phase_item(
    map_name: str,
    records: dict[str, dict[str, str]],
    status_file: pathlib.Path,
    lock: threading.Lock,
    *,
    apply: bool,
    max_retries: int,
) -> dict[str, Any]:
    with lock:
        row = records[map_name]
        row["status"] = "in_progress"
        row["phase"] = "apply" if apply else "analysis"
        if not row.get("startedAt"):
            row["startedAt"] = now_utc()
        attempts = int(row.get("attempts") or "0") + 1
        row["attempts"] = str(attempts)
        row["lastError"] = ""
        write_status(status_file, records)

    bms_path = REPO_ROOT / records[map_name]["bmsPath"]
    result = ingest_bms_map.process_one(path=bms_path, apply=apply, max_retries=max_retries)

    with lock:
        row = records[map_name]
        row["mapset"] = sanitize_cell(result.get("mapset", row.get("mapset", "")))
        row["map"] = sanitize_cell(result.get("map", row.get("map", "")))
        row["mapKey"] = sanitize_cell(result.get("mapKey", row.get("mapKey", "")))
        row["fields"] = sanitize_cell(result.get("fields", row.get("fields", "")))
        row["literals"] = sanitize_cell(result.get("literals", row.get("literals", "")))
        row["functionKeys"] = sanitize_cell(result.get("functionKeys", row.get("functionKeys", "")))
        programs = result.get("programs") or []
        row["programCount"] = str(len(programs))
        row["primaryProgram"] = sanitize_cell(programs[0]) if programs else ""

        needs_review, notes = review_needed(result)
        row["reviewRequired"] = "true" if needs_review else row.get("reviewRequired", "false")
        if needs_review and notes:
            row["notes"] = notes

        if result.get("status") == "ok":
            if apply:
                try:
                    metrics = compute_quality_metrics(
                        mapset=row.get("mapset", ""),
                        map_name=row.get("map", ""),
                        programs=programs,
                    )
                    row["graphFields"] = str(metrics["graphFields"])
                    row["graphInputFields"] = str(metrics["graphInputFields"])
                    row["graphLiterals"] = str(metrics["graphLiterals"])
                    row["graphLabelLinks"] = str(metrics["graphLabelLinks"])
                    row["graphKeyChains"] = str(metrics["graphKeyChains"])
                    row["graphTransfers"] = str(metrics["graphTransfers"])
                    row["graphPresenterLinks"] = str(metrics["graphPresenterLinks"])

                    quality_status, quality_findings, quality_warnings = evaluate_quality(
                        row=row,
                        metrics=metrics,
                        programs=programs,
                    )
                    row["qualityStatus"] = quality_status
                    row["qualityFindings"] = quality_findings
                    row["qualityWarnings"] = quality_warnings

                    if quality_status == "passed":
                        row["status"] = "completed"
                        row["phase"] = "done"
                    elif quality_status == "warning":
                        row["status"] = "completed"
                        row["phase"] = "done_with_warnings"
                        row["reviewRequired"] = "true"
                    else:
                        row["status"] = "blocked"
                        row["phase"] = "quality_failed"
                        row["lastError"] = quality_findings
                        row["reviewRequired"] = "true"
                except Exception as exc:  # noqa: BLE001
                    row["status"] = "blocked"
                    row["phase"] = "quality_exception"
                    row["lastError"] = sanitize_cell(str(exc))
                    row["qualityStatus"] = "failed"
                    row["qualityFindings"] = "quality_gate_exception"
                    row["qualityWarnings"] = ""
                    row["reviewRequired"] = "true"
                row["finishedAt"] = now_utc()
            else:
                row["status"] = "pending"
                row["phase"] = "analysis_done"
                row["qualityStatus"] = "pending"
                row["qualityWarnings"] = ""
        else:
            row["status"] = "blocked"
            row["phase"] = "apply_failed" if apply else "analysis_failed"
            row["lastError"] = sanitize_cell(result.get("error", "unknown_error"))
            row["finishedAt"] = now_utc()
            if apply:
                row["qualityStatus"] = "failed"
                row["qualityWarnings"] = ""

        write_status(status_file, records)

    return result


def run_phase(
    phase_name: str,
    targets: list[str],
    workers: int,
    records: dict[str, dict[str, str]],
    config: BatchConfig,
    lock: threading.Lock,
    *,
    apply: bool,
) -> list[dict[str, Any]]:
    if not targets:
        return []

    print(f"phase={phase_name} items={len(targets)} workers={workers}")
    results: list[dict[str, Any]] = []

    with ThreadPoolExecutor(max_workers=max(1, workers)) as pool:
        future_map = {
            pool.submit(
                process_phase_item,
                map_name,
                records,
                config.status_file,
                lock,
                apply=apply,
                max_retries=config.max_retries,
            ): map_name
            for map_name in targets
        }

        for future in as_completed(future_map):
            map_name = future_map[future]
            try:
                result = future.result()
            except Exception as exc:  # noqa: BLE001
                result = {"bmsFile": records[map_name]["bmsPath"], "status": "failed", "error": str(exc)}
                with lock:
                    row = records[map_name]
                    row["status"] = "blocked"
                    row["phase"] = f"{phase_name}_exception"
                    row["lastError"] = sanitize_cell(str(exc))
                    row["finishedAt"] = now_utc()
                    write_status(config.status_file, records)

            results.append(result)
            print(
                "item={} status={} map={} mapKey={}".format(
                    result.get("bmsFile", records[map_name]["bmsPath"]),
                    result.get("status", "failed"),
                    result.get("map", records[map_name].get("map", "n/a")),
                    result.get("mapKey", records[map_name].get("mapKey", "n/a")),
                )
            )

    return results


def write_summary(config: BatchConfig, records: dict[str, dict[str, str]]) -> None:
    visualization_file = write_visualization_queries(config, records)
    config.summary_file.parent.mkdir(parents=True, exist_ok=True)

    with config.summary_file.open("w", encoding="utf-8", newline="") as fh:
        writer = csv.writer(fh, delimiter="\t")
        writer.writerow([
            "runId",
            "mapName",
            "status",
            "phase",
            "fields",
            "literals",
            "functionKeys",
            "programCount",
            "graphFields",
            "graphInputFields",
            "graphLiterals",
            "graphLabelLinks",
            "graphKeyChains",
            "graphTransfers",
            "graphPresenterLinks",
            "qualityStatus",
            "qualityFindings",
            "qualityWarnings",
            "visualizationQueryFile",
            "reviewRequired",
            "lastError",
        ])
        for map_name in sorted(records.keys()):
            row = records[map_name]
            writer.writerow(
                [
                    config.run_id,
                    map_name,
                    row.get("status", ""),
                    row.get("phase", ""),
                    row.get("fields", ""),
                    row.get("literals", ""),
                    row.get("functionKeys", ""),
                    row.get("programCount", ""),
                    row.get("graphFields", ""),
                    row.get("graphInputFields", ""),
                    row.get("graphLiterals", ""),
                    row.get("graphLabelLinks", ""),
                    row.get("graphKeyChains", ""),
                    row.get("graphTransfers", ""),
                    row.get("graphPresenterLinks", ""),
                    row.get("qualityStatus", "pending"),
                    row.get("qualityFindings", ""),
                    row.get("qualityWarnings", ""),
                    row.get("visualizationQueryFile", ""),
                    row.get("reviewRequired", "false"),
                    row.get("lastError", ""),
                ]
            )

    print(f"visualization_file={visualization_file}")
    totals = {"pending": 0, "in_progress": 0, "completed": 0, "blocked": 0}
    review_required = 0
    for row in records.values():
        st = row.get("status", "pending")
        totals[st] = totals.get(st, 0) + 1
        if row.get("reviewRequired", "false").lower() == "true":
            review_required += 1

    print(f"run_id={config.run_id}")
    print(f"status_file={config.status_file}")
    print(f"summary_file={config.summary_file}")
    print(f"total={len(records)} completed={totals.get('completed', 0)} blocked={totals.get('blocked', 0)} pending={totals.get('pending', 0)}")
    print(f"review_required={review_required}")


def parse_args() -> BatchConfig:
    parser = argparse.ArgumentParser(description="Orchestrate BMS batch analysis with persistent status")
    parser.add_argument("--list-file", required=True, help="Text file with one BMS path per line")
    parser.add_argument("--run-id", help="Run identifier (default: UTC timestamp)")
    parser.add_argument("--status-file", help="TSV status output path")
    parser.add_argument("--summary-file", help="TSV summary output path")
    parser.add_argument("--analysis-workers", type=int, default=max(1, (os.cpu_count() or 2) // 2))
    parser.add_argument("--neo4j-workers", type=int, default=4)
    parser.add_argument("--max-retries", type=int, default=1)
    parser.add_argument("--apply", action="store_true", help="Run Neo4j apply phase after analysis phase")
    parser.add_argument("--resume", action="store_true", help="Resume from existing status file")
    args = parser.parse_args()

    run_id = args.run_id or datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
    list_file = pathlib.Path(args.list_file)
    if not list_file.is_absolute():
        list_file = (REPO_ROOT / list_file).resolve()
    if not list_file.exists():
        raise SystemExit(f"list file not found: {list_file}")

    status_file = pathlib.Path(args.status_file) if args.status_file else (BATCH_DIR / f"{run_id}-status.tsv")
    summary_file = pathlib.Path(args.summary_file) if args.summary_file else (BATCH_DIR / f"{run_id}-summary.tsv")
    if not status_file.is_absolute():
        status_file = (REPO_ROOT / status_file).resolve()
    if not summary_file.is_absolute():
        summary_file = (REPO_ROOT / summary_file).resolve()

    return BatchConfig(
        list_file=list_file,
        run_id=run_id,
        status_file=status_file,
        summary_file=summary_file,
        analysis_workers=max(1, args.analysis_workers),
        neo4j_workers=max(1, args.neo4j_workers),
        apply=bool(args.apply),
        resume=bool(args.resume),
        max_retries=max(0, args.max_retries),
    )


def main() -> int:
    ensure_batch_dir()
    config = parse_args()
    records = init_records(config)
    lock = threading.Lock()

    analysis_targets = [
        map_name
        for map_name, row in records.items()
        if row.get("status") not in {"completed"} and row.get("phase") not in {"analysis_done", "done"}
    ]

    run_phase(
        "analysis",
        analysis_targets,
        config.analysis_workers,
        records,
        config,
        lock,
        apply=False,
    )

    if config.apply:
        apply_targets = [
            map_name
            for map_name, row in records.items()
            if row.get("status") != "completed" and row.get("phase") == "analysis_done"
        ]
        run_phase(
            "apply",
            apply_targets,
            config.neo4j_workers,
            records,
            config,
            lock,
            apply=True,
        )

    write_summary(config, records)

    blocked = sum(1 for row in records.values() if row.get("status") == "blocked")
    pending = sum(1 for row in records.values() if row.get("status") == "pending")
    if blocked > 0:
        return 2
    if pending > 0 and config.apply:
        return 1
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
