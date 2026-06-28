// ============================================================================
// ANNOTATE: conformidad de la familia Procedure escrita SOBRE los nodos
// ============================================================================
// Proposito: dejar la conformidad determinista (contrato + diff vs referencia)
//            como metadata en cada nodo, para poder VERLA en el grafo:
//   - Neo4j Browser colorea por label  -> etiqueta marcadora :ConfDeficient / :ConfWarn
//   - Bloom colorea por propiedad       -> regla sobre confStatus
//
// Escribe en cada nodo de la familia (Procedure/ProcStep/ProcVariable/ProcDD):
//   confStatus       : PASS | PASS_WITH_WARNINGS | DEFICIENT (estado LOCAL del nodo)
//   confSeverityTop  : blocker | high | medium | low | none
//   confIssues       : lista de "checkId: detalle"
//   confCheckedAt    : timestamp ISO
// En el nodo Procedure ademas:
//   confRollupStatus : peor estado entre el Procedure y sus hijos (para panorama)
//   confRef          : referencia usada en el diff de forma
//
// Idempotente: reescribe propiedades y recoloca etiquetas sin APOC (FOREACH).
// Ejecutar como script multi-statement (cypher-shell). Reversible con
// clear-procedure-conformance.cypher.
//
// Fuente de verdad: docs/graph-ontology.md y las plantillas
// conformance-procedure-*.cypher (mismas reglas, aqui a nivel de nodo).
// ============================================================================

:param referenceProcedure => 'CCUPRFDF';
:param procedureFilter => [];

// ----------------------------------------------------------------------------
// 1) ProcStep (checks locales)
// ----------------------------------------------------------------------------
MATCH (st:ProcStep)
WHERE size($procedureFilter) = 0 OR st.procedureName IN $procedureFilter
WITH st,
  [f IN ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired',
         'reviewSource','procedureName','stepName','execType','execTarget']
     WHERE st[f] IS NULL OR st[f] = [] OR trim(toString(st[f])) = ''] AS missing,
  size([(st)-[:EXECUTES_PROGRAM]->(er:ExternalRoutine) | er]) > 0 AS hasExec,
  [(st)<-[r:HAS_STEP]-(:Procedure) | r]
    + [(st)-[r:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|USES_CONTROL_CARD]->() | r] AS rels
WITH st, missing, hasExec,
  [r IN rels WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile)) = ''
     OR r.evidenceLines IS NULL OR size(r.evidenceLines) = 0] AS noEv,
  [v IN [
    CASE WHEN st.reviewStatus IS NOT NULL AND NOT st.reviewStatus IN ['pending_human_review','reviewed_human','rejected_human'] THEN 'reviewStatus=' + toString(st.reviewStatus) END,
    CASE WHEN st.reviewSource IS NOT NULL AND NOT st.reviewSource IN ['manual-seed','auto-ingestion','agent-reviewed'] THEN 'reviewSource=' + toString(st.reviewSource) END,
    CASE WHEN st.layer IS NOT NULL AND st.layer <> 'orchestration' THEN 'layer=' + toString(st.layer) END,
    CASE WHEN st.nodeType IS NOT NULL AND st.nodeType <> 'ProcStep' THEN 'nodeType=' + toString(st.nodeType) END,
    CASE WHEN st.viewTag IS NOT NULL AND st.viewTag <> 'jcl-proc-step' THEN 'viewTag=' + toString(st.viewTag) END
  ] WHERE v IS NOT NULL] AS valueViol,
  [v IN [
    CASE WHEN st.reviewStatus = 'reviewed_human' AND coalesce(st.reviewRequired, true) <> false THEN 'reviewed_human pero reviewRequired<>false' END,
    CASE WHEN st.reviewStatus IN ['pending_human_review','rejected_human'] AND coalesce(st.reviewRequired, false) <> true THEN toString(st.reviewStatus) + ' pero reviewRequired<>true' END,
    CASE WHEN st.reviewStatus IN ['reviewed_human','rejected_human'] AND (st.reviewedBy IS NULL OR trim(toString(st.reviewedBy)) = '' OR st.reviewedAt IS NULL OR trim(toString(st.reviewedAt)) = '') THEN 'falta reviewedBy/reviewedAt' END
  ] WHERE v IS NOT NULL] AS reviewViol
