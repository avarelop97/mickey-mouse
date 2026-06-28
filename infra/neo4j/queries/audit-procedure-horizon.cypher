// ============================================================================
// AUDIT PACK: Procedure Horizon and Cross-System Connectivity
// Scope: Neo4j local graph (operational layer + bridges to other domains)
// Usage: replace procedureName value in each query as needed
// ============================================================================

// ---------------------------------------------------------------------------
// Q1) Identify the target node and type by elementId
// ---------------------------------------------------------------------------
WITH '4:ee2ca281-e2ed-4fe4-ae41-d13a3e1b21e5:4720' AS targetElementId
MATCH (n)
WHERE elementId(n) = targetElementId
RETURN
  elementId(n) AS elementId,
  labels(n) AS labels,
  coalesce(n.name, n.stepName, n.ddName, n.dsn, '(sin identificador)') AS nodeName,
  n.nodeType AS nodeType,
  n.reviewStatus AS reviewStatus,
  n.reviewSource AS reviewSource,
  n.objective AS objective,
  n.description AS description;

// ---------------------------------------------------------------------------
// Q2) Completeness check for a Procedure node
// ---------------------------------------------------------------------------
WITH 'CASPREDF' AS procedureName,
     ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired','reviewSource','name','sourceFile','system','process','objective','description'] AS mandatory
MATCH (p:Procedure {name: procedureName})
WITH p, [f IN mandatory WHERE p[f] IS NULL OR trim(toString(p[f])) = ''] AS missing
RETURN
  p.name AS procedure,
  size(missing) AS missingCount,
  missing AS missingProperties;

// ---------------------------------------------------------------------------
// Q3) Structural horizon: how far this Procedure reaches by hop and label
// ---------------------------------------------------------------------------
WITH 'CASPREDF' AS procedureName
MATCH (p:Procedure {name: procedureName})
CALL {
  WITH p
  MATCH path=(p)-[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE*1..4]->(n)
  RETURN length(path) AS hop, labels(n)[0] AS nodeLabel, count(DISTINCT n) AS nodes
}
RETURN
  hop,
  nodeLabel,
  nodes
ORDER BY hop, nodeLabel;

// ---------------------------------------------------------------------------
// Q4) Evidence coverage by codebase domain (prc/src/cpy/jcl/other)
// ---------------------------------------------------------------------------
WITH 'CASPREDF' AS procedureName
MATCH (p:Procedure {name: procedureName})
MATCH path=(p)-[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE*1..4]->()
UNWIND relationships(path) AS r
WITH DISTINCT r.evidenceFile AS evidenceFile, r.evidenceLines AS evidenceLines
WHERE evidenceFile IS NOT NULL AND trim(toString(evidenceFile)) <> ''
RETURN
  CASE
    WHEN evidenceFile STARTS WITH 'src/' THEN 'src'
    WHEN evidenceFile STARTS WITH 'cpy/' THEN 'cpy'
    WHEN evidenceFile STARTS WITH 'prc/' THEN 'prc'
    WHEN evidenceFile STARTS WITH 'jcl/' THEN 'jcl'
    ELSE 'other'
  END AS fileDomain,
  evidenceFile,
  size(evidenceLines) AS evidenceSpan
ORDER BY fileDomain, evidenceFile;

