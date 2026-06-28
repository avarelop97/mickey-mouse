---
agent: ask
description: "Use when analyzing a COBOL functional copybook in cpy/ for Neo4j graph modeling, especially communication blocks with header comments, field history, documented routines, and parameter metadata"
---

# Analyze Functional Copybook For Graph Modeling

You are reviewing a COBOL copybook under `cpy/` to decide how it should be represented in the Neo4j ontology.

## Goal

Produce an AI review of the copybook as a functional artifact, not only as an included dependency.

This prompt must not stop at analysis. Unless the user explicitly asks for review-only mode, you must also materialize the extracted content into the Neo4j graph and return a Cypher query that lets the user visualize the resulting subgraph.

If the review detects a real inconsistency or evidence gap, you must also create a formal report under `docs/` in the same style as the existing gap reports already used in this repository.

Your job is to extract graph knowledge from:

- the header comments
- the COBOL hierarchy levels such as `01`, `05`, `10`, `15`
- the active `05 ... PIC ...` parameter definitions
- commented historical parameter definitions
- provenance notes such as `COPIA DEL ...` or `COPIA DE ...`
- equivalence notes to other copybooks
- documented routine names mentioned in comments
- modification blocks that describe when a field changed, who changed it, and which parameters were affected
- header creator metadata such as `CREADOR`

## Input

Target copybook: `${input:copybookName:Name of the copybook without extension, for example SICCI218}`

Expected source path: `cpy/${input:copybookName}.cpy`

## Required Review Protocol

1. Read the copybook header before the first active `05` field.
2. Identify whether the copybook is a functional communication block, not just a generic dependency.
3. Detect the structural root item, typically a `01` block such as `CI-REG`, and treat it as the top-level communication container.
4. Extract all active fields and preserve their COBOL hierarchy level.
5. Create parent-child structure according to the COBOL level numbers, for example `01 > 05 > 10 > 15`.
6. Detect commented-out older field definitions and treat them as historical definitions, but do not model them as current values.
7. Detect header phrases such as:
  - `COPIA DEL ...`
  - `COPIA DE ...`
  - `IGUAL A LA ...`
   - routine references like `VRB585D`, `VRB586D`, `VDB585D`
   - `POR:` usage channels
   - `REFERENCIAS`
   - `NOTA:` governance notes
   - `MODIFICACION:` blocks
   - `H.P.I:` author lines
   - `VARIABLES A MODIFICAR:` field lists
  - `CREADOR:` creator organization or author
8. Materialize the extracted graph content in Neo4j using idempotent Cypher with `MERGE`, updating existing nodes and relationships when they already exist.
9. Validate that the graph content was stored correctly by checking at least:
  - the `Copybook` node
  - the root container node such as `CI-REG`
  - declared parameter count
  - documented routines
  - change event count
  - hierarchy links between levels
10. Return at least one Cypher query that visualizes the resulting subgraph.

11. Build an explicit reference inventory from the header before writing to Neo4j.
   For each documentary reference to another artifact or routine, capture:
  - the literal phrase found
  - the referenced target name
  - the semantic category
  - the output relationship to create
  - the evidence line or lines
12. Evaluate whether the copybook reveals a reportable inconsistency or traceability gap.
  If it does, create a markdown report under `docs/` and summarize that outcome in the response.

## Ontology Rules

When the evidence exists, interpret it using these graph rules:

- Create or describe the copybook as a `Copybook` node.
- If the copybook contains a structural root such as `01 CI-REG`, model that root as a graph element too.
- If the copybook declares active `05` fields, model them as `Copybook -[:DECLARES_PARAM]-> ParamType`.
- Preserve the COBOL hierarchy by linking parent and child items with a containment relation such as `HAS_CHILD_PARAM`.
- Store the COBOL level number on each parameter node when possible.
- If the header documents routines, model them as `Copybook -[:COMMUNICATION_BLOCK_FOR]-> ExternalRoutine`.
  Important: this is documentary evidence, not an executable call.
- If the header includes `CREADOR`, store it as `copybookCreator` on the `Copybook` node.
- If the header says the copybook is a copy of another copybook, model `Copybook -[:COPIED_FROM_COPYBOOK]-> Copybook`.
- If the header says the copybook is equivalent to another one, model `Copybook -[:EQUIVALENT_TO_COPYBOOK]-> Copybook`.
- If the header contains modification history, model each change block as `Copybook -[:HAS_CHANGE_EVENT]-> ArtifactChange`.
- If a change block names affected fields, connect it with `ArtifactChange -[:AFFECTS_PARAM]-> ParamType`.
- Keep the historical value on the `AFFECTS_PARAM` relationship when the old definition can be reconstructed from commented lines.
  Use:
  - `previousPic`
  - `currentPic`
  - `previousPicOptions` when there are multiple older commented definitions