WITH st AS n, [i IN [
    CASE WHEN size(missing) > 0 THEN {checkId:'STEP_MISSING_PROP', severity:'high', detail:'faltan ' + reduce(s='',x IN missing | s + CASE WHEN s='' THEN '' ELSE ', ' END + toString(x))} END,
    CASE WHEN NOT hasExec THEN {checkId:'STEP_NO_EXECUTES_PROGRAM', severity:'high', detail:'sin EXECUTES_PROGRAM -> ExternalRoutine'} END,
    CASE WHEN size(noEv) > 0 THEN {checkId:'REL_MISSING_EVIDENCE', severity:'high', detail:toString(size(noEv)) + ' relacion(es) sin evidencia'} END,
    CASE WHEN size(valueViol) > 0 THEN {checkId:'INVALID_CONTROLLED_VALUE', severity:'high', detail:reduce(s='',x IN valueViol | s + CASE WHEN s='' THEN '' ELSE '; ' END + toString(x))} END,
    CASE WHEN size(reviewViol) > 0 THEN {checkId:'REVIEW_STATE_INCONSISTENT', severity:'medium', detail:reduce(s='',x IN reviewViol | s + CASE WHEN s='' THEN '' ELSE '; ' END + toString(x))} END
  ] WHERE i IS NOT NULL] AS issues
WITH n, issues,
  [i IN issues | i.checkId + ': ' + i.detail] AS confIssues,
  CASE WHEN any(i IN issues WHERE i.severity IN ['blocker','high']) THEN 'DEFICIENT'
       WHEN any(i IN issues WHERE i.severity IN ['medium','low']) THEN 'PASS_WITH_WARNINGS'
       ELSE 'PASS' END AS confStatus,
  CASE WHEN any(i IN issues WHERE i.severity='blocker') THEN 'blocker'
       WHEN any(i IN issues WHERE i.severity='high') THEN 'high'
       WHEN any(i IN issues WHERE i.severity='medium') THEN 'medium'
       WHEN any(i IN issues WHERE i.severity='low') THEN 'low'
       ELSE 'none' END AS confSeverityTop
SET n.confStatus = confStatus, n.confSeverityTop = confSeverityTop,
    n.confIssues = confIssues, n.confCheckedAt = toString(datetime())
FOREACH (_ IN CASE WHEN confStatus = 'DEFICIENT' THEN [1] ELSE [] END | SET n:ConfDeficient)
FOREACH (_ IN CASE WHEN confStatus <> 'DEFICIENT' THEN [1] ELSE [] END | REMOVE n:ConfDeficient)
FOREACH (_ IN CASE WHEN confStatus = 'PASS_WITH_WARNINGS' THEN [1] ELSE [] END | SET n:ConfWarn)
FOREACH (_ IN CASE WHEN confStatus <> 'PASS_WITH_WARNINGS' THEN [1] ELSE [] END | REMOVE n:ConfWarn);

// ----------------------------------------------------------------------------
// 2) ProcVariable (checks locales)
// ----------------------------------------------------------------------------
MATCH (pv:ProcVariable)
WHERE size($procedureFilter) = 0 OR pv.procedureName IN $procedureFilter
WITH pv,
  [f IN ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired',
         'reviewSource','procedureName','name','direction']
     WHERE pv[f] IS NULL OR pv[f] = [] OR trim(toString(pv[f])) = ''] AS missing,
  [(pv)<-[r:DEFINES_VARIABLE]-(:Procedure) | r]
    + [(pv)<-[r:ROUTES_TO_VARIABLE]-(:ProcDD) | r] AS rels