// ---------------------------------------------------------------------------
// Q5) Cross-procedure bridges through shared hub nodes
//     Goal: expansion with horizon, not low-level density
// ---------------------------------------------------------------------------
WITH 'CASPREDF' AS procedureName
MATCH (p:Procedure {name: procedureName})
CALL {
  WITH p
  MATCH (p)-[:HAS_STEP]->(:ProcStep)-[:EXECUTES_PROGRAM]->(er:ExternalRoutine)
  OPTIONAL MATCH (otherSt:ProcStep)-[:EXECUTES_PROGRAM]->(er)
  OPTIONAL MATCH (otherP:Procedure)-[:HAS_STEP]->(otherSt)
  WITH p, er, [x IN collect(DISTINCT otherP.name) WHERE x IS NOT NULL AND x <> p.name] AS others
  RETURN collect({
    bridgeType: 'ExternalRoutine',
    bridgeNode: er.name,
    connectedProcedures: size(others),
    connectedProcedureNames: others
  }) AS routineRows
}
CALL {
  WITH p
  MATCH (p)-[:HAS_STEP]->(:ProcStep)-[:USES_DD]->(:ProcDD)-[:RESOLVES_TO_DATASET]->(rd:RuntimeDataset)
  OPTIONAL MATCH (:ProcDD)-[:RESOLVES_TO_DATASET]->(rd)<-[:RESOLVES_TO_DATASET]-(:ProcDD)<-[:USES_DD]-(otherSt:ProcStep)
  OPTIONAL MATCH (otherP:Procedure)-[:HAS_STEP]->(otherSt)
  WITH p, rd, [x IN collect(DISTINCT otherP.name) WHERE x IS NOT NULL AND x <> p.name] AS others
  RETURN collect({
    bridgeType: 'RuntimeDataset',
    bridgeNode: rd.dsn,
    connectedProcedures: size(others),
    connectedProcedureNames: others
  }) AS datasetRows
}
CALL {
  WITH p
  MATCH (p)-[:HAS_STEP]->(:ProcStep)-[:EMITS_CONDITION]->(sc:SchedulerCondition)
  OPTIONAL MATCH (otherSt:ProcStep)-[:EMITS_CONDITION]->(sc)
  OPTIONAL MATCH (otherP:Procedure)-[:HAS_STEP]->(otherSt)
  WITH p, sc, [x IN collect(DISTINCT otherP.name) WHERE x IS NOT NULL AND x <> p.name] AS others
  RETURN collect({
    bridgeType: 'SchedulerCondition',
    bridgeNode: sc.scheduler + '|' + sc.name + '|' + sc.dateScope,
    connectedProcedures: size(others),
    connectedProcedureNames: others
  }) AS conditionRows
}
WITH p, routineRows + datasetRows + conditionRows AS rows
UNWIND rows AS row
RETURN
  p.name AS procedure,
  row.bridgeType AS bridgeType,
  row.bridgeNode AS bridgeNode,
  row.connectedProcedures AS connectedProcedures,
  row.connectedProcedureNames AS connectedProcedureNames
ORDER BY connectedProcedures DESC, bridgeType, bridgeNode;

// ---------------------------------------------------------------------------
// Q6) Reach frontier: terminal nodes reachable from the Procedure
//     (nodes with no outgoing edge in the audited operational subgraph)
// ---------------------------------------------------------------------------
WITH 'CASPREDF' AS procedureName
MATCH (p:Procedure {name: procedureName})
MATCH path=(p)-[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE*1..5]->(n)
WITH DISTINCT n
WHERE NOT (n)-[:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE]->()
RETURN
  labels(n)[0] AS frontierLabel,
  coalesce(n.name, n.stepName, n.ddName, n.dsn, '(sin identificador)') AS frontierNode,
  n.description AS description
ORDER BY frontierLabel, frontierNode;

// ---------------------------------------------------------------------------
// Q7) Bridge from Procedure to core Program through shared ExternalRoutine
//     Path: Procedure -> ProcStep -> ExternalRoutine <- Program
// ---------------------------------------------------------------------------
WITH 'CASPREDF' AS procedureName
MATCH (p:Procedure {name: procedureName})-[:HAS_STEP]->(st:ProcStep)-[:EXECUTES_PROGRAM]->(er:ExternalRoutine)
OPTIONAL MATCH (prog:Program)-[:CALLS_ROUTINE]->(er)
RETURN
  p.name AS procedure,
  st.stepName AS stepName,
  er.name AS externalRoutine,
  count(DISTINCT prog) AS linkedPrograms,
  collect(DISTINCT prog.name)[0..30] AS programNames
ORDER BY linkedPrograms DESC, externalRoutine, stepName;

