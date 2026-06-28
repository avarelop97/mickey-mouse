---
applyTo: "infra/neo4j/scripts/*.py,docs/batch/*.txt,docs/batch/*.tsv,docs/batch/*.cypher,mps/*.bms"
---

# BMS Batch Recurrent Instructions

## Purpose
Run BMS analysis in recurring batches with:
- deterministic ingestion
- persistent status and resume
- quality control and visualization outputs
- iterative, evidence-based heuristic improvements

## Scope
Applies to BMS maps under `mps/*.bms` using:
- `infra/neo4j/scripts/ingest_bms_map.py`
- `infra/neo4j/scripts/bms_batch_orchestrator.py`

## Non-Negotiable Safety Rules
1. Never run destructive database operations for this workflow (`DROP DATABASE`, broad `DETACH DELETE`, full reload on active destination).
2. Always use idempotent `MERGE` patterns in ingestion updates.
3. Keep `reviewStatus='pending_human_review'` and `reviewSource='auto-ingestion'` for auto-generated data.
4. Preserve auditability fields for inferred relationships (`inference`, `strategy`, `confidence`, `ingestion`).

## Canonical Identity Rules
1. `BmsMap` identity is composite by convention (`mapsetName + mapName`), persisted as `name=mapset::map` in auto-ingestion lineage.
2. Keep lineage separated (`::` canonical auto-ingestion, `__` manual lineage) during calibration and reporting.

## Standard Recurrent Batch Procedure

### Phase 0: Prepare fixed list
1. Build a fixed list file in repo, one line per map path:
   - `docs/batch/<run-id>-maps.txt`
2. Keep this list immutable during the run.

### Phase 1: Analysis-only pass
Run parser/evidence pass without write:

```bash
python3 infra/neo4j/scripts/bms_batch_orchestrator.py \
  --list-file docs/batch/<run-id>-maps.txt \
  --run-id <run-id> \
  --analysis-workers 8
```

Expected artifacts:
- `docs/batch/<run-id>-status.tsv`
- `docs/batch/<run-id>-summary.tsv`
- `docs/batch/<run-id>-visualization.cypher`

### Phase 2: Apply pass with resume
Only after reviewing analysis outputs:

```bash
python3 infra/neo4j/scripts/bms_batch_orchestrator.py \
  --list-file docs/batch/<run-id>-maps.txt \
  --run-id <run-id> \
  --analysis-workers 8 \
  --neo4j-workers 4 \
  --max-retries 2 \
  --apply --resume
```

### Phase 3: Post-run quality gates
Must verify all:
1. Completion:
   - `completed`, `blocked`, `pending` counts from summary.
   - warning-only completions must remain visible in outputs.
2. Graph structure per map:
   - `HAS_FIELD`, `DISPLAYS_LITERAL`, `SUPPORTS_KEY`
3. Label-input quality:
   - `LABELS_FIELD` count
   - `inputFields`, `labeledInputs`, `coverage`
4. Key chain integrity:
   - `BmsMap -> UiFunctionKey -> SubFunctionality -> Program`
5. Visualization query emitted for run:
   - `docs/batch/<run-id>-visualization.cypher`

## Quality Classification Policy
Use severity-aware quality outcomes:
1. Blocking findings:
   - `missing_graph_fields`
   - `missing_graph_literals` (only when parser literal evidence exists)
   - `missing_key_subfunctionality_program_chain` (only when function keys exist)
   - `missing_labels_field_links` (only when `graphInputFields > 0` and parser literal evidence exists)
   - structural under-materialization findings (`missing_fields_in_graph`, `missing_literals_in_graph`)
2. Warning findings (non-blocking):
   - `no_program_link` => map must complete with warning (`done_with_warnings`), `reviewRequired=true`.
3. Not-applicable rule:
   - if parsed literal evidence is zero (`literals == 0`), literal-presence gate is N/A and must not produce `missing_graph_literals`.
   - if `graphInputFields == 0`, label-link requirement is N/A and must not produce `missing_labels_field_links`.
4. Status behavior:
   - any blocking finding => `blocked` / `quality_failed`
   - only warnings => `completed` / `done_with_warnings`
   - no findings => `completed` / `done`
5. Reporting behavior:
   - write blocking findings to `qualityFindings`
   - write warnings to `qualityWarnings`
   - preserve visibility in `status.tsv` and `summary.tsv`

## Label-Input Heuristic Policy
Current deterministic policy (`infer_literal_field_links`):
1. `same_row_left`
2. `prev_row_aligned`
3. `header_column_propagated`

Relationship persistence policy:
- `(:UiLiteral)-[:LABELS_FIELD {inference, strategy, confidence, reviewStatus, reviewSource, ingestion}]->(:BmsField)`

## Normalization Policy (Post-Inference)
For canonical `::` maps:
1. Backfill/normalize missing `confidence` values.
2. Keep top-1 `LABELS_FIELD` per input field by:
   - highest confidence
   - deterministic tie-break (`strategy`, literal name)
3. Do not reduce map-level coverage during normalization.

## Iterative Improvement Loop
Use this loop for each improvement cycle:
1. Baseline metrics (before):
   - `inputFields`, `labeledInputs`, `coverage`, strategy distribution.
2. Implement one bounded heuristic improvement.
3. Reingest a canonical sample set (at least ZMCY291, ZMCY292, ZMCY29A).
4. Normalize and re-measure metrics.
5. Compare before/after:
   - accept only if coverage improves and false positives remain controlled.
6. Persist findings in run artifacts (`summary.tsv`, query outputs, notes).

## Minimal Acceptance Criteria for Promotion
1. No destructive operations executed.
2. Idempotency preserved on re-run.
3. Coverage does not regress on control maps.
4. New heuristic links include confidence and strategy metadata.
5. Outputs are reproducible from run-id artifacts.

## Recommended Recurring Report (per run-id)
Include:
1. Total maps in list, completed, blocked, pending.
2. Coverage table per map (`inputFields`, `labeledInputs`, `coverage`).
3. Strategy distribution (`same_row_left`, `prev_row_aligned`, `header_column_propagated`).
4. List of unresolved maps requiring human review.
5. Path to generated visualization query file.
