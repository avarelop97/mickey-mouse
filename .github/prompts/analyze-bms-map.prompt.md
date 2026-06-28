---
agent: ask
description: "Use when analyzing a CICS BMS map in mps/ for Neo4j graph modeling, especially to identify screen inputs with labels, function keys, owning COBOL programs, and reachable navigation targets"
---

# Analyze BMS Map For Graph Modeling

You are reviewing a BMS screen definition under `mps/` to represent its presentation-layer structure and navigation semantics in the Neo4j ontology.

## Goal

Produce a graph-oriented review of the BMS artifact as a real user interface contract, not only as a static text file.

This prompt must not stop at analysis. Unless the user explicitly asks for review-only mode, you must also materialize the extracted content into Neo4j and return at least one Cypher query that visualizes the resulting subgraph.

Your job is to extract graph knowledge from:

- the `DFHMSD` mapset definition
- the `DFHMDI` map definition
- the `DFHMDF` field definitions
- literal `INITIAL='...'` texts used as labels, headings, help text, and separators
- screen geometry such as row and column positions
- field attributes such as `PROT`, `ASKIP`, `FSET`, `UNPROT`, `IC`, `BRT`, `NORM`
- function-key help text embedded in the map
- the COBOL program or programs that `COPY` the BMS map
- the COBOL `SEND MAP` and `RECEIVE MAP` usage for the target map
- `EIBAID` handling in COBOL paragraphs for `ENTER` and `PF` keys
- program-to-program or transid-based navigation that can be evidenced from the COBOL source

## Input

Target map name: `${input:mapName:Name of the BMS map without extension, for example ZMCY291}`

Expected source path: `mps/${input:mapName}.bms`

## Required Review Protocol

1. Read the target BMS source and confirm the mapset and map name from `DFHMSD` and `DFHMDI`.
2. Identify the layout zones of the screen, at minimum:
   - header or operational context
   - user input area
   - messages or feedback area
   - command area if present
   - help-text or function-key area if present
3. Extract all `DFHMDF` fields and classify them as one of:
   - input
   - protected output
   - message
   - command
   - layout-only
4. Detect literal texts from `INITIAL='...'` and distinguish:
   - true labels for data input
   - headings or section labels
   - grid or column captions
   - help text for function keys
   - visual separators that should not be modeled as data labels
5. Associate each requested user value with its label or labels using position evidence.
   - If a single label governs a repeated grid of fields, preserve that repeated association.
   - If one parent label governs several direct inputs, preserve all valid associations.
6. Identify the owning COBOL program or programs by finding:
   - `COPY ${input:mapName}.`
   - `SEND MAP('${input:mapName}')`
   - `RECEIVE MAP('${input:mapName}')`
7. In the owning COBOL program, inspect `EIBAID` handling and identify which `ENTER` or `PF` keys are:
   - documented in the BMS help text
   - handled in program logic
   - documented but not evidenced in logic
   - handled in logic but not documented on screen
8. For each handled key, identify the local paragraph or subfunctionality it triggers.
9. If a key leads to another program or transaction:
   - resolve the target program when the workspace contains explicit evidence
   - if only a transid or indirect transfer is evidenced, preserve that fact without inventing a target program
10. Materialize the result in Neo4j with idempotent `MERGE` statements.
11. Validate that the graph content was stored correctly by checking at least:
   - `BmsMapset`
   - `BmsMap`
   - `BmsField` count
   - `UiLiteral` count
   - `UiFunctionKey` count
   - `LABELS_FIELD` count
   - `PRESENTS_MAP` and `USES_MAPSET` links to the owning program
12. Return at least one Cypher query that visualizes the resulting subgraph.

## Ontology Rules

When the evidence exists, interpret it using these graph rules:

- Model the mapset as `BmsMapset`.
- Model the concrete screen as `BmsMap`.
- Use the composite identity pattern already adopted in this repository:
  - `BmsMap.name = '<mapsetName>__<mapName>'`
  - also store `mapsetName` and `mapName` as properties