## Interpretation Constraints

- Do not infer executable behavior from comments alone.
- Do not convert documentary routine mentions into `CALLS_ROUTINE`.
- Do not assume equivalence between names unless the header says so explicitly.
- Do not collapse `COPIA DEL ...` and `IGUAL A LA ...` into the same relationship; they express different semantics.
- Do not drop one documentary reference just because another reference points to a different copybook in the same header.
- When multiple documentary references coexist, preserve all of them if they are non-contradictory and evidence-backed.
- If a header contains both provenance and equivalence statements, emit both relations and explain why they coexist.
- Do not flatten the copybook if a meaningful `01` root block exists; preserve the hierarchy.
- If a field appears in `VARIABLES A MODIFICAR` but no previous commented definition exists, say that the change is documented but the prior PIC is not locally reconstructible.
- If multiple previous commented definitions exist for the same field, preserve that ambiguity explicitly.
- Do not leave the result only in prose when Neo4j is available; persist it in the graph.
- Do not create temporary query files unless the user explicitly asks for them; prefer direct Cypher execution.

## Gap Reporting Rule

Create a formal gap report in `docs/` when the evidence shows one or more of these conditions:

- a mismatch between documented structure and operational structure
- a mismatch between documented length and effective physical length
- inconsistent version or modification markers across related artifacts
- documentary references that cannot be reconciled with executable evidence
- contradictory evidence between copybook, program, and file definition
- a traceability gap that changes how the artifact should be interpreted

The report must follow the same style already used in repository documents such as the existing gap reports.

Use a filename shaped like:

- `docs/informe-gap-<artifact-or-family>-<short-topic>.md`

The report must contain these sections:

- `# Informe de gap: ...`
- `## Resumen ejecutivo`
- `## Evidencia observada`
- `## Gap identificado`
- `## Interpretacion tecnica`
- `## Lectura para direccion`
- `## Conclusion`

When useful, include one or more Mermaid diagrams that clarify the mismatch.

The report must be evidence-based and written for mixed audiences:

- precise enough for technical traceability
- clear enough for non-technical stakeholders

When a reportable inconsistency is detected, also mark the affected `Copybook` node with source-discrepancy metadata using standard properties:

- `sourceDiscrepancyStatus`: `pending_source_review`
- `sourceDiscrepancyReason`: short evidence-based summary
- `sourceDiscrepancyDetectedAt`: ISO timestamp when the discrepancy was detected

If the `Copybook` node does not exist yet, create it first as a standard `Copybook` node (respecting ontology mandatory fields) and then apply the discrepancy metadata.

When the discrepancy is resolved later, update:

- `sourceDiscrepancyStatus`: `resolved`

Do not create ad-hoc property names for this scenario.

## Reference Classification Matrix

Apply this matrix literally when the evidence appears in comments or headers:

- `COPIA DEL X` or `COPIA DE X`
  - meaning: provenance, derivation, or source copybook lineage
  - graph relation: `COPIED_FROM_COPYBOOK`
- `IGUAL A LA X` or equivalent parity wording
  - meaning: documentary or functional equivalence
  - graph relation: `EQUIVALENT_TO_COPYBOOK`
- routine names such as `VRB585D`, `VRB586D`, `VDB585D` named in purpose or usage comments
  - meaning: documented usage context for the communication block
  - graph relation: `COMMUNICATION_BLOCK_FOR`

If the same target appears under different phrasings, keep the most specific semantics supported by the text.
If different targets appear under different phrasings, create multiple relations rather than choosing only one.

## Output Format

Return the review in these sections.

### 1. Classification

State whether the copybook is:

- a functional communication block
- a plain structural copybook
- or ambiguous

### 2. Graph Summary

List the graph facts you would create:

- `Copybook`
- declared params count
- equivalent copybook if any
- documented routines if any
- change events count
- affected params count

### 3. Header Metadata

Extract in plain language:

- copybook provenance if present
- documentary equivalence if present
- functional purpose
- references status
- first historical reference date if present
- governance note
- usage channels

### 3.1 Reference Inventory

Provide a compact table or list with one item per detected documentary reference:

- evidence text
- target artifact or routine
- semantic interpretation
- graph relation to create
- evidence line

