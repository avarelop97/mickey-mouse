#!/usr/bin/env python3
"""Build an immutable strict-safe BMS batch list from prior run status files.

Selection policy (strict-safe):
- status == completed
- phase == done
- qualityStatus == passed
- lastError is empty
- qualityFindings is empty
- reviewRequired == false

Outputs (under docs/batch by default):
- <run-id>-maps.txt
- <run-id>-maps.sha256
- <run-id>-reconciliation.tsv
- <run-id>-selection.txt
"""

from __future__ import annotations

import argparse
import csv
import glob
import hashlib
import os
import pathlib
from dataclasses import dataclass
from datetime import datetime, timezone
from typing import Iterable


REPO_ROOT = pathlib.Path(__file__).resolve().parents[3]
DEFAULT_STATUS_GLOB = "docs/batch/bms*-status.tsv"


@dataclass
class Candidate:
    map_name: str
    bms_path: str
    status_file: str
    finished_at: str
    status: str
    phase: str
    quality_status: str
    review_required: str


def now_utc_compact() -> str:
    return datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")


def normalize(value: str | None) -> str:
    return (value or "").strip()


def truthy_false(value: str) -> bool:
    return value.strip().lower() in {"false", "0", "no", ""}


def is_strict_safe(row: dict[str, str]) -> bool:
    status = normalize(row.get("status"))
    phase = normalize(row.get("phase"))
    quality_status = normalize(row.get("qualityStatus"))
    last_error = normalize(row.get("lastError"))
    findings = normalize(row.get("qualityFindings"))
    review_required = normalize(row.get("reviewRequired"))

    return (
        status == "completed"
        and phase == "done"
        and quality_status == "passed"
        and last_error == ""
        and findings == ""
        and truthy_false(review_required)
    )


def iter_status_files(pattern: str) -> Iterable[pathlib.Path]:
    for rel in sorted(glob.glob(pattern)):
        path = REPO_ROOT / rel
        if path.is_file():
            yield path


def load_best_candidates(status_files: Iterable[pathlib.Path]) -> tuple[dict[str, Candidate], dict[str, int]]:
    best: dict[str, Candidate] = {}
    metrics = {
        "status_files": 0,
        "rows_seen": 0,
        "strict_safe_rows": 0,
        "missing_bms_path": 0,
        "missing_source_file": 0,
    }

    for status_file in status_files:
        metrics["status_files"] += 1
        with status_file.open("r", encoding="utf-8", newline="") as fh:
            reader = csv.DictReader(fh, delimiter="\t")
            for row in reader:
                metrics["rows_seen"] += 1
                if not is_strict_safe(row):
                    continue

                map_name = normalize(row.get("mapName")).upper()
                bms_path = normalize(row.get("bmsPath"))
                if not map_name or not bms_path:
                    metrics["missing_bms_path"] += 1
                    continue

                candidate = Candidate(
                    map_name=map_name,
                    bms_path=bms_path,
                    status_file=status_file.relative_to(REPO_ROOT).as_posix(),
                    finished_at=normalize(row.get("finishedAt")),
                    status=normalize(row.get("status")),
                    phase=normalize(row.get("phase")),
                    quality_status=normalize(row.get("qualityStatus")),
                    review_required=normalize(row.get("reviewRequired")),
                )
                metrics["strict_safe_rows"] += 1

                prev = best.get(map_name)
                if prev is None or candidate.finished_at > prev.finished_at:
                    best[map_name] = candidate

    return best, metrics


def ensure_exists(path_value: str) -> bool:
    return (REPO_ROOT / path_value).exists()


def write_text(path: pathlib.Path, content: str) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")


def main() -> int:
    parser = argparse.ArgumentParser(description="Build strict-safe immutable BMS batch list")
    parser.add_argument("--run-id", default=f"bms-safe-strict-{now_utc_compact()}")
    parser.add_argument("--status-glob", default=DEFAULT_STATUS_GLOB)
    parser.add_argument("--max-maps", type=int, default=0, help="Optional cap. 0 means no cap")
    parser.add_argument("--output-dir", default="docs/batch")
    args = parser.parse_args()

    out_dir = (REPO_ROOT / args.output_dir).resolve()
    out_dir.mkdir(parents=True, exist_ok=True)

    candidates, metrics = load_best_candidates(iter_status_files(args.status_glob))
    selected = sorted(candidates.values(), key=lambda x: x.map_name)

    if args.max_maps and args.max_maps > 0:
        selected = selected[: args.max_maps]

    existing: list[Candidate] = []
    missing: list[Candidate] = []
    for c in selected:
        if ensure_exists(c.bms_path):
            existing.append(c)
        else:
            missing.append(c)

    maps_file = out_dir / f"{args.run_id}-maps.txt"
    maps_content = "\n".join(c.bms_path for c in existing) + ("\n" if existing else "")
    write_text(maps_file, maps_content)

    sha = hashlib.sha256(maps_file.read_bytes()).hexdigest()
    sha_file = out_dir / f"{args.run_id}-maps.sha256"
    write_text(sha_file, f"{sha}  {maps_file.name}\n")

    reconciliation_file = out_dir / f"{args.run_id}-reconciliation.tsv"
    with reconciliation_file.open("w", encoding="utf-8", newline="") as fh:
        writer = csv.writer(fh, delimiter="\t")
        writer.writerow(
            [
                "mapName",
                "bmsPath",
                "sourceStatusFile",
                "finishedAt",
                "status",
                "phase",
                "qualityStatus",
                "reviewRequired",
                "sourceExists",
            ]
        )
        for c in selected:
            writer.writerow(
                [
                    c.map_name,
                    c.bms_path,
                    c.status_file,
                    c.finished_at,
                    c.status,
                    c.phase,
                    c.quality_status,
                    c.review_required,
                    "true" if c in existing else "false",
                ]
            )

    selection_file = out_dir / f"{args.run_id}-selection.txt"
    lines = [
        f"run_id={args.run_id}",
        f"status_glob={args.status_glob}",
        f"status_files_scanned={metrics['status_files']}",
        f"rows_seen={metrics['rows_seen']}",
        f"strict_safe_rows={metrics['strict_safe_rows']}",
        f"unique_strict_safe_maps={len(candidates)}",
        f"max_maps={args.max_maps}",
        f"selected_maps={len(selected)}",
        f"selected_existing_maps={len(existing)}",
        f"selected_missing_maps={len(missing)}",
        f"maps_file={maps_file.relative_to(REPO_ROOT).as_posix()}",
        f"sha256_file={sha_file.relative_to(REPO_ROOT).as_posix()}",
        f"reconciliation_file={reconciliation_file.relative_to(REPO_ROOT).as_posix()}",
    ]
    if missing:
        lines.append("missing_paths=")
        lines.extend([f"- {c.map_name}\t{c.bms_path}" for c in missing])
    write_text(selection_file, "\n".join(lines) + "\n")

    print("run_id=", args.run_id)
    print("selected_existing_maps=", len(existing))
    print("selected_missing_maps=", len(missing))
    print("maps_file=", maps_file.relative_to(REPO_ROOT).as_posix())
    print("sha256_file=", sha_file.relative_to(REPO_ROOT).as_posix())
    print("reconciliation_file=", reconciliation_file.relative_to(REPO_ROOT).as_posix())
    print("selection_file=", selection_file.relative_to(REPO_ROOT).as_posix())
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