WITH pv, missing,
  [r IN rels WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile)) = ''
     OR r.evidenceLines IS NULL OR size(r.evidenceLines) = 0] AS noEv,
  [v IN [
    CASE WHEN pv.reviewStatus IS NOT NULL AND NOT pv.reviewStatus IN ['pending_human_review','reviewed_human','rejected_human'] THEN 'reviewStatus=' + toString(pv.reviewStatus) END,
    CASE WHEN pv.reviewSource IS NOT NULL AND NOT pv.reviewSource IN ['manual-seed','auto-ingestion','agent-reviewed'] THEN 'reviewSource=' + toString(pv.reviewSource) END,
    CASE WHEN pv.layer IS NOT NULL AND pv.layer <> 'orchestration' THEN 'layer=' + toString(pv.layer) END,
    CASE WHEN pv.nodeType IS NOT NULL AND pv.nodeType <> 'ProcVariable' THEN 'nodeType=' + toString(pv.nodeType) END,
    CASE WHEN pv.viewTag IS NOT NULL AND pv.viewTag <> 'jcl-proc-variable' THEN 'viewTag=' + toString(pv.viewTag) END
  ] WHERE v IS NOT NULL] AS valueViol,
  [v IN [
    CASE WHEN pv.reviewStatus = 'reviewed_human' AND coalesce(pv.reviewRequired, true) <> false THEN 'reviewed_human pero reviewRequired<>false' END,
    CASE WHEN pv.reviewStatus IN ['pending_human_review','rejected_human'] AND coalesce(pv.reviewRequired, false) <> true THEN toString(pv.reviewStatus) + ' pero reviewRequired<>true' END,
    CASE WHEN pv.reviewStatus IN ['reviewed_human','rejected_human'] AND (pv.reviewedBy IS NULL OR trim(toString(pv.reviewedBy)) = '' OR pv.reviewedAt IS NULL OR trim(toString(pv.reviewedAt)) = '') THEN 'falta reviewedBy/reviewedAt' END
  ] WHERE v IS NOT NULL] AS reviewViol
WITH pv AS n, [i IN [
    CASE WHEN size(missing) > 0 THEN {checkId:'VAR_MISSING_PROP', severity:'high', detail:'faltan ' + reduce(s='',x IN missing | s + CASE WHEN s='' THEN '' ELSE ', ' END + toString(x))} END,
    CASE WHEN size(noEv) > 0 THEN {checkId:'REL_MISSING_EVIDENCE', severity:'high', detail:toString(size(noEv)) + ' relacion(es) sin evidencia'} END,
    CASE WHEN size(valueViol) > 0 THEN {checkId:'INVALID_CONTROLLED_VALUE', severity:'high', detail:reduce(s='',x IN valueViol | s + CASE WHEN s='' THEN '' ELSE '; ' END + toString(x))} END,
    CASE WHEN size(reviewViol) > 0 THEN {checkId:'REVIEW_STATE_INCONSISTENT', severity:'medium', detail:reduce(s='',x IN reviewViol | s + CASE WHEN s='' THEN '' ELSE '; ' END + toString(x))} END
  ] WHERE i IS NOT NULL] AS issues
WITH n, issues,
  [i IN issues | i.checkId + ': ' + i.detail] AS confIssues,
  CASE WHEN any(i IN issues WHERE i.severity IN ['blocker','high']) THEN 'DEFICIENT'
       WHEN any(i IN issues WHERE i.severity IN ['medium','low']) THEN 'PASS_WITH_WARNINGS'
       ELSE 'PASS' END AS confStatus,
  CASE WHEN any(i IN issues WHERE i.severity='blocker') THEN 'blocker'
       WHEN any(i IN issues WHERE i.severity='high') THEN 'high'
       WHEN any(i IN issues WHERE i.severity='medium') THEN 'medium'
       WHEN any(i IN issues WHERE i.severity='low') THEN 'low'
       ELSE 'none' END AS confSeverityTop
SET n.confStatus = confStatus, n.confSeverityTop = confSeverityTop,
    n.confIssues = confIssues, n.confCheckedAt = toString(datetime())
FOREACH (_ IN CASE WHEN confStatus = 'DEFICIENT' THEN [1] ELSE [] END | SET n:ConfDeficient)
FOREACH (_ IN CASE WHEN confStatus <> 'DEFICIENT' THEN [1] ELSE [] END | REMOVE n:ConfDeficient)
FOREACH (_ IN CASE WHEN confStatus = 'PASS_WITH_WARNINGS' THEN [1] ELSE [] END | SET n:ConfWarn)
FOREACH (_ IN CASE WHEN confStatus <> 'PASS_WITH_WARNINGS' THEN [1] ELSE [] END | REMOVE n:ConfWarn);

