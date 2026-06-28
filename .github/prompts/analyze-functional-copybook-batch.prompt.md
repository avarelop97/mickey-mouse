---
agent: ask
description: "Use when reviewing a batch of COBOL copybooks under cpy/ for Neo4j graph modeling, with per-file validation, controlled materialization, and final batch summary"
---

# Analyze Functional Copybook Batch For Graph Modeling

You are reviewing a batch of COBOL copybooks under `cpy/` and must process them one by one using the same semantic rigor as the single-copybook review workflow.

## Goal

Produce a controlled AI batch review of multiple copybooks.

Unless the user explicitly asks for review-only mode, you must also materialize each supported copybook into the Neo4j graph, validate the result for each one, and return:

- a per-copybook summary
- a batch-level summary
- one aggregate visualization Cypher query for all successfully processed copybooks

If the batch reveals real inconsistencies or traceability gaps, you must also create one or more formal reports under `docs/` in the same style as the gap reports already used in this repository.

This prompt must prioritize semantic correctness over throughput.
Do not collapse documentary reference types.
Do not skip validation.
Do not claim a file was processed if it was not actually reviewed.

## Input

Batch selector: `${input:batchSelector:Comma-separated copybook names, wildcard-like family hint, or explicit subset such as SICCI203,SICCI204,SICCI218 or FDOMI*}`

Optional max files: `${input:maxFiles:Maximum number of files to process in this run, for example 10}`

Optional mode hint: `${input:modeHint:review-only or materialize, default materialize}`

Expected source folder: `cpy/`

## Batch Selection Rules

1. Resolve the selector into concrete copybook members under `cpy/`.
2. Prefer explicit names when the selector is ambiguous.
3. If the selector would expand to too many files, process only up to `maxFiles` and clearly report which files were deferred.
4. Process files in deterministic order, preferably alphabetical unless the user provides an explicit sequence.
5. Ignore files outside `cpy/`.
6. If a requested member does not exist, report it as unresolved input and continue with the rest.

## Required Batch Protocol

For each resolved copybook, perform the full single-file protocol:

1. Read the copybook header before the first active field.
2. Detect whether it is:
  - a functional communication block
  - a plain structural copybook
  - or ambiguous
3. Extract the active hierarchy exactly as expressed in COBOL levels.
4. Detect documentary references and classify each one explicitly.
5. Detect modification history and affected fields when available.
6. Extract header creator metadata (`CREADOR`) when present.
7. Decide the graph shape supported by the evidence.
8. Materialize the copybook idempotently in Neo4j unless in review-only mode.
9. Validate the stored graph content for that copybook.
10. Record the outcome as one of:
  - `processed`
  - `processed_with_cautions`
  - `review_only`
  - `skipped_insufficient_evidence`
  - `failed`
11. Decide whether that copybook requires a formal gap report and create it when the evidence justifies it.

Do not let one failed copybook abort the whole batch unless the user explicitly asks for fail-fast behavior.

## Semantic Rules

Apply the same semantic distinctions as the single-copybook prompt:

- `COPIA DEL X` or `COPIA DE X` -> `COPIED_FROM_COPYBOOK`
- `IGUAL A LA X` or equivalent parity wording -> `EQUIVALENT_TO_COPYBOOK`
- documentary routine mentions -> `COMMUNICATION_BLOCK_FOR`
- change blocks -> `HAS_CHANGE_EVENT`
- affected fields -> `AFFECTS_PARAM`
- structural hierarchy -> `HAS_CHILD_PARAM`
- `CREADOR` header metadata -> `Copybook.copybookCreator`

Never collapse provenance, equivalence, and documentary usage context into the same relationship.

## Batch Safety Rules

1. Prefer smaller batches over very large runs.
2. If the batch mixes very different copybook styles, say so explicitly in the summary.
3. If a file appears to represent a fixed-output physical layout rather than a communication contract, reduce the modeled output to what the evidence supports.
4. If the file header and operational usage disagree, report the discrepancy as a batch finding.
5. If a copybook has already been materialized, update idempotently rather than creating duplicates.
6. Do not create temporary query files unless the user explicitly asks for them.

## Gap Reporting Rule

Create a formal gap report in `docs/` when the evidence for one copybook or for the batch as a family shows one or more of these conditions:

