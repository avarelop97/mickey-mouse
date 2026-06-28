// ============================================================================
// REMEDIATION: Remove deprecated Program -> USES_PARAM_TYPE -> ParamType
// ============================================================================
// Regla de migracion:
// - Mantener tipado de datos via Program -> READS_TABLE/UPDATES_TABLE -> DBTable
// - Mantener puente fisico-logico via DBTable -> STORES -> ParamType
// - Mantener semantica fina via Paragraph -> READS_DATA/UPDATES_DATA/DERIVES_FROM -> ParamType
//
// Seguridad:
// - Solo elimina USES_PARAM_TYPE cuando exista camino Program->DBTable->STORES->ParamType
// ============================================================================

// 1) Inventario previo
MATCH (p:Program)-[r:USES_PARAM_TYPE]->(pt:ParamType)
OPTIONAL MATCH (p)-[:READS_TABLE|UPDATES_TABLE]->(t:DBTable)-[:STORES]->(pt)
RETURN p.name AS program,
       pt.name AS paramType,
       count(DISTINCT t) AS bridgeTables,
       CASE WHEN count(DISTINCT t) > 0 THEN 'SAFE_TO_DELETE' ELSE 'BLOCKED_NO_BRIDGE' END AS decision
ORDER BY program, paramType;

// 2) Delete seguro (solo migrables)
MATCH (p:Program)-[r:USES_PARAM_TYPE]->(pt:ParamType)
WHERE EXISTS {
  MATCH (p)-[:READS_TABLE|UPDATES_TABLE]->(:DBTable)-[:STORES]->(pt)
}
DELETE r;

// 3) Verificacion final
MATCH (:Program)-[r:USES_PARAM_TYPE]->(:ParamType)
RETURN count(r) AS usesParamTypeRemaining;