- Create `BmsField` nodes for concrete fields that matter to user interaction or output semantics.
- Create `UiLiteral` nodes for labels, help text, headings, and other meaningful literals.
- Link mapset to map with `HAS_MAP`.
- Link owning program to mapset with `USES_MAPSET`.
- Link owning program to map with `PRESENTS_MAP`.
- Link map to fields with `HAS_FIELD`.
- Link map to literals with `DISPLAYS_LITERAL`.
- Link literal to field with `LABELS_FIELD` when the literal truly labels or governs the field.
- Create `UiFunctionKey` nodes for `ENTER` and each relevant `PF` key that is documented or handled.
- Link map to function key with `SUPPORTS_KEY`.
- Create `SubFunctionality` nodes for handled key actions.
- Link function key to subfunctionality with `TRIGGERS_SUBFUNCTIONALITY`.
- Link subfunctionality to the implementing COBOL program with `IMPLEMENTED_BY`.
- If the evidence resolves a target program, link subfunctionality to that program with `TRANSFERS_TO_PROGRAM`.

## Interpretation Constraints

- Do not invent a program destination when the evidence only proves a transid or generic transfer routine.
- Do not force every literal into `LABELS_FIELD`; headings and separators must stay as `UiLiteral` only.
- Do not flatten repeated table-like inputs into one field when the BMS declares separate occurrences.
- Do not create a new ontology label just to represent unresolved navigation if existing labels and relationship properties are enough.
- Do not infer that a documented `PF` key is implemented unless the COBOL source shows real handling.
- Do not infer that a handled key was documented unless it is present in the BMS help text.
- Do not create temporary query files unless the user explicitly asks for them; prefer direct Cypher execution.
- Do not leave the result only in prose when Neo4j is available; persist it in the graph.

## Special Rules For Label Association

Apply these rules literally:

- A label immediately to the left of one input field should be linked to that field.
- A parent label such as `TIPO DE CAMBIO:` may label multiple child inputs when the screen layout clearly shows a grouped section.
- Column captions in a repeated grid may label multiple repeated fields of the same semantic column.
- Visual markers such as `!`, rulers, blank fillers, and underline rows should not be treated as labels.
- Help text lines should create `UiLiteral` nodes but should not be linked with `LABELS_FIELD`.

## Output Format

Return the review in these sections.

### 1. Classification

State:

- mapset name
- map name
- owning program or programs
- whether the screen is single-form, repeated-grid, multi-state, or mixed

### 2. Graph Summary

List the graph facts you would create:

- `BmsMapset`
- `BmsMap`
- `BmsField` count
- `UiLiteral` count
- `UiFunctionKey` count
- owning program count
- resolved transfer targets count
- unresolved navigation count

### 3. Screen Inputs

List all requested user values with:

- field name
- position
- length
- attribute set
- semantic role
- associated label or labels
- whether the field is repeated

### 4. Literals And Layout Semantics

List meaningful literals with:

- text
- position
- semantic class such as heading, label, help-text, column-label, message-prefix

### 5. Function Keys And Navigation

For each `ENTER` or `PF` key found, provide:

- key name
- action text from screen if present
- whether it is documented on screen
- whether it is handled in COBOL
- implementing paragraph or subfunctionality
- destination program if resolved
- transid if evidenced
- unresolved notes if not fully resolvable

### 6. Modeling Cautions

List only real cautions from the evidence, for example:

- documented key without program evidence
- handled key without screen documentation
- destination transid present but target program not resolvable in workspace
- repeated labels that require one-to-many field associations

### 7. Suggested Cypher Shape

Provide a short Cypher-oriented summary of the intended shape, not a full load script. Use lines like:

- `(:BmsMapset {name:'...'})-[:HAS_MAP]->(:BmsMap {name:'mapset__map'})`
- `(:UiLiteral {name:'...'})-[:LABELS_FIELD]->(:BmsField {name:'...'})`
- `(:BmsMap)-[:SUPPORTS_KEY]->(:UiFunctionKey {name:'...'})`
- `(:UiFunctionKey)-[:TRIGGERS_SUBFUNCTIONALITY]->(:SubFunctionality {name:'...'})`
- `(:SubFunctionality)-[:TRANSFERS_TO_PROGRAM]->(:Program {name:'...'})`

### 8. Visualization Query

Return at least one Cypher query that visualizes the resulting subgraph.