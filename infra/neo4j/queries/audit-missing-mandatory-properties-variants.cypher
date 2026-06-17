// ============================================================================
// AUDIT: Variantes de Auditoría de Propiedades Obligatorias
// ============================================================================

// ============================================================================
// VARIANTE 1: Resumen Agregado (Cuántos nodos tienen problemas)
// ============================================================================

WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon

// Program
MATCH (n:Program)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields,
     [f IN mandatoryCommon + ['name'] WHERE NOT f IN keys(n)] AS missingFields
WHERE size(missingFields) > 0
RETURN 'Program' AS nodeType, count(n) AS incompleteNodeCount

UNION ALL

// Paragraph
MATCH (n:Paragraph)
WITH n, mandatoryCommon + ['programName', 'name'] AS mandatoryFields,
     [f IN mandatoryCommon + ['programName', 'name'] WHERE NOT f IN keys(n)] AS missingFields
WHERE size(missingFields) > 0
RETURN 'Paragraph' AS nodeType, count(n) AS incompleteNodeCount

UNION ALL

// Copybook
MATCH (n:Copybook)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields,
     [f IN mandatoryCommon + ['name'] WHERE NOT f IN keys(n)] AS missingFields
WHERE size(missingFields) > 0
RETURN 'Copybook' AS nodeType, count(n) AS incompleteNodeCount

UNION ALL

// DBTable
MATCH (n:DBTable)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields,
     [f IN mandatoryCommon + ['name'] WHERE NOT f IN keys(n)] AS missingFields
WHERE size(missingFields) > 0
RETURN 'DBTable' AS nodeType, count(n) AS incompleteNodeCount

UNION ALL

// ParamType
MATCH (n:ParamType)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields,
     [f IN mandatoryCommon + ['name'] WHERE NOT f IN keys(n)] AS missingFields
WHERE size(missingFields) > 0
RETURN 'ParamType' AS nodeType, count(n) AS incompleteNodeCount

UNION ALL

// ExternalRoutine
MATCH (n:ExternalRoutine)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields,
     [f IN mandatoryCommon + ['name'] WHERE NOT f IN keys(n)] AS missingFields
WHERE size(missingFields) > 0
RETURN 'ExternalRoutine' AS nodeType, count(n) AS incompleteNodeCount

UNION ALL

// OutputFile
MATCH (n:OutputFile)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields,
     [f IN mandatoryCommon + ['name'] WHERE NOT f IN keys(n)] AS missingFields
WHERE size(missingFields) > 0
RETURN 'OutputFile' AS nodeType, count(n) AS incompleteNodeCount

ORDER BY incompleteNodeCount DESC;

// ============================================================================
// VARIANTE 2: Agrupar por Propiedad Faltante (Qué propiedades faltan más)
// ============================================================================

WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon

// Program
MATCH (n:Program)
WITH 'Program' AS nType, n, mandatoryCommon + ['name'] AS mandatoryFields
WITH nType, [f IN mandatoryFields WHERE NOT f IN keys(n)] AS missingFields
UNWIND missingFields AS missingField
RETURN nType AS nodeType, missingField AS missingProperty, count(*) AS nodeCount

UNION ALL

// Paragraph
MATCH (n:Paragraph)
WITH 'Paragraph' AS nType, n, mandatoryCommon + ['programName', 'name'] AS mandatoryFields
WITH nType, [f IN mandatoryFields WHERE NOT f IN keys(n)] AS missingFields
UNWIND missingFields AS missingField
RETURN nType AS nodeType, missingField AS missingProperty, count(*) AS nodeCount

UNION ALL

// Copybook
MATCH (n:Copybook)
WITH 'Copybook' AS nType, n, mandatoryCommon + ['name'] AS mandatoryFields
WITH nType, [f IN mandatoryFields WHERE NOT f IN keys(n)] AS missingFields
UNWIND missingFields AS missingField
RETURN nType AS nodeType, missingField AS missingProperty, count(*) AS nodeCount

UNION ALL

// DBTable
MATCH (n:DBTable)
WITH 'DBTable' AS nType, n, mandatoryCommon + ['name'] AS mandatoryFields
WITH nType, [f IN mandatoryFields WHERE NOT f IN keys(n)] AS missingFields
UNWIND missingFields AS missingField
RETURN nType AS nodeType, missingField AS missingProperty, count(*) AS nodeCount

UNION ALL

// ParamType
MATCH (n:ParamType)
WITH 'ParamType' AS nType, n, mandatoryCommon + ['name'] AS mandatoryFields
WITH nType, [f IN mandatoryFields WHERE NOT f IN keys(n)] AS missingFields
UNWIND missingFields AS missingField
RETURN nType AS nodeType, missingField AS missingProperty, count(*) AS nodeCount

UNION ALL

// ExternalRoutine
MATCH (n:ExternalRoutine)
WITH 'ExternalRoutine' AS nType, n, mandatoryCommon + ['name'] AS mandatoryFields
WITH nType, [f IN mandatoryFields WHERE NOT f IN keys(n)] AS missingFields
UNWIND missingFields AS missingField
RETURN nType AS nodeType, missingField AS missingProperty, count(*) AS nodeCount

UNION ALL

// OutputFile
MATCH (n:OutputFile)
WITH 'OutputFile' AS nType, n, mandatoryCommon + ['name'] AS mandatoryFields
WITH nType, [f IN mandatoryFields WHERE NOT f IN keys(n)] AS missingFields
UNWIND missingFields AS missingField
RETURN nType AS nodeType, missingField AS missingProperty, count(*) AS nodeCount

ORDER BY nodeCount DESC, nodeType ASC;

// ============================================================================
// VARIANTE 3: Solo Nodos Completamente Incompletos (Verificar Corrupción)
// ============================================================================

WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon

MATCH (n)
WHERE NOT n:ProgramFacet
WITH n, labels(n)[0] AS primaryLabel,
     CASE primaryLabel
       WHEN 'Program' THEN mandatoryCommon + ['name']
       WHEN 'Paragraph' THEN mandatoryCommon + ['programName', 'name']
       WHEN 'Copybook' THEN mandatoryCommon + ['name']
       WHEN 'DBTable' THEN mandatoryCommon + ['name']
       WHEN 'ParamType' THEN mandatoryCommon + ['name']
       WHEN 'ExternalRoutine' THEN mandatoryCommon + ['name']
       WHEN 'OutputFile' THEN mandatoryCommon + ['name']
       ELSE []
     END AS mandatoryFields,
     [f IN keys(n) WHERE f IN mandatoryCommon + ['name', 'programName']] AS presentFields
WITH n, primaryLabel, mandatoryFields, presentFields,
     [f IN mandatoryFields WHERE NOT f IN presentFields] AS missingFields
WHERE size(missingFields) = size(mandatoryFields)
RETURN primaryLabel AS nodeType, n.name AS nodeName, 'COMPLETELY_EMPTY' AS issueType, count(*) AS count
GROUP BY primaryLabel, issueType;
