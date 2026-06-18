// ============================================================================
// AUDIT: Nodos con Propiedades Obligatorias Faltantes
// ============================================================================
// Propósito: Identificar todos los nodos que no cumplen con las propiedades
//           obligatorias definidas en la ontología.
//
// Propiedades Obligatorias (por categoría):
// - Transversales mínimas: ingestion, layer, nodeType, viewTag
// - Gobierno de revisión: reviewStatus, reviewRequired, reviewSource
// - Nodos con evidencia: evidenceFile, evidenceLines (en relaciones)
//
// Propiedades específicas por tipo de nodo:
// - Program: name (clave natural)
// - Paragraph: programName, name (clave natural compuesta)
// - Copybook: name (clave natural)
// - DBTable: name (clave natural)
// - ParamType: name (clave natural)
// - ExternalRoutine: name (clave natural)
// - OutputFile: name (clave natural)
// ============================================================================

// Regla de valor faltante:
// - NULL
// - string vacío o solo espacios
// - lista vacía ([])
WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon,
[
  {label: 'Program', keyFields: ['name']},
  {label: 'Paragraph', keyFields: ['programName', 'name', 'summary']},
  {label: 'Copybook', keyFields: ['name']},
  {label: 'DBTable', keyFields: ['name']},
  {label: 'ParamType', keyFields: ['name']},
  {label: 'ExternalRoutine', keyFields: ['name']},
  {label: 'OutputFile', keyFields: ['name']}
] AS config
UNWIND config AS cfg
MATCH (n)
WHERE cfg.label IN labels(n)
WITH cfg, n, mandatoryCommon + cfg.keyFields AS mandatoryFields
WITH cfg, n, mandatoryFields,
     [f IN mandatoryFields WHERE
       n[f] IS NULL
       OR n[f] = []
       OR trim(toString(n[f])) = ''
     ] AS missingFields
WHERE size(missingFields) > 0
RETURN
  cfg.label AS nodeType,
  CASE
    WHEN cfg.label = 'Paragraph'
      THEN coalesce(n.programName, '(sin programName)') + ':' + coalesce(n.name, '(sin name)')
    ELSE coalesce(n.name, '(sin name)')
  END AS nodeName,
  missingFields AS missingProperties,
  size(missingFields) AS missingCount,
  'MISSING_PROPERTIES' AS issueType
UNION
WITH [
  'limpieza pendiente',
  'nodo tecnico no funcional',
  'requiere limpieza',
  'placeholder',
  'todo'
] AS invalidSummaryTokens
MATCH (n:Paragraph)
WHERE n.summary IS NOT NULL
  AND (
    any(token IN invalidSummaryTokens WHERE toLower(toString(n.summary)) CONTAINS token)
    OR toLower(trim(toString(n.summary))) =~ '^parrafo .+ del programa .+\\.$'
  )
RETURN
  'Paragraph' AS nodeType,
  coalesce(n.programName, '(sin programName)') + ':' + coalesce(n.name, '(sin name)') AS nodeName,
  ['summary'] AS missingProperties,
  1 AS missingCount,
  'INVALID_SUMMARY_CONTENT' AS issueType
ORDER BY nodeType ASC, missingCount DESC;