// ----------------------------------------------------------------------------
// 3) ProcDD (checks locales + deriva de simbolo P-JCL-001)
// ----------------------------------------------------------------------------
MATCH (dd:ProcDD)
WHERE size($procedureFilter) = 0 OR dd.procedureName IN $procedureFilter
WITH dd,
  [f IN ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired',
         'reviewSource','procedureName','ddName','ddType']
     WHERE dd[f] IS NULL OR dd[f] = [] OR trim(toString(dd[f])) = ''] AS missing,
  size([(:ProcStep)-[u:USES_DD]->(dd) | u]) > 0 AS isUsed,
  [(dd)<-[r:DEFINES_DD]-(:Procedure) | r]
    + [(dd)<-[r:USES_DD]-(:ProcStep) | r]
    + [(dd)-[r:RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE|TARGETS_SYSOUT_CHANNEL]->() | r] AS rels,
  [x IN [(:Procedure {name: dd.procedureName})-[:DEFINES_VARIABLE]->(v:ProcVariable) | toUpper(trim(toString(v.name)))] WHERE x IS NOT NULL] AS declaredVars
WITH dd, missing, isUsed, declaredVars,
  [r IN rels WHERE r.evidenceFile IS NULL OR trim(toString(r.evidenceFile)) = ''
     OR r.evidenceLines IS NULL OR size(r.evidenceLines) = 0] AS noEv,
  CASE WHEN dd.observedRawVariable IS NOT NULL AND trim(toString(dd.observedRawVariable)) <> ''
            AND NOT toUpper(trim(toString(dd.observedRawVariable))) IN declaredVars
       THEN toUpper(trim(toString(dd.observedRawVariable))) ELSE NULL END AS driftSymbol,
  [v IN [
    CASE WHEN dd.reviewStatus IS NOT NULL AND NOT dd.reviewStatus IN ['pending_human_review','reviewed_human','rejected_human'] THEN 'reviewStatus=' + toString(dd.reviewStatus) END,
    CASE WHEN dd.reviewSource IS NOT NULL AND NOT dd.reviewSource IN ['manual-seed','auto-ingestion','agent-reviewed'] THEN 'reviewSource=' + toString(dd.reviewSource) END,
    CASE WHEN dd.layer IS NOT NULL AND dd.layer <> 'orchestration' THEN 'layer=' + toString(dd.layer) END,
    CASE WHEN dd.nodeType IS NOT NULL AND dd.nodeType <> 'ProcDD' THEN 'nodeType=' + toString(dd.nodeType) END,
    CASE WHEN dd.viewTag IS NOT NULL AND dd.viewTag <> 'jcl-proc-dd' THEN 'viewTag=' + toString(dd.viewTag) END
  ] WHERE v IS NOT NULL] AS valueViol,
  [v IN [
    CASE WHEN dd.reviewStatus = 'reviewed_human' AND coalesce(dd.reviewRequired, true) <> false THEN 'reviewed_human pero reviewRequired<>false' END,
    CASE WHEN dd.reviewStatus IN ['pending_human_review','rejected_human'] AND coalesce(dd.reviewRequired, false) <> true THEN toString(dd.reviewStatus) + ' pero reviewRequired<>true' END,
    CASE WHEN dd.reviewStatus IN ['reviewed_human','rejected_human'] AND (dd.reviewedBy IS NULL OR trim(toString(dd.reviewedBy)) = '' OR dd.reviewedAt IS NULL OR trim(toString(dd.reviewedAt)) = '') THEN 'falta reviewedBy/reviewedAt' END
  ] WHERE v IS NOT NULL] AS reviewViol
WITH dd AS n, [i IN [
    CASE WHEN size(missing) > 0 THEN {checkId:'DD_MISSING_PROP', severity:'high', detail:'faltan ' + reduce(s='',x IN missing | s + CASE WHEN s='' THEN '' ELSE ', ' END + toString(x))} END,
    CASE WHEN driftSymbol IS NOT NULL THEN {checkId:'ROUTING_SYMBOL_DRIFT', severity:'high', detail:'enruta al simbolo no declarado ' + driftSymbol} END,
    CASE WHEN NOT isUsed THEN {checkId:'DD_NOT_USED', severity:'medium', detail:'sin USES_DD desde ningun ProcStep'} END,
    CASE WHEN size(noEv) > 0 THEN {checkId:'REL_MISSING_EVIDENCE', severity:'high', detail:toString(size(noEv)) + ' relacion(es) sin evidencia'} END,
    CASE WHEN size(valueViol) > 0 THEN {checkId:'INVALID_CONTROLLED_VALUE', severity:'high', detail:reduce(s='',x IN valueViol | s + CASE WHEN s='' THEN '' ELSE '; ' END + toString(x))} END,
    CASE WHEN size(reviewViol) > 0 THEN {checkId:'REVIEW_STATE_INCONSISTENT', severity:'medium', detail:reduce(s='',x IN reviewViol | s + CASE WHEN s='' THEN '' ELSE '; ' END + toString(x))} END
  ] WHERE i IS NOT NULL] AS issues