// ---------------------------------------------------------------------------
// Q8) System impact profile from bridged Programs
//     Shows which source/copybook/table/output artifacts become reachable
// ---------------------------------------------------------------------------
WITH 'CASPREDF' AS procedureName
MATCH (p:Procedure {name: procedureName})-[:HAS_STEP]->(:ProcStep)-[:EXECUTES_PROGRAM]->(er:ExternalRoutine)
MATCH (prog:Program)-[:CALLS_ROUTINE]->(er)
OPTIONAL MATCH (prog)-[:INCLUDES_COPYBOOK]->(cb:Copybook)
OPTIONAL MATCH (prog)-[:READS_TABLE|UPDATES_TABLE]->(tb:DBTable)
OPTIONAL MATCH (prog)-[:WRITES_FILE]->(out:OutputFile)
RETURN
  prog.name AS program,
  prog.sourceFile AS programSource,
  collect(DISTINCT cb.name)[0..30] AS copybooks,
  collect(DISTINCT tb.name)[0..30] AS tables,
  collect(DISTINCT out.name)[0..30] AS outputFiles,
  count(DISTINCT cb) AS copybookCount,
  count(DISTINCT tb) AS tableCount,
  count(DISTINCT out) AS outputFileCount
ORDER BY program;

// ---------------------------------------------------------------------------
// Q9) Bridge gap report: routines used by Procedure with no Program linkage
//     Focuses where to investigate outside PRC for missing core connectivity
// ---------------------------------------------------------------------------
WITH 'CASPREDF' AS procedureName
MATCH (p:Procedure {name: procedureName})-[:HAS_STEP]->(st:ProcStep)-[:EXECUTES_PROGRAM]->(er:ExternalRoutine)
OPTIONAL MATCH (prog:Program)-[:CALLS_ROUTINE]->(er)
WITH p, st, er, collect(DISTINCT prog.name) AS linkedPrograms
WITH p, st, er, [x IN linkedPrograms WHERE x IS NOT NULL] AS linkedPrograms
WHERE size(linkedPrograms) = 0
OPTIONAL MATCH (candidateProg:Program {name: er.name})
RETURN
  p.name AS procedure,
  st.stepName AS stepName,
  er.name AS externalRoutine,
  'NO_PROGRAM_BRIDGE' AS issueType,
  CASE WHEN candidateProg IS NULL THEN 'NO_NAME_MATCH_IN_PROGRAM' ELSE 'PROGRAM_NAME_MATCH_EXISTS_BUT_NO_CALLS_ROUTINE' END AS diagnosis,
  coalesce(candidateProg.name, '') AS candidateProgram,
  coalesce(candidateProg.sourceFile, '') AS candidateSourceFile
ORDER BY externalRoutine, stepName;

// ---------------------------------------------------------------------------
// Q10) Coverage score outside PRC from evidence perspective
//      Helps decide whether horizon already reaches src/cpy/jcl
// ---------------------------------------------------------------------------
WITH 'CASPREDF' AS procedureName
MATCH (p:Procedure {name: procedureName})
MATCH path=(p)-[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE*1..5]->()
UNWIND relationships(path) AS r
WITH DISTINCT r.evidenceFile AS evidenceFile
WHERE evidenceFile IS NOT NULL AND trim(toString(evidenceFile)) <> ''
WITH collect(evidenceFile) AS files
WITH files,
     [f IN files WHERE f STARTS WITH 'prc/'] AS prcFiles,
     [f IN files WHERE f STARTS WITH 'src/' OR f STARTS WITH 'cpy/' OR f STARTS WITH 'jcl/'] AS externalDomainFiles
RETURN
  size(files) AS totalEvidenceFiles,
  size(prcFiles) AS prcEvidenceFiles,
  size(externalDomainFiles) AS outsidePrcEvidenceFiles,
  CASE WHEN size(files) = 0 THEN 0.0 ELSE round((toFloat(size(externalDomainFiles)) / toFloat(size(files))) * 100.0, 2) END AS outsidePrcCoveragePct,
  externalDomainFiles[0..40] AS outsidePrcSamples;
