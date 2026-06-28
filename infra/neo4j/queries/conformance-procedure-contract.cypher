// ============================================================================
// CONFORMANCE: Procedure family vs ontology contract (deterministic)
// ============================================================================
// Purpose: find Procedure nodes (and their ProcStep/ProcVariable/ProcDD
//          children) that do NOT replicate the developed structure, by
//          checking them against the fixed contract in docs/graph-ontology.md.
//
// Source of truth:
// - docs/graph-ontology.md (labels, relations, mandatory props, evidence)
// - docs/node-review-state-machine.md (review state semantics)
// - infra/neo4j/queries/audit-procedure-routing-symbol-drift.cypher (P-JCL-001)
// - infra/neo4j/queries/proposed-ingest-ccuprfdf-procedure-extension.cypher
//
// Parameters:
// - $procedureFilter : list of procedure names. Empty list [] = all procedures.
//
// Every arm returns the uniform finding schema:
//   procedure, checkId, severity, category, detail, evidence
//
// Standalone run (cypher-shell):
//   :param procedureFilter => [];
//   :source infra/neo4j/queries/conformance-procedure-contract.cypher
// ============================================================================

// --- 1) PROC_MISSING_MANDATORY_PROP (blocker) -------------------------------
WITH ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired',
      'reviewSource','name','sourceFile','system','process','objective','description'] AS mandatory
MATCH (p:Procedure)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
WITH p, [f IN mandatory WHERE p[f] IS NULL OR p[f] = [] OR trim(toString(p[f])) = ''] AS missing
WHERE size(missing) > 0
RETURN
  p.name AS procedure,
  'PROC_MISSING_MANDATORY_PROP' AS checkId,
  'blocker' AS severity,
  'contract-procedure' AS category,
  'Faltan propiedades obligatorias del Procedure: ' +
    reduce(s = '', x IN missing | s + CASE WHEN s = '' THEN '' ELSE ', ' END + toString(x)) AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 2) PROC_NO_STEPS (blocker) ---------------------------------------------
MATCH (p:Procedure)
WHERE (size($procedureFilter) = 0 OR p.name IN $procedureFilter)
  AND NOT (p)-[:HAS_STEP]->(:ProcStep)
RETURN
  p.name AS procedure,
  'PROC_NO_STEPS' AS checkId,
  'blocker' AS severity,
  'contract-procedure' AS category,
  'El Procedure no tiene ningun ProcStep (HAS_STEP)' AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 3) PROC_NO_VARIABLES (medium) ------------------------------------------
MATCH (p:Procedure)
WHERE (size($procedureFilter) = 0 OR p.name IN $procedureFilter)
  AND NOT (p)-[:DEFINES_VARIABLE]->(:ProcVariable)
RETURN
  p.name AS procedure,
  'PROC_NO_VARIABLES' AS checkId,
  'medium' AS severity,
  'contract-procedure' AS category,
  'El Procedure no declara ninguna ProcVariable (DEFINES_VARIABLE)' AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 4) PROC_NO_DDS (medium) ------------------------------------------------
MATCH (p:Procedure)
WHERE (size($procedureFilter) = 0 OR p.name IN $procedureFilter)
  AND NOT (p)-[:DEFINES_DD]->(:ProcDD)
RETURN
  p.name AS procedure,
  'PROC_NO_DDS' AS checkId,
  'medium' AS severity,
  'contract-procedure' AS category,
  'El Procedure no define ninguna ProcDD (DEFINES_DD)' AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 5) STEP_MISSING_PROP (high) --------------------------------------------
WITH ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired',
      'reviewSource','procedureName','stepName','execType','execTarget'] AS mandatory
MATCH (p:Procedure)-[:HAS_STEP]->(st:ProcStep)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
WITH p, st, [f IN mandatory WHERE st[f] IS NULL OR st[f] = [] OR trim(toString(st[f])) = ''] AS missing
WHERE size(missing) > 0
RETURN
  p.name AS procedure,
  'STEP_MISSING_PROP' AS checkId,
  'high' AS severity,
  'contract-step' AS category,
  'ProcStep ' + coalesce(st.stepName, '(sin stepName)') + ' incompleto: faltan ' +
    reduce(s = '', x IN missing | s + CASE WHEN s = '' THEN '' ELSE ', ' END + toString(x)) AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 6) STEP_NO_EXECUTES_PROGRAM (high) -------------------------------------
MATCH (p:Procedure)-[:HAS_STEP]->(st:ProcStep)
WHERE (size($procedureFilter) = 0 OR p.name IN $procedureFilter)
  AND NOT (st)-[:EXECUTES_PROGRAM]->(:ExternalRoutine)
