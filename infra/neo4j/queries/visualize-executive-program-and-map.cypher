// ============================================================================
// VISUAL EXECUTIVE: Program + Process + Functional + UI High-Level + Data
// ============================================================================
// Uso recomendado en Neo4j Browser:
//   :param programName => 'ZM2OHA18'
//   :param mapName => 'ZMHA181'
//
// Objetivo:
// - Mostrar relaciones ejecutivas del programa sin ruido de detalle UI
// - Excluir explicitamente Paragraph, BmsField, UiLiteral y UiFunctionKey
// ============================================================================

CALL () {
  // 1) Programa -> Mapa (salida/presentacion)
  WITH $programName AS programName, $mapName AS mapName
  MATCH p=(prog:Program {name: programName})-[:PRESENTS_MAP]->(m:BmsMap)
  WHERE mapName IS NULL OR m.name = mapName
  RETURN p, '10_program_to_map' AS lane

  UNION

  // 2) Mapa -> Programa (entrada/submision)
  WITH $programName AS programName, $mapName AS mapName
  MATCH p=(m:BmsMap)-[:SUBMITS_INPUT_TO]->(prog:Program {name: programName})
  WHERE mapName IS NULL OR m.name = mapName
  RETURN p, '20_map_to_program' AS lane

  UNION

  // 3) Mapa <-> Mapset
  WITH $mapName AS mapName
  MATCH p=(ms:BmsMapset)-[:HAS_MAP]->(m:BmsMap)
  WHERE mapName IS NULL OR m.name = mapName
  RETURN p, '30_mapset' AS lane

  UNION

  // 4) Contexto de proceso (sin Paragraph)
  WITH $programName AS programName
  MATCH p=(prog:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)-[:HAS_STATE]->(:ProcessState)
  RETURN p, '40_process_context' AS lane

  UNION

  // 5) Contexto funcional (sin Paragraph)
  WITH $programName AS programName
  MATCH p=(prog:Program {name: programName})-[:IMPLEMENTS_FUNCTIONALITY]->(:Functionality)-[:HAS_SUBFUNCTIONALITY]->(:SubFunctionality)
  RETURN p, '50_functional_context' AS lane

  UNION

  // 6) Dependencias de datos
  WITH $programName AS programName
  MATCH p=(prog:Program {name: programName})-[:READS_TABLE|UPDATES_TABLE]->(:DBTable)
  RETURN p, '60_data_dependencies' AS lane

  UNION

  // 7) Puente fisico-logico: DBTable -> ParamType
  WITH $programName AS programName
  MATCH p=(prog:Program {name: programName})-[:READS_TABLE|UPDATES_TABLE]->(:DBTable)-[:STORES]->(:ParamType)
  RETURN p, '65_table_stores_paramtype' AS lane

  UNION

  // 8) Linaje de datos desde estados (via paragraph de entrada)
  WITH $programName AS programName
  MATCH p=(prog:Program {name: programName})-[:ORCHESTRATES_PROCESS]->(:ProcessFlow)-[:HAS_STATE]->(:ProcessState)-[:STATE_ENTRY_PARAGRAPH]->(:Paragraph {programName: programName})-[:READS_DATA|UPDATES_DATA|DERIVES_FROM]->(:ParamType)
  RETURN p, '70_state_data_lineage' AS lane

  UNION

  // 9) Puente semantico completo: Paragraph -> ParamType <- DBTable
  WITH $programName AS programName
  MATCH p=(prog:Program {name: programName})-[:HAS_PARAGRAPH]->(:Paragraph {programName: programName})-[:READS_DATA|UPDATES_DATA|DERIVES_FROM]->(:ParamType)<-[:STORES]-(:DBTable)
  RETURN p, '75_paragraph_paramtype_table' AS lane
}
WITH DISTINCT p, lane
RETURN p
ORDER BY lane
LIMIT 600;