- mismatch between documented structure and operational structure
- mismatch between documented length and effective physical length
- inconsistent version or modification markers across related artifacts
- documentary references that cannot be reconciled with executable evidence
- contradictory evidence between copybook, program, and file definition
- a traceability gap that changes how the artifact or family should be interpreted

Use a filename shaped like:

- `docs/informe-gap-<artifact-or-family>-<short-topic>.md`

The report must follow the same style as the existing repository gap reports and contain these sections:

- `# Informe de gap: ...`
- `## Resumen ejecutivo`
- `## Evidencia observada`
- `## Gap identificado`
- `## Interpretacion tecnica`
- `## Lectura para direccion`
- `## Conclusion`

When useful, include Mermaid diagrams.

If the inconsistency is specific to one copybook, create a per-artifact report.
If the inconsistency is shared across a family, you may also create a family-level report that synthesizes the common pattern.

When a reportable inconsistency is detected for a specific copybook, also update the `Copybook` node with standard source-discrepancy metadata:

- `sourceDiscrepancyStatus`: `pending_source_review`
- `sourceDiscrepancyReason`: short evidence-based summary
- `sourceDiscrepancyDetectedAt`: ISO timestamp when the discrepancy was detected

If the `Copybook` node does not exist yet, create it first as a standard `Copybook` node (respecting ontology mandatory fields) and then apply the discrepancy metadata.

When a previously reported discrepancy is later resolved, update:

- `sourceDiscrepancyStatus`: `resolved`

Do not invent alternate property names for this state machine.

## Per-File Output Requirements

For each processed copybook, return a compact section with:

### Copybook Result

- copybook name
- classification
- status
- key evidence summary
- declared parameter count if detected
- change event count if detected
- documentary references inventory
- main modeling cautions
- graph materialization result
- gap report created if required

Keep each per-file section concise but evidence-based.

## Batch Output Requirements

After all files are processed, return these sections.

### 1. Batch Scope

List:

- requested selector
- resolved files
- deferred files if any
- unresolved inputs if any
- mode used

### 2. Batch Findings

Summarize the main patterns discovered across the batch, such as:

- recurring communication-block structures
- recurring documentary equivalence patterns
- historical field changes
- mismatches between documented and operational layouts
- versioning inconsistencies

### 3. Batch Result Table

Provide one line per copybook with:

- name
- classification
- status
- params count
- changes count
- key caution

### 4. Graph Materialization Summary

If materialization mode was used, report:

- copybooks written
- copybooks updated
- copybooks skipped
- copybooks marked as `pending_source_review`
- total successful validations
- total failures

### 5. Cross-Copybook Cautions

List only real caution themes supported by the evidence.

If any caution theme rises to the level of a documentary or operational inconsistency, report which formal gap document was created.

### 6. Aggregate Visualization Query

Always provide at least one Cypher query that visualizes all successfully processed copybooks together.

The aggregate visualization must prioritize hierarchical representation for each copybook that has a structural root.
When a root hierarchy exists, show:

- `Copybook -> root` via `DECLARES_PARAM`
- nested edges via `HAS_CHILD_PARAM`

Do not flatten these copybooks into only direct `Copybook -> ParamType` edges.
Use direct fallback only for copybooks where no root hierarchy is materialized.

The query should return explicit relationship variables or graph paths so edges are visible in Neo4j Browser.

The default aggregate query must include:

- each `Copybook`
- structural root parameters when present
- declared params
- hierarchy paths
- change events
- `AFFECTS_PARAM`
- documented routines
- `COPIED_FROM_COPYBOOK`
- `EQUIVALENT_TO_COPYBOOK`

For copybooks with hierarchy, it must also include:

- root-level `DECLARES_PARAM` edge
- descendant `HAS_CHILD_PARAM` edges

Prefer a path-based query for Neo4j Browser.

### 7. Deferred Work

If any copybooks were deferred or failed, list:

- file name
- reason
- recommended next step

## Completion Rule

The batch task is only complete when:

1. every resolved file has an explicit status,
2. every successful file has been analyzed,
3. every materialized file has been validated,
4. every documentary reference detected has been classified,
5. any reportable inconsistency has been documented in one or more formal gap reports under `docs/`,
6. an aggregate visualization query has been returned.

## Recommended Operating Mode

When the batch is large, process it in chunks of 5 to 15 copybooks per run.

If the selector is something like `FDOMI*`, `SICCI*`, or another family pattern, keep the batch family-homogeneous whenever possible so the semantic summary remains reliable.
