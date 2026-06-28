// ============================================================================
// VISUAL: Process Abstraction (Program -> ProcessFlow -> ProcessState)
// ============================================================================
// Uso recomendado en Neo4j Browser:
//   :param programName => 'ZM2OHA18'
//
// Este archivo incluye 2 variantes:
// 1) VARIANTE A (completa): proceso + UI + contexto funcional
// 2) VARIANTE B (solo proceso): vista limpia de estados/transiciones
//
// Ejecuta una sola variante a la vez.
// ============================================================================

// ---------------------------------------------------------------------------
// VARIANTE A: Completa (proceso + UI + funcional)
// ---------------------------------------------------------------------------
CALL () {
  // 1) Programa y flujo de proceso
  WITH $programName AS programName
  MATCH p=(prog:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)
  RETURN p, '10_program_process' AS lane

  UNION

  // 2) Flujo -> estados
  WITH $programName AS programName
  MATCH p=(:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)-[:HAS_STATE]->(:ProcessState)
  RETURN p, '20_process_states' AS lane

  UNION

  // 3) Transiciones entre estados
  WITH $programName AS programName
  MATCH p=(:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)-[:HAS_STATE]->(s1:ProcessState)-[:TRANSITIONS_TO]->(s2:ProcessState)
  WHERE s1.programName = programName AND s2.programName = programName
  RETURN p, '30_state_transitions' AS lane

  UNION

  // 4) Estado -> paragraph de entrada
  WITH $programName AS programName
  MATCH p=(:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)-[:HAS_STATE]->(:ProcessState)-[:STATE_ENTRY_PARAGRAPH]->(:Paragraph {programName: programName})
  RETURN p, '40_state_entry_paragraph' AS lane

  UNION

  // 5) Teclas UI que disparan estados (si existen)
  WITH $programName AS programName
  MATCH p=(:UiFunctionKey)-[:TRIGGERS_STATE]->(:ProcessState {programName: programName})
  RETURN p, '50_ui_triggers_state' AS lane

  UNION

  // 6) Contexto funcional para comparar capas
  WITH $programName AS programName
  MATCH p=(:Program {name: programName})-[:IMPLEMENTS_FUNCTIONALITY]->(:Functionality)-[:HAS_SUBFUNCTIONALITY]->(:SubFunctionality)
  RETURN p, '60_functional_context' AS lane

  UNION

  // 7) Conexión subfuncionalidad -> paragraph (solo entry paragraphs del proceso)
  WITH $programName AS programName
  MATCH (:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)-[:HAS_STATE]->(:ProcessState)-[:STATE_ENTRY_PARAGRAPH]->(par:Paragraph {programName: programName})
  MATCH p=(:SubFunctionality)-[:REALIZED_BY]->(par)
  RETURN p, '70_subfunction_to_entry_paragraph' AS lane
}
WITH DISTINCT p, lane
WITH p, lane,
     reduce(
       minLine = 99999999,
       n IN [x IN nodes(p) WHERE x:Paragraph] |
       CASE
         WHEN n.startLine IS NULL THEN minLine
         WHEN toInteger(n.startLine) < minLine THEN toInteger(n.startLine)
         ELSE minLine
       END
     ) AS pathStartLine
RETURN p
ORDER BY lane ASC, pathStartLine ASC
LIMIT 600;

// ---------------------------------------------------------------------------
// VARIANTE B: Solo Proceso (limpia)
// ---------------------------------------------------------------------------
// CALL () {
//   WITH $programName AS programName
//   MATCH p=(prog:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)
//   RETURN p, '10_program_process' AS lane
//
//   UNION
//
//   WITH $programName AS programName
//   MATCH p=(:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)-[:HAS_STATE]->(:ProcessState)
//   RETURN p, '20_process_states' AS lane
//
//   UNION
//
//   WITH $programName AS programName
//   MATCH p=(:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)-[:HAS_STATE]->(s1:ProcessState)-[:TRANSITIONS_TO]->(s2:ProcessState)
//   WHERE s1.programName = programName AND s2.programName = programName
//   RETURN p, '30_state_transitions' AS lane
//
//   UNION
//
//   WITH $programName AS programName
//   MATCH p=(:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)-[:HAS_STATE]->(:ProcessState)-[:STATE_ENTRY_PARAGRAPH]->(:Paragraph {programName: programName})
//   RETURN p, '40_state_entry_paragraph' AS lane
// }
// WITH DISTINCT p, lane
// WITH p, lane,
//      reduce(
//        minLine = 99999999,
//        n IN [x IN nodes(p) WHERE x:Paragraph] |
//        CASE
//          WHEN n.startLine IS NULL THEN minLine
//          WHEN toInteger(n.startLine) < minLine THEN toInteger(n.startLine)
//          ELSE minLine
//        END
//      ) AS pathStartLine
// RETURN p
// ORDER BY lane ASC, pathStartLine ASC
// LIMIT 400;