RETURN
  p.name AS procedure,
  'STEP_NO_EXECUTES_PROGRAM' AS checkId,
  'high' AS severity,
  'contract-step' AS category,
  'ProcStep ' + coalesce(st.stepName, '(sin stepName)') +
    ' no invoca ningun programa (falta EXECUTES_PROGRAM -> ExternalRoutine)' AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 7) DD_MISSING_PROP (high) ----------------------------------------------
WITH ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired',
      'reviewSource','procedureName','ddName','ddType'] AS mandatory
MATCH (p:Procedure)-[:DEFINES_DD]->(dd:ProcDD)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
WITH p, dd, [f IN mandatory WHERE dd[f] IS NULL OR dd[f] = [] OR trim(toString(dd[f])) = ''] AS missing
WHERE size(missing) > 0
RETURN
  p.name AS procedure,
  'DD_MISSING_PROP' AS checkId,
  'high' AS severity,
  'contract-dd' AS category,
  'ProcDD ' + coalesce(dd.ddName, '(sin ddName)') + ' incompleto: faltan ' +
    reduce(s = '', x IN missing | s + CASE WHEN s = '' THEN '' ELSE ', ' END + toString(x)) AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 8) DD_NOT_USED (medium) ------------------------------------------------
MATCH (p:Procedure)-[:DEFINES_DD]->(dd:ProcDD)
WHERE (size($procedureFilter) = 0 OR p.name IN $procedureFilter)
  AND NOT (:ProcStep)-[:USES_DD]->(dd)
RETURN
  p.name AS procedure,
  'DD_NOT_USED' AS checkId,
  'medium' AS severity,
  'contract-dd' AS category,
  'ProcDD ' + coalesce(dd.ddName, '(sin ddName)') +
    ' no es usado por ningun ProcStep (falta USES_DD)' AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 9) REL_MISSING_EVIDENCE (high) -----------------------------------------
// Operational relationships reachable from the Procedure (<= 2 hops cover all).
WITH ['HAS_STEP','DEFINES_VARIABLE','DEFINES_DD','IMPACTS_JOB','USES_DD',
      'EXECUTES_PROGRAM','EMITS_CONDITION','USES_CONTROL_CARD','RESOLVES_TO_DATASET',
      'ROUTES_TO_VARIABLE','TARGETS_SYSOUT_CHANNEL'] AS relOrder
MATCH (p:Procedure)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
OPTIONAL MATCH (p)-[r1:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->(c1)
OPTIONAL MATCH (c1)-[r2:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|USES_CONTROL_CARD|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE|TARGETS_SYSOUT_CHANNEL]->(c2)
WITH p, relOrder, collect(DISTINCT r1) + collect(DISTINCT r2) AS rels
WITH p, relOrder,
     [rel IN rels WHERE rel.evidenceFile IS NULL OR trim(toString(rel.evidenceFile)) = ''
        OR rel.evidenceLines IS NULL OR size(rel.evidenceLines) = 0] AS missingRels
WHERE size(missingRels) > 0
WITH p, missingRels, [t IN relOrder WHERE t IN [rel IN missingRels | type(rel)]] AS missTypes
RETURN
  p.name AS procedure,
  'REL_MISSING_EVIDENCE' AS checkId,
  'high' AS severity,
  'contract-evidence' AS category,
  toString(size(missingRels)) + ' relacion(es) sin evidencia (evidenceFile/evidenceLines): ' +
    reduce(s = '', x IN missTypes | s + CASE WHEN s = '' THEN '' ELSE ', ' END + toString(x)) AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 10) INVALID_CONTROLLED_VALUE (high) ------------------------------------
// Applies to the Procedure node and its direct children.
MATCH (p:Procedure)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
OPTIONAL MATCH (p)-[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD]->(c)
WITH p, collect(DISTINCT c) AS kids
UNWIND ([p] + kids) AS n
WITH DISTINCT p, n
WITH p, n, labels(n)[0] AS lbl,
     CASE labels(n)[0]
       WHEN 'Procedure' THEN 'jcl-proc'
       WHEN 'ProcStep' THEN 'jcl-proc-step'
       WHEN 'ProcVariable' THEN 'jcl-proc-variable'
       WHEN 'ProcDD' THEN 'jcl-proc-dd'
       ELSE NULL
     END AS expViewTag
WITH p, n, lbl,
     [v IN [
       CASE WHEN n.reviewStatus IS NOT NULL AND NOT n.reviewStatus IN ['pending_human_review','reviewed_human','rejected_human']
            THEN 'reviewStatus=' + toString(n.reviewStatus) ELSE NULL END,
       CASE WHEN n.reviewSource IS NOT NULL AND NOT n.reviewSource IN ['manual-seed','auto-ingestion','agent-reviewed']
            THEN 'reviewSource=' + toString(n.reviewSource) ELSE NULL END,
       CASE WHEN n.layer IS NOT NULL AND n.layer <> 'orchestration'
            THEN 'layer=' + toString(n.layer) + ' (esperado orchestration)' ELSE NULL END,
       CASE WHEN n.nodeType IS NOT NULL AND n.nodeType <> lbl
            THEN 'nodeType=' + toString(n.nodeType) + ' (esperado ' + lbl + ')' ELSE NULL END,
       CASE WHEN n.viewTag IS NOT NULL AND expViewTag IS NOT NULL AND n.viewTag <> expViewTag
            THEN 'viewTag=' + toString(n.viewTag) + ' (esperado ' + expViewTag + ')' ELSE NULL END
     ] WHERE v IS NOT NULL] AS violations
