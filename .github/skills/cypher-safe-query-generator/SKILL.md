---
name: cypher-safe-query-generator
description: 'Generate Neo4j Cypher queries without common runtime and semantic errors. Use when asking for Cypher, Neo4j queries, audit queries, ingestion validation, UNION queries, dynamic property access, or ontology validation in this repository. Prevents scope errors, type errors, ambiguous merges, and ontology violations.'
argument-hint: 'Describe the goal, target labels/relations, required output columns, and Neo4j version if known.'
user-invocable: true
---

# Cypher Safe Query Generator

Use this skill whenever a user asks for a Cypher query in this repository.

## Why This Skill Exists

Default query generation can fail due to known pitfalls in this codebase:
- Variable scope resets across `UNION`
- Type errors from unsupported predicates or wrong function inputs
- Ambiguous `MERGE` patterns that violate ontology rules
- Missing mandatory governance fields
- Incomplete evidence checks for semantic relationships

## Source Of Truth

Always align generated queries with:
1. `docs/graph-ontology.md`
2. `docs/node-review-state-machine.md`
3. `docs/programa-ingestion-methodology.md`
4. `docs/agentic-cobol-neo4j-blueprint.md`

If there is a conflict, follow this order.

## Procedure

1. Confirm the objective type:
- Audit query
- Ingestion query
- Validation query
- Remediation query

2. Build the allowed domain first:
- Allowed labels: `Program`, `Paragraph`, `Copybook`, `DBTable`, `ParamType`, `ExternalRoutine`, `OutputFile`
- Allowed relations only from ontology matrix
- `Paragraph` identity is always composite: `(programName, name)`

3. Apply safe Cypher construction rules:
- For `UNION`, redeclare needed variables in each branch
- Keep identical return column names and types in all `UNION` branches
- Use `n[prop] IS NULL` for missing properties
- For empty string checks, use `trim(toString(n[prop])) = ''` only after null guard
- Never use node/relationship functions on scalar values
- Use `coalesce(...)` in display fields to avoid null concatenation failures
- Use explicit `WITH` boundaries before aggregation and filtering

4. Enforce governance and evidence:
- Include required fields in checks: `ingestion`, `layer`, `nodeType`, `viewTag`, `reviewStatus`, `reviewRequired`, `reviewSource`
- For semantic relations (`USES_COPYBOOK`, `READS_DATA`, `UPDATES_DATA`, `DERIVES_FROM`, `DEPENDS_ON_EXTERNAL`), require `evidenceFile` and non-empty `evidenceLines`

5. Run the embedded pre-delivery checklist in this file.

6. Deliver query with:
- Brief purpose comment
- Stable output columns
- Deterministic ordering when relevant

## Required Output Contract For Audit Queries

Prefer these columns unless user requests otherwise:
- `nodeType`
- `nodeName`
- `missingProperties`
- `missingCount`
- `issueType`

## Hard Safety Rules

- Do not generate labels or relations outside ontology.
- Do not generate `MERGE (p:Paragraph {name: ...})` without `programName`.
- Do not mark auto-generated data as reviewed by default.
- Do not omit evidence fields on semantic relationships.

## Quick Templates

### Missing mandatory properties by node type (safe pattern)

```cypher
WITH ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired','reviewSource'] AS mandatoryCommon
MATCH (n:Program)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields
WITH n, [f IN mandatoryFields WHERE n[f] IS NULL OR trim(toString(n[f])) = ''] AS missingFields
WHERE size(missingFields) > 0
RETURN
  'Program' AS nodeType,
  coalesce(n.name, '(sin name)') AS nodeName,
  missingFields AS missingProperties,
  size(missingFields) AS missingCount,
  'MISSING_PROPERTIES' AS issueType
```

### Safe UNION skeleton

```cypher
// Branch A
WITH ['fieldA'] AS cfg
MATCH (n:LabelA)
RETURN 'A' AS source, n.name AS name
UNION
// Branch B must redeclare cfg or define its own vars
WITH ['fieldB'] AS cfg
MATCH (n:LabelB)
RETURN 'B' AS source, n.name AS name
ORDER BY source, name
```

## Error-to-Fix Map

- `Variable X not defined` after `UNION`:
  - Fix: redeclare `X` in each branch.
- `Expected Node or Relationship but got String`:
  - Fix: remove type predicates/functions expecting graph values from scalar expressions.
  - Fix: use `toString(...)` guarded by null checks for empty-value validation.
- `Cannot merge node using null property value`:
  - Fix: guard required key fields before `MERGE`.
- Unexpected duplicates in `Paragraph`:
  - Fix: use composite key `(programName, name)` consistently.

## Pre-Delivery Checklist

1) Ontology compliance
- Labels are only: Program, Paragraph, Copybook, DBTable, ParamType, ExternalRoutine, OutputFile.
- Relationship types are only those defined in `docs/graph-ontology.md`.
- Paragraph key usage is composite: programName + name.

2) Scope and UNION safety
- Every UNION branch redeclares variables it uses.
- Every UNION branch returns same number/order/type of columns.
- ORDER BY is applied only to columns returned by all branches.

3) Null/empty handling
- Missing property checks use `n[prop] IS NULL`.
- Empty value checks use `trim(toString(n[prop])) = ''` after null guard.
- Display fields use `coalesce(...)` when concatenating potential nulls.

4) Type safety
- No node/relationship-only operations on scalar values.
- No unsupported type predicates for target Neo4j version.
- Dynamic property access `n[prop]` only where scalar expression is expected.

5) Governance and evidence
- Audit queries include mandatory governance checks:
  - ingestion, layer, nodeType, viewTag
  - reviewStatus, reviewRequired, reviewSource
- Semantic relationship checks require:
  - evidenceFile non-empty
  - evidenceLines non-empty array

6) Determinism and readability
- Output columns are stable and named.
- Query has deterministic ORDER BY when result order matters.
- Query includes a short purpose comment.

7) Dry validation
- Re-read query for WITH/UNION/CALL scope transitions.
- Confirm key fields used in MERGE are never null.
- Confirm syntax aligns with repository Neo4j usage patterns.
