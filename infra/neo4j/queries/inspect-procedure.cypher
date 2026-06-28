// ============================================================================
// INSPECT: visualizar e inspeccionar un Procedure en Neo4j Browser
// ============================================================================
// Consultas de SOLO LECTURA. Copia el bloque que necesites en Browser.
// Requisito para el color/los hallazgos: haber corrido antes
//   annotate-procedure-conformance.cypher  (escribe conf* + :ConfDeficient/:ConfWarn)
// Aplica el estilo infra/neo4j/conformance-procedure-style.grass para ver
// los nodos deficientes en rojo y los de aviso en ambar.
//
// Cada bloque usa parametros de Browser:  :param procedureName => 'CASPREDF';
// ============================================================================


// ----------------------------------------------------------------------------
// PANORAMA) Todos los Procedures por estado de conformidad (rollup)
//   Sustituye al ranking de la app retirada. Vista de tabla.
// ----------------------------------------------------------------------------
MATCH (p:Procedure)
RETURN
  p.name                                   AS procedimiento,
  coalesce(p.confRollupStatus, '(sin anotar)') AS rollup,
  coalesce(p.confStatus, '(sin anotar)')   AS propio,
  size(coalesce(p.confIssues, []))         AS issuesPropias,
  coalesce(p.confRef, '')                  AS referencia
ORDER BY
  CASE coalesce(p.confRollupStatus, 'z')
    WHEN 'DEFICIENT' THEN 0 WHEN 'PASS_WITH_WARNINGS' THEN 1 WHEN 'PASS' THEN 2 ELSE 3 END,
  procedimiento;


// ----------------------------------------------------------------------------
// A) Subgrafo completo de UN Procedure  (vista de grafo)
//   Procedure -> steps / variables / DDs -> programas / datasets / variables /
//   condiciones / tarjetas de control / canales SYSOUT (+ jobs impactados).
// ----------------------------------------------------------------------------
:param procedureName => 'CASPREDF';

MATCH path1 = (proc:Procedure {name: $procedureName})
              -[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->(child)
OPTIONAL MATCH path2 = (child)
              -[:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|USES_CONTROL_CARD|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE|TARGETS_SYSOUT_CHANNEL]->(leaf)
RETURN path1, path2;


// ----------------------------------------------------------------------------
// B) Hallazgos a nivel de nodo de UN Procedure  (vista de tabla)
//   Lista exactamente que esta mal y por que, ordenado por severidad.
// ----------------------------------------------------------------------------
:param procedureName => 'CASPREDF';

MATCH (n)
WHERE (n:Procedure AND n.name = $procedureName)
   OR ((n:ProcStep OR n:ProcVariable OR n:ProcDD) AND n.procedureName = $procedureName)
WITH n
WHERE coalesce(n.confStatus, 'PASS') <> 'PASS'
RETURN
  labels(n)[0]                                     AS tipo,
  coalesce(n.name, n.stepName, n.ddName, '(s/id)') AS nodo,
  n.confStatus                                     AS estado,
  n.confSeverityTop                                AS severidad,
  n.confIssues                                     AS hallazgos
ORDER BY
  CASE n.confSeverityTop
    WHEN 'blocker' THEN 0 WHEN 'high' THEN 1 WHEN 'medium' THEN 2 WHEN 'low' THEN 3 ELSE 4 END,
  tipo, nodo;


// ----------------------------------------------------------------------------
// C) Target vs Referencia  (vista de grafo, dos subgrafos lado a lado)
//   Compara a ojo la forma del procedimiento contra la referencia golden.
// ----------------------------------------------------------------------------
:param procedureName => 'CASPREDF';
:param referenceProcedure => 'CCUPRFDF';

MATCH path1 = (proc:Procedure)
              -[:HAS_STEP|DEFINES_VARIABLE|DEFINES_DD|IMPACTS_JOB]->(child)
WHERE proc.name IN [$procedureName, $referenceProcedure]
OPTIONAL MATCH path2 = (child)
              -[:USES_DD|EXECUTES_PROGRAM|EMITS_CONDITION|USES_CONTROL_CARD|RESOLVES_TO_DATASET|ROUTES_TO_VARIABLE|TARGETS_SYSOUT_CHANNEL]->(leaf)
RETURN path1, path2;
