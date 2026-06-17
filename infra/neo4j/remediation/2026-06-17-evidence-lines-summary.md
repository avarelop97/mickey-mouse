# EvidenceLines remediation (2026-06-17)

## Scope detected
- Affected files:
  - src/CIB012D.cbl
  - src/CIB013M.cbl
  - src/ZM2CFI01.cbl
- Initial suspicious values (`evidenceLines >= 10000`):
  - src/CIB012D.cbl: 117 values, 19 relationships
  - src/CIB013M.cbl: 182 values, 26 relationships
  - src/ZM2CFI01.cbl: 7 values, 7 relationships

## Applied remediation
- Pass 1 script: `infra/neo4j/remediation/2026-06-17-evidence-lines-pass1.cypher`
  - Applied unambiguous mappings from sequence-based values to physical file lines.
- Pass 2 script: `infra/neo4j/remediation/2026-06-17-evidence-lines-pass2.cypher`
  - Retained only verifiable physical lines for remaining relationships.

## Validation query
```cypher
MATCH ()-[r]->()
WHERE r.evidenceFile IS NOT NULL
  AND r.evidenceLines IS NOT NULL
UNWIND r.evidenceLines AS ln
WITH r, ln
WHERE ln >= 10000
RETURN r.evidenceFile AS evidenceFile,
       count(*) AS suspiciousValues,
       count(DISTINCT elementId(r)) AS rels
ORDER BY evidenceFile;
```

## Result
- No rows returned after remediation.
