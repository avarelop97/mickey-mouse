// ============================================================================
// CONFORMANCE: Procedure family vs a golden REFERENCE procedure (shape diff)
// ============================================================================
// Purpose: take a known-good reference Procedure (default CCUPRFDF) as the
//          "developed" shape and flag every other Procedure that does NOT
//          replicate that structural signature.
//
// The reference signature is derived live from the graph (not hard-coded):
//   - does it declare variables / define DDs?
//   - do all its steps execute a program?
//   - does it wire steps to DDs via USES_DD?
//   - what property keys do its ProcStep/ProcVariable/ProcDD children carry?
//   - what is its relationship evidence coverage (expected 100%)?
//
// Parameters:
// - $referenceProcedure : name of the golden procedure (e.g. 'CCUPRFDF')
// - $procedureFilter    : list of procedure names. Empty list [] = all.
//
// Returns the uniform finding schema:
//   procedure, checkId, severity, category, detail, evidence
//
// Standalone run (cypher-shell):
//   :param referenceProcedure => 'CCUPRFDF';
//   :param procedureFilter => [];
//   :source infra/neo4j/queries/conformance-procedure-reference-shape.cypher
// ============================================================================

MATCH (ref:Procedure {name: $referenceProcedure})

// ---- reference structural signature (single row) ---------------------------
CALL { WITH ref MATCH (ref)-[:DEFINES_VARIABLE]->(v:ProcVariable) RETURN count(v) AS refVarCount }
CALL { WITH ref MATCH (ref)-[:DEFINES_DD]->(d:ProcDD) RETURN count(d) AS refDDCount }
CALL { WITH ref MATCH (ref)-[:HAS_STEP]->(s:ProcStep) RETURN count(s) AS refStepCount }
CALL { WITH ref MATCH (ref)-[:HAS_STEP]->(s:ProcStep) WHERE (s)-[:EXECUTES_PROGRAM]->(:ExternalRoutine) RETURN count(s) AS refStepExecCount }
CALL { WITH ref MATCH (ref)-[:HAS_STEP]->(:ProcStep)-[:USES_DD]->(:ProcDD) RETURN count(*) AS refUsesDD }
CALL { WITH ref MATCH (ref)-[:HAS_STEP]->(s:ProcStep) UNWIND keys(s) AS k RETURN collect(DISTINCT k) AS refStepKeys }
CALL { WITH ref MATCH (ref)-[:DEFINES_VARIABLE]->(v:ProcVariable) UNWIND keys(v) AS k RETURN collect(DISTINCT k) AS refVarKeys }
CALL { WITH ref MATCH (ref)-[:DEFINES_DD]->(d:ProcDD) UNWIND keys(d) AS k RETURN collect(DISTINCT k) AS refDDKeys }
CALL {
  WITH ref
  OPTIONAL MATCH (ref)-[r1:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->(c1)
  OPTIONAL MATCH (c1)-[r2:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|USES_CONTROL_CARD|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE|TARGETS_SYSOUT_CHANNEL]->(c2)
  WITH collect(DISTINCT r1) + collect(DISTINCT r2) AS rels
  RETURN
    toFloat(size([rel IN rels WHERE rel.evidenceFile IS NOT NULL AND trim(toString(rel.evidenceFile)) <> ''
                  AND rel.evidenceLines IS NOT NULL AND size(rel.evidenceLines) > 0])) AS refEvWith,
    toFloat(size(rels)) AS refEvTotal
}
WITH ref,
     (refVarCount > 0) AS refHasVars,
     (refDDCount > 0) AS refHasDDs,
     (refStepCount > 0 AND refStepExecCount = refStepCount) AS refStepsAllExec,
     (refUsesDD > 0) AS refHasUsesDD,
     refStepKeys, refVarKeys, refDDKeys,
     CASE WHEN refEvTotal = 0 THEN 1.0 ELSE refEvWith / refEvTotal END AS refEvCoverage

// ---- every target procedure (excluding the reference) ----------------------
MATCH (p:Procedure)
WHERE p.name <> $referenceProcedure
  AND (size($procedureFilter) = 0 OR p.name IN $procedureFilter)
CALL { WITH p MATCH (p)-[:DEFINES_VARIABLE]->(v:ProcVariable) RETURN count(v) AS varCount }
CALL { WITH p MATCH (p)-[:DEFINES_DD]->(d:ProcDD) RETURN count(d) AS ddCount }
CALL { WITH p MATCH (p)-[:HAS_STEP]->(s:ProcStep) RETURN count(s) AS stepCount }
CALL { WITH p MATCH (p)-[:HAS_STEP]->(s:ProcStep) WHERE (s)-[:EXECUTES_PROGRAM]->(:ExternalRoutine) RETURN count(s) AS stepExecCount }
CALL { WITH p MATCH (p)-[:HAS_STEP]->(:ProcStep)-[:USES_DD]->(:ProcDD) RETURN count(*) AS usesDD }
CALL { WITH p MATCH (p)-[:HAS_STEP]->(s:ProcStep) UNWIND keys(s) AS k RETURN collect(DISTINCT k) AS stepKeys }
CALL { WITH p MATCH (p)-[:DEFINES_VARIABLE]->(v:ProcVariable) UNWIND keys(v) AS k RETURN collect(DISTINCT k) AS varKeys }
CALL { WITH p MATCH (p)-[:DEFINES_DD]->(d:ProcDD) UNWIND keys(d) AS k RETURN collect(DISTINCT k) AS ddKeys }
CALL {
  WITH p
  OPTIONAL MATCH (p)-[r1:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->(c1)
  OPTIONAL MATCH (c1)-[r2:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|USES_CONTROL_CARD|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE|TARGETS_SYSOUT_CHANNEL]->(c2)
  WITH collect(DISTINCT r1) + collect(DISTINCT r2) AS rels
  RETURN
    toFloat(size([rel IN rels WHERE rel.evidenceFile IS NOT NULL AND trim(toString(rel.evidenceFile)) <> ''
                  AND rel.evidenceLines IS NOT NULL AND size(rel.evidenceLines) > 0])) AS evWith,
    toFloat(size(rels)) AS evTotal
}
WITH p, refStepsAllExec, refHasVars, refHasDDs, refHasUsesDD, refEvCoverage,
     refStepKeys, refVarKeys, refDDKeys,
     varCount, ddCount, stepCount, stepExecCount, usesDD,
     stepKeys, varKeys, ddKeys,
     CASE WHEN evTotal = 0 THEN 0.0 ELSE evWith / evTotal END AS evCoverage,
     [k IN refStepKeys WHERE NOT k IN stepKeys] AS missStepKeys,
     [k IN refVarKeys  WHERE NOT k IN varKeys]  AS missVarKeys,
     [k IN refDDKeys   WHERE NOT k IN ddKeys]   AS missDDKeys

WITH p, [f IN [
  CASE WHEN refHasVars AND varCount = 0
       THEN {checkId:'MISSING_VARIABLE_LAYER', severity:'medium',
             detail:'La referencia declara ProcVariable y este Procedure no tiene ninguna'} ELSE NULL END,
  CASE WHEN refHasDDs AND ddCount = 0
       THEN {checkId:'MISSING_DD_LAYER', severity:'medium',
             detail:'La referencia define ProcDD y este Procedure no tiene ninguna'} ELSE NULL END,
  CASE WHEN refStepsAllExec AND stepCount > 0 AND stepExecCount < stepCount
       THEN {checkId:'MISSING_STEP_EXEC_PATTERN', severity:'high',
             detail:toString(stepCount - stepExecCount) + ' de ' + toString(stepCount) +
                    ' pasos sin EXECUTES_PROGRAM (la referencia los tiene todos)'} ELSE NULL END,
  CASE WHEN refHasUsesDD AND ddCount > 0 AND usesDD = 0
       THEN {checkId:'MISSING_USES_DD_WIRING', severity:'medium',
             detail:'La referencia conecta ProcStep-USES_DD->ProcDD y este Procedure no lo hace'} ELSE NULL END,
  CASE WHEN evCoverage < refEvCoverage
       THEN {checkId:'EVIDENCE_COVERAGE_GAP', severity:'medium',
             detail:'Cobertura de evidencia ' + toString(toInteger(round(evCoverage * 100))) +
                    '% < referencia ' + toString(toInteger(round(refEvCoverage * 100))) + '%'} ELSE NULL END,
  CASE WHEN size(missStepKeys) > 0
       THEN {checkId:'PROPERTY_KEY_GAP', severity:'low',
             detail:'ProcStep sin propiedades presentes en la referencia: ' +
                    reduce(s = '', x IN missStepKeys | s + CASE WHEN s = '' THEN '' ELSE ', ' END + toString(x))} ELSE NULL END,
  CASE WHEN size(missVarKeys) > 0
       THEN {checkId:'PROPERTY_KEY_GAP', severity:'low',
             detail:'ProcVariable sin propiedades presentes en la referencia: ' +
                    reduce(s = '', x IN missVarKeys | s + CASE WHEN s = '' THEN '' ELSE ', ' END + toString(x))} ELSE NULL END,
  CASE WHEN size(missDDKeys) > 0
       THEN {checkId:'PROPERTY_KEY_GAP', severity:'low',
             detail:'ProcDD sin propiedades presentes en la referencia: ' +
                    reduce(s = '', x IN missDDKeys | s + CASE WHEN s = '' THEN '' ELSE ', ' END + toString(x))} ELSE NULL END
] WHERE f IS NOT NULL] AS findings
UNWIND findings AS f
RETURN
  p.name AS procedure,
  f.checkId AS checkId,
  f.severity AS severity,
  'reference-shape' AS category,
  f.detail AS detail,
  'ref=' + $referenceProcedure AS evidence
ORDER BY procedure ASC, severity ASC, checkId ASC;
