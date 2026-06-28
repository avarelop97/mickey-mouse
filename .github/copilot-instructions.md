# Copilot Instructions (Local Repository)

## Scope
These instructions are mandatory for this repository when working with copybook analysis, BMS presentation-layer analysis, and Neo4j materialization.

Primary prompt to follow:
- `.github/prompts/analyze-functional-copybook.prompt.md`

Presentation-layer prompt to follow when the target artifact is a BMS map under `mps/`:
- `.github/prompts/analyze-bms-map.prompt.md`

## Non-Negotiable Rule
Do not use simplified loaders for functional copybook batches.

If the user asks to analyze or ingest copybooks with the repository prompt, execution must follow the full prompt workflow for each file.

## Mandatory Per-Copybook Workflow
For each target `cpy/<name>.cpy`, complete all steps before moving to the next file:

1. Read and analyze header evidence before first active field.
2. Build explicit documentary reference inventory:
   - literal evidence text
   - target name
   - semantic class
   - relationship type
   - evidence lines
3. Parse active hierarchy (01/05/10/15...) and preserve parent-child structure.
4. Materialize into Neo4j with `MERGE` (idempotent updates).
5. Enforce root-container modeling:
   - copybook directly declares only the root container when one exists
   - descendants connected via `HAS_CHILD_PARAM`
6. Materialize documentary relations when evidence exists:
   - `COPIED_FROM_COPYBOOK`
   - `EQUIVALENT_TO_COPYBOOK`
   - `COMMUNICATION_BLOCK_FOR`
7. Model modification history (`HAS_CHANGE_EVENT`, `AFFECTS_PARAM`) when evidence is present.
8. Evaluate discrepancy conditions (including documented length vs effective structure).
9. If discrepancy is real and evidence-backed:
   - set `sourceDiscrepancyStatus`, `sourceDiscrepancyReason`, `sourceDiscrepancyDetectedAt`
   - create formal gap report in `docs/` with required structure.
10. Validate persistence with queries (node presence, root, hierarchy, counts, documentary relations).
11. Return at least one hierarchy-first visualization query with explicit edges/paths.

## Definition of Done (Per Copybook)
A copybook is considered complete only if all are true:

1. Analysis completed using the prompt semantics.
2. Neo4j content persisted and validated.
3. Hierarchy-first visualization query provided.
4. Documentary references were either materialized or explicitly rejected with evidence.
5. Gap report created when discrepancy criteria are met.

## Batch Execution Rules
When running a batch:

1. Use a fixed list of file names.
2. Track status per file: `pending`, `in_progress`, `completed`, `blocked`.
3. Do not skip incomplete files.
4. Do not replace missing evidence with assumptions.
5. Do not switch to bulk shortcut ingestion to finish faster.
6. End batch with a compliance summary table per file:
   - hierarchy modeled
   - references modeled
   - change events modeled (if applicable)
   - discrepancy status
   - report path (if any)

## Execution Environment Guardrails (macOS local)
The local environment uses macOS shell tooling. Batch automation must be compatible with that baseline.

1. Do not rely on Bash 4+ features.
2. Assume `/bin/bash` may be 3.2 (no `mapfile`, no associative arrays).
3. Prefer POSIX-compatible loops for file reads:
   - `while IFS= read -r line; do ...; done < file`
4. Avoid GNU-only options unless availability is verified first.
5. If using temporary files in `/tmp`, also persist final reusable scripts under repository paths (for example `scripts/`) so reruns do not depend on ephemeral files.
6. Before launching a long batch, run a quick preflight check:
   - shell compatibility
   - required commands available
   - input file list exists
7. If a batch fails mid-run, resume idempotently from the file-level status list instead of restarting from scratch.

## Batch State Persistence
To support reliable continuation across retries:

1. Persist batch list in repo-scoped path (for example `docs/batch/<run-id>-list.txt`).
2. Persist per-file status in repo-scoped path (for example `docs/batch/<run-id>-status.tsv`).
3. Persist compliance summary in repo-scoped path (for example `docs/batch/<run-id>-summary.tsv`).
4. Do not keep critical run state only in `/tmp`.

## Forbidden Behavior
- No simplified one-pass loader as substitute for prompt workflow.
- No collapsing `COPIA DEL` and `IGUAL A LA` into a single semantic relation.
- No flattening hierarchy when a root container exists.
- No output-only prose without Neo4j persistence unless user explicitly requests review-only mode.

## Quality Controls
Before reporting completion, always verify:

1. `Copybook` exists and has expected metadata (`copybookCreator`, source path, review metadata).
2. root node exists and is directly declared by copybook when applicable.
3. descendant structure exists through `HAS_CHILD_PARAM`.
4. documentary edges are present when evidenced in header.
5. discrepancy fields are present when mismatch is evidenced.

## Recurrent BMS Batch Playbook
For recurring BMS batch execution and iterative heuristic improvement cycles,
follow the repository instruction playbook:

- `.github/instructions/bms-batch-recurrent.instructions.md`

This playbook defines:

1. fixed-list batch execution with resume,
2. post-run quality gates,
3. LABELS_FIELD heuristic policy and normalization,
4. iterative improvement loop and acceptance criteria.

## Escalation
If required evidence is ambiguous or missing, stop and report exactly what is missing.
Do not invent values.
