# Cypher Safety Checklist

Run this checklist before delivering any Cypher query.

## 1) Ontology Compliance

- Labels are only: `Program`, `Paragraph`, `Copybook`, `DBTable`, `ParamType`, `ExternalRoutine`, `OutputFile`.
- Relationship types are only those defined in `docs/graph-ontology.md`.
- `Paragraph` key usage is composite: `programName` + `name`.

## 2) Scope And UNION Safety

- Every `UNION` branch redeclares variables it uses.
- Every `UNION` branch returns same number/order/type of columns.
- `ORDER BY` is applied only to columns returned by all branches.

## 3) Null/Empty Handling

- Missing property check uses: `n[prop] IS NULL`.
- Empty value check uses: `trim(toString(n[prop])) = ''` after null guard.
- Display fields use `coalesce(...)` when concatenating potential nulls.

## 4) Type Safety

- No node/relationship-only operations applied to scalar values.
- No unsupported type predicates for target Neo4j version.
- Dynamic property access uses `n[prop]` only where scalar expression is expected.

## 5) Governance And Evidence

- Audit queries include mandatory governance checks:
  - `ingestion`, `layer`, `nodeType`, `viewTag`
  - `reviewStatus`, `reviewRequired`, `reviewSource`
- Semantic relationship checks require:
  - `evidenceFile` non-empty
  - `evidenceLines` non-empty array

## 6) Determinism And Readability

- Output columns are stable and named.
- Query has deterministic `ORDER BY` when result order matters.
- Query includes short header comment with purpose.

## 7) Pre-Delivery Dry Validation

- Re-read query for variable scope transitions (`WITH`, `UNION`, `CALL {}` if used).
- Confirm no branch can return null key fields used in `MERGE`.
- Confirm syntax is compatible with repository Neo4j usage patterns.