WHERE size(violations) > 0
RETURN
  p.name AS procedure,
  'INVALID_CONTROLLED_VALUE' AS checkId,
  'high' AS severity,
  'contract-value' AS category,
  lbl + ' ' + coalesce(n.name, n.stepName, n.ddName, '(s/id)') + ': ' +
    reduce(s = '', x IN violations | s + CASE WHEN s = '' THEN '' ELSE '; ' END + toString(x)) AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 11) REVIEW_STATE_INCONSISTENT (medium) ---------------------------------
MATCH (p:Procedure)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
OPTIONAL MATCH (p)-[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD]->(c)
WITH p, collect(DISTINCT c) AS kids
UNWIND ([p] + kids) AS n
WITH DISTINCT p, n
WITH p, n, labels(n)[0] AS lbl,
     [v IN [
       CASE WHEN n.reviewStatus = 'reviewed_human' AND coalesce(n.reviewRequired, true) <> false
            THEN 'reviewed_human pero reviewRequired<>false' ELSE NULL END,
       CASE WHEN n.reviewStatus IN ['pending_human_review','rejected_human'] AND coalesce(n.reviewRequired, false) <> true
            THEN toString(n.reviewStatus) + ' pero reviewRequired<>true' ELSE NULL END,
       CASE WHEN n.reviewStatus IN ['reviewed_human','rejected_human']
            AND (n.reviewedBy IS NULL OR trim(toString(n.reviewedBy)) = ''
                 OR n.reviewedAt IS NULL OR trim(toString(n.reviewedAt)) = '')
            THEN 'falta reviewedBy/reviewedAt para estado ' + toString(n.reviewStatus) ELSE NULL END
     ] WHERE v IS NOT NULL] AS violations
WHERE size(violations) > 0
RETURN
  p.name AS procedure,
  'REVIEW_STATE_INCONSISTENT' AS checkId,
  'medium' AS severity,
  'contract-review' AS category,
  lbl + ' ' + coalesce(n.name, n.stepName, n.ddName, '(s/id)') + ': ' +
    reduce(s = '', x IN violations | s + CASE WHEN s = '' THEN '' ELSE '; ' END + toString(x)) AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 12) ROUTING_SYMBOL_DRIFT (high) — P-JCL-001 ----------------------------
MATCH (p:Procedure)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
OPTIONAL MATCH (p)-[:DEFINES_VARIABLE]->(pv:ProcVariable)
WITH p, collect(toUpper(trim(toString(pv.name)))) AS declared
MATCH (p)-[:DEFINES_DD]->(dd:ProcDD)
WHERE dd.observedRawVariable IS NOT NULL
  AND trim(toString(dd.observedRawVariable)) <> ''
  AND NOT toUpper(trim(toString(dd.observedRawVariable))) IN declared
RETURN
  p.name AS procedure,
  'ROUTING_SYMBOL_DRIFT' AS checkId,
  'high' AS severity,
  'contract-drift' AS category,
  'ProcDD ' + coalesce(dd.ddName, '(sin ddName)') + ' enruta al simbolo no declarado ' +
    toUpper(trim(toString(dd.observedRawVariable))) + ' (declarados: ' +
    reduce(s = '', x IN declared | s + CASE WHEN s = '' THEN '' ELSE ', ' END + toString(x)) + ')' AS detail,
  coalesce(p.sourceFile, '(sin sourceFile)') AS evidence

UNION ALL
// --- 13) ORPHAN_CHILD (medium) ----------------------------------------------
MATCH (n)
WHERE any(l IN labels(n) WHERE l IN ['Procedure','ProcStep','ProcVariable','ProcDD'])
  AND NOT (n)--()
  AND (size($procedureFilter) = 0 OR coalesce(n.name, n.procedureName) IN $procedureFilter)
RETURN
  coalesce(n.procedureName, n.name, '(desconocido)') AS procedure,
  'ORPHAN_CHILD' AS checkId,
  'medium' AS severity,
  'contract-orphan' AS category,
  labels(n)[0] + ' ' + coalesce(n.name, n.stepName, n.ddName, '(s/id)') + ' no tiene ninguna relacion' AS detail,
  coalesce(n.sourceFile, '') AS evidence

ORDER BY procedure ASC, severity ASC, checkId ASC;