WITH n, issues,
  [i IN issues | i.checkId + ': ' + i.detail] AS confIssues,
  CASE WHEN any(i IN issues WHERE i.severity IN ['blocker','high']) THEN 'DEFICIENT'
       WHEN any(i IN issues WHERE i.severity IN ['medium','low']) THEN 'PASS_WITH_WARNINGS'
       ELSE 'PASS' END AS confStatus,
  CASE WHEN any(i IN issues WHERE i.severity='blocker') THEN 'blocker'
       WHEN any(i IN issues WHERE i.severity='high') THEN 'high'
       WHEN any(i IN issues WHERE i.severity='medium') THEN 'medium'
       WHEN any(i IN issues WHERE i.severity='low') THEN 'low'
       ELSE 'none' END AS confSeverityTop
SET n.confStatus = confStatus, n.confSeverityTop = confSeverityTop,
    n.confIssues = confIssues, n.confCheckedAt = toString(datetime())
FOREACH (_ IN CASE WHEN confStatus = 'DEFICIENT' THEN [1] ELSE [] END | SET n:ConfDeficient)
FOREACH (_ IN CASE WHEN confStatus <> 'DEFICIENT' THEN [1] ELSE [] END | REMOVE n:ConfDeficient)
FOREACH (_ IN CASE WHEN confStatus = 'PASS_WITH_WARNINGS' THEN [1] ELSE [] END | SET n:ConfWarn)
FOREACH (_ IN CASE WHEN confStatus <> 'PASS_WITH_WARNINGS' THEN [1] ELSE [] END | REMOVE n:ConfWarn);

