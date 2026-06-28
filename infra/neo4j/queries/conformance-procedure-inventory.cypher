// ============================================================================
// CONFORMANCE: Procedure family structural inventory (one row per Procedure)
// ============================================================================
// Purpose: backbone table for the conformance dashboard. Counts the children
//          and relationships of every Procedure and its evidence coverage, so
//          the UI can rank procedures and join the per-procedure findings.
//
// Parameters:
// - $procedureFilter : list of procedure names. Empty list [] = all.
//
// Returns one row per Procedure:
//   procedure, reviewStatus, reviewSource, sourceFile,
//   stepCount, variableCount, ddCount, execProgramCount, usesDDCount,
//   evidenceWith, evidenceTotal, evidenceCoveragePct
//
// Standalone run (cypher-shell):
//   :param procedureFilter => [];
//   :source infra/neo4j/queries/conformance-procedure-inventory.cypher
// ============================================================================

MATCH (p:Procedure)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
CALL { WITH p MATCH (p)-[:HAS_STEP]->(s:ProcStep) RETURN count(s) AS stepCount }
CALL { WITH p MATCH (p)-[:DEFINES_VARIABLE]->(v:ProcVariable) RETURN count(v) AS variableCount }
CALL { WITH p MATCH (p)-[:DEFINES_DD]->(d:ProcDD) RETURN count(d) AS ddCount }
CALL { WITH p MATCH (p)-[:HAS_STEP]->(s:ProcStep)-[:EXECUTES_PROGRAM]->(:ExternalRoutine) RETURN count(DISTINCT s) AS execProgramCount }
CALL { WITH p MATCH (p)-[:HAS_STEP]->(:ProcStep)-[:USES_DD]->(d:ProcDD) RETURN count(DISTINCT d) AS usesDDCount }
CALL {
  WITH p
  OPTIONAL MATCH (p)-[r1:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->(c1)
  OPTIONAL MATCH (c1)-[r2:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|USES_CONTROL_CARD|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE|TARGETS_SYSOUT_CHANNEL]->(c2)
  WITH collect(DISTINCT r1) + collect(DISTINCT r2) AS rels
  RETURN
    size([rel IN rels WHERE rel.evidenceFile IS NOT NULL AND trim(toString(rel.evidenceFile)) <> ''
          AND rel.evidenceLines IS NOT NULL AND size(rel.evidenceLines) > 0]) AS evidenceWith,
    size(rels) AS evidenceTotal
}
RETURN
  p.name AS procedure,
  coalesce(p.reviewStatus, '') AS reviewStatus,
  coalesce(p.reviewSource, '') AS reviewSource,
  coalesce(p.sourceFile, '') AS sourceFile,
  stepCount,
  variableCount,
  ddCount,
  execProgramCount,
  usesDDCount,
  evidenceWith,
  evidenceTotal,
  CASE WHEN evidenceTotal = 0 THEN 0.0
       ELSE round(toFloat(evidenceWith) / toFloat(evidenceTotal) * 100.0, 1) END AS evidenceCoveragePct
ORDER BY procedure ASC;