### 4. Parameter Set

List all active parameters with:

- field name
- COBOL level
- PIC clause
- declaration order
- parent container if any

### 5. Historical Changes

For each modification block, provide:

- change date
- author
- short summary
- affected fields
- current PIC
- previous PIC or previous PIC options when visible in comments

### 6. Modeling Cautions

List only real cautions from the evidence, for example:

- documentary mention without executable proof
- field listed as modified but previous definition missing
- multiple historical candidate definitions

If any caution rises to the level of a real documentary or operational inconsistency, state that a formal gap report was created and provide its path.

### 7. Suggested Cypher Shape

Provide a short Cypher-oriented summary of the intended shape, not a full load script. Use lines like:

- `(:Copybook {name:'...'})-[:DECLARES_PARAM]->(:ParamType {name:'...'})`
- `(:Copybook {name:'...'})-[:COPIED_FROM_COPYBOOK]->(:Copybook {name:'...'})`
- `(:ParamType {name:'...CI-REG'})-[:HAS_CHILD_PARAM]->(:ParamType {name:'...'})`
- `(:Copybook)-[:HAS_CHANGE_EVENT]->(:ArtifactChange)`
- `(:ArtifactChange)-[:AFFECTS_PARAM {previousPic:'...', currentPic:'...'}]->(:ParamType)`

### 8. Graph Materialization Result

Report what was actually written into Neo4j:

- copybook name
- declared parameter count stored
- change event count stored
- documented routines stored
- copied-from copybook stored if any
- equivalent copybook stored if any
- reference inventory persisted without loss
- gap report created if required
- source discrepancy status updated if required
- any merge/update behavior worth noting

### 9. Visualization Query

Always provide at least one Cypher query that the user can run immediately to visualize the resulting subgraph.

The visualization query must prioritize hierarchical representation when a structural root exists.
If the copybook has a root container (for example level 01 such as `CI-REG`, `REG-...`, or copybook-specific root), build the graph as:

- `Copybook -> root`
- `root -> group`
- `group -> leaf`

using `HAS_CHILD_PARAM` for nested levels.

Do not flatten the structure by returning only `Copybook -[:DECLARES_PARAM]-> all params` when hierarchy exists.
Only use direct fallback visualization (`Copybook -> ParamType`) when no root hierarchy is materialized in the graph.

The query should return explicit relationship variables (or paths that include relationships) so edges are visible in Neo4j Browser.

The default visualization query should include:

- the `Copybook` node
- the root parameter container such as `CI-REG`
- all declared params
- all change events
- `AFFECTS_PARAM` relations
- hierarchy relations between parameter levels
- documented routines
- copied-from copybook if present
- equivalent copybook if present

When a hierarchy is present, this default query must include at least:

- one `DECLARES_PARAM` edge from `Copybook` to root
- one or more `HAS_CHILD_PARAM` edges from root toward descendants

Prefer a query shaped like:

- `MATCH (cb:Copybook {name:'...'}) ... RETURN cb, ...`

If useful, also provide a second cleaner graph-path query for Neo4j Browser.

## Worked Pattern

Use `SICCI218` as the reference pattern when the same type of evidence appears:

- `01 CI-REG` is the structural root container of the communication block
- active `CI-` fields are the declared parameter set
- `IGUAL A LA SICCI203` means documentary equivalence to another copybook
- `VRB585D` and `VRB586D` in comments are documentary routine references
- `MODIFICACION` plus `VARIABLES A MODIFICAR` expresses field history
- commented `05` lines can preserve older PIC definitions

If the target copybook does not match this pattern, say so explicitly and reduce the modeled output to what the evidence actually supports.

When a copybook like `SICCI204` contains both:

- `COPIA DEL SICCI203`
- `IGUAL A LA SICCI218`

you must preserve both references independently:

- provenance or derivation -> `COPIED_FROM_COPYBOOK`
- documentary/functional parity -> `EQUIVALENT_TO_COPYBOOK`

In that situation, the review must explicitly say that the copybook can descend from one source while remaining functionally aligned with another documentary interface, and that both facts are graph-relevant.

## Default Completion Rule

The task is only complete when all three conditions are true:

1. the copybook has been analyzed,
2. the supported content has been stored in Neo4j,
3. a visualization Cypher query has been returned to the user,
4. every documentary reference detected in the header has been classified and either materialized or explicitly rejected with evidence-based justification,
5. any reportable inconsistency detected by the review has been documented in a formal gap report under `docs/`.