// ----------------------------------------------------------------------------
// 4) Procedure (checks propios de contrato + diff de forma vs referencia)
// ----------------------------------------------------------------------------
MATCH (ref:Procedure {name: $referenceProcedure})
WITH ref,
  size([(ref)-[:DEFINES_VARIABLE]->(v) | v]) > 0 AS refHasVars,
  size([(ref)-[:DEFINES_DD]->(d) | d]) > 0 AS refHasDDs,
  size([(ref)-[:HAS_STEP]->(s) | s]) AS refStepCount,
  size([(ref)-[:HAS_STEP]->(s:ProcStep) WHERE (s)-[:EXECUTES_PROGRAM]->(:ExternalRoutine) | s]) AS refStepExec,
  size([(ref)-[:HAS_STEP]->(:ProcStep)-[:USES_DD]->(d:ProcDD) | d]) > 0 AS refHasUsesDD,
  [(ref)-[r:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->() | r]
    + [(ref)-[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->()-[r2:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|USES_CONTROL_CARD|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE|TARGETS_SYSOUT_CHANNEL]->() | r2] AS refRels
WITH ref, refHasVars, refHasDDs, refHasUsesDD,
  (refStepCount > 0 AND refStepExec = refStepCount) AS refStepsAllExec,
  CASE WHEN size(refRels) = 0 THEN 1.0
       ELSE toFloat(size([r IN refRels WHERE r.evidenceFile IS NOT NULL AND trim(toString(r.evidenceFile)) <> '' AND r.evidenceLines IS NOT NULL AND size(r.evidenceLines) > 0])) / toFloat(size(refRels)) END AS refEvCov
MATCH (p:Procedure)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
WITH ref, refHasVars, refHasDDs, refStepsAllExec, refHasUsesDD, refEvCov, p,
  [f IN ['ingestion','layer','nodeType','viewTag','reviewStatus','reviewRequired','reviewSource',
         'name','sourceFile','system','process','objective','description']
     WHERE p[f] IS NULL OR p[f] = [] OR trim(toString(p[f])) = ''] AS missing,
  size([(p)-[:HAS_STEP]->(s) | s]) AS stepCount,
  size([(p)-[:HAS_STEP]->(s:ProcStep) WHERE (s)-[:EXECUTES_PROGRAM]->(:ExternalRoutine) | s]) AS stepExec,
  size([(p)-[:DEFINES_VARIABLE]->(v) | v]) AS varCount,
  size([(p)-[:DEFINES_DD]->(d) | d]) AS ddCount,
  size([(p)-[:HAS_STEP]->(:ProcStep)-[:USES_DD]->(d:ProcDD) | d]) AS usesDD,
  [(p)-[r:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->() | r]
    + [(p)-[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->()-[r2:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|USES_CONTROL_CARD|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE|TARGETS_SYSOUT_CHANNEL]->() | r2] AS relsP
WITH ref, refHasVars, refHasDDs, refStepsAllExec, refHasUsesDD, refEvCov, p, missing,
  stepCount, stepExec, varCount, ddCount, usesDD,
  CASE WHEN size(relsP) = 0 THEN 0.0
       ELSE toFloat(size([r IN relsP WHERE r.evidenceFile IS NOT NULL AND trim(toString(r.evidenceFile)) <> '' AND r.evidenceLines IS NOT NULL AND size(r.evidenceLines) > 0])) / toFloat(size(relsP)) END AS evCov,
  [v IN [
    CASE WHEN p.reviewStatus IS NOT NULL AND NOT p.reviewStatus IN ['pending_human_review','reviewed_human','rejected_human'] THEN 'reviewStatus=' + toString(p.reviewStatus) END,
    CASE WHEN p.reviewSource IS NOT NULL AND NOT p.reviewSource IN ['manual-seed','auto-ingestion','agent-reviewed'] THEN 'reviewSource=' + toString(p.reviewSource) END,
    CASE WHEN p.layer IS NOT NULL AND p.layer <> 'orchestration' THEN 'layer=' + toString(p.layer) END,
    CASE WHEN p.nodeType IS NOT NULL AND p.nodeType <> 'Procedure' THEN 'nodeType=' + toString(p.nodeType) END,
    CASE WHEN p.viewTag IS NOT NULL AND p.viewTag <> 'jcl-proc' THEN 'viewTag=' + toString(p.viewTag) END
  ] WHERE v IS NOT NULL] AS valueViol,
  [v IN [
    CASE WHEN p.reviewStatus = 'reviewed_human' AND coalesce(p.reviewRequired, true) <> false THEN 'reviewed_human pero reviewRequired<>false' END,
    CASE WHEN p.reviewStatus IN ['pending_human_review','rejected_human'] AND coalesce(p.reviewRequired, false) <> true THEN toString(p.reviewStatus) + ' pero reviewRequired<>true' END,
    CASE WHEN p.reviewStatus IN ['reviewed_human','rejected_human'] AND (p.reviewedBy IS NULL OR trim(toString(p.reviewedBy)) = '' OR p.reviewedAt IS NULL OR trim(toString(p.reviewedAt)) = '') THEN 'falta reviewedBy/reviewedAt' END
  ] WHERE v IS NOT NULL] AS reviewViol
WITH ref, p AS n, [i IN [
    CASE WHEN size(missing) > 0 THEN {checkId:'PROC_MISSING_MANDATORY_PROP', severity:'blocker', detail:'faltan ' + reduce(s='',x IN missing | s + CASE WHEN s='' THEN '' ELSE ', ' END + toString(x))} END,
    CASE WHEN stepCount = 0 THEN {checkId:'PROC_NO_STEPS', severity:'blocker', detail:'sin ProcStep (HAS_STEP)'} END,
    CASE WHEN varCount = 0 THEN {checkId:'PROC_NO_VARIABLES', severity:'medium', detail:'sin ProcVariable (DEFINES_VARIABLE)'} END,
    CASE WHEN ddCount = 0 THEN {checkId:'PROC_NO_DDS', severity:'medium', detail:'sin ProcDD (DEFINES_DD)'} END,
    CASE WHEN size(valueViol) > 0 THEN {checkId:'INVALID_CONTROLLED_VALUE', severity:'high', detail:reduce(s='',x IN valueViol | s + CASE WHEN s='' THEN '' ELSE '; ' END + toString(x))} END,
    CASE WHEN size(reviewViol) > 0 THEN {checkId:'REVIEW_STATE_INCONSISTENT', severity:'medium', detail:reduce(s='',x IN reviewViol | s + CASE WHEN s='' THEN '' ELSE '; ' END + toString(x))} END,
    CASE WHEN refHasVars AND varCount = 0 THEN {checkId:'MISSING_VARIABLE_LAYER', severity:'medium', detail:'la referencia declara variables y este no'} END,
    CASE WHEN refHasDDs AND ddCount = 0 THEN {checkId:'MISSING_DD_LAYER', severity:'medium', detail:'la referencia define DDs y este no'} END,
    CASE WHEN refStepsAllExec AND stepCount > 0 AND stepExec < stepCount THEN {checkId:'MISSING_STEP_EXEC_PATTERN', severity:'high', detail:toString(stepCount - stepExec) + ' de ' + toString(stepCount) + ' pasos sin EXECUTES_PROGRAM'} END,
    CASE WHEN refHasUsesDD AND ddCount > 0 AND usesDD = 0 THEN {checkId:'MISSING_USES_DD_WIRING', severity:'medium', detail:'la referencia conecta ProcStep-USES_DD->ProcDD y este no'} END,
    CASE WHEN evCov < refEvCov THEN {checkId:'EVIDENCE_COVERAGE_GAP', severity:'medium', detail:'cobertura de evidencia ' + toString(toInteger(round(evCov*100))) + '% < referencia ' + toString(toInteger(round(refEvCov*100))) + '%'} END
  ] WHERE i IS NOT NULL] AS issues
WITH n, ref, issues,
  [i IN issues | i.checkId + ': ' + i.detail] AS confIssues,
  CASE WHEN any(i IN issues WHERE i.severity IN ['blocker','high']) THEN 'DEFICIENT'
       WHEN any(i IN issues WHERE i.severity IN ['medium','low']) THEN 'PASS_WITH_WARNINGS'
       ELSE 'PASS' END AS confStatus,
  CASE WHEN any(i IN issues WHERE i.severity='blocker') THEN 'blocker'
       WHEN any(i IN issues WHERE i.severity='high') THEN 'high'
       WHEN any(i IN issues WHERE i.severity='medium') THEN 'medium'
       WHEN any(i IN issues WHERE i.severity='low') THEN 'low'
       ELSE 'none' END AS confSeverityTop
SET n.confStatus = confStatus, n.confSeverityTop = confSeverityTop,
    n.confIssues = confIssues, n.confCheckedAt = toString(datetime()), n.confRef = ref.name
FOREACH (_ IN CASE WHEN confStatus = 'DEFICIENT' THEN [1] ELSE [] END | SET n:ConfDeficient)
FOREACH (_ IN CASE WHEN confStatus <> 'DEFICIENT' THEN [1] ELSE [] END | REMOVE n:ConfDeficient)
FOREACH (_ IN CASE WHEN confStatus = 'PASS_WITH_WARNINGS' THEN [1] ELSE [] END | SET n:ConfWarn)
FOREACH (_ IN CASE WHEN confStatus <> 'PASS_WITH_WARNINGS' THEN [1] ELSE [] END | REMOVE n:ConfWarn);

// ----------------------------------------------------------------------------
// 5) Rollup en el Procedure (peor estado entre el y sus hijos) — propiedad
//    (se ejecuta al final, cuando hijos y Procedure ya tienen confStatus)
// ----------------------------------------------------------------------------
MATCH (p:Procedure)
WHERE size($procedureFilter) = 0 OR p.name IN $procedureFilter
WITH p, [s IN ([p.confStatus] + [(p)-[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD]->(c) | c.confStatus]) WHERE s IS NOT NULL] AS statuses
SET p.confRollupStatus =
  CASE WHEN any(s IN statuses WHERE s = 'DEFICIENT') THEN 'DEFICIENT'
       WHEN any(s IN statuses WHERE s = 'PASS_WITH_WARNINGS') THEN 'PASS_WITH_WARNINGS'
       ELSE 'PASS' END;
