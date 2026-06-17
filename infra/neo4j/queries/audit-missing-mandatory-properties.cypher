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

// 1. PROGRAM NODES
WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon
MATCH (n:Program)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields
WITH n, mandatoryFields,
     [f IN mandatoryFields WHERE CASE
       WHEN n[f] IS NULL THEN true
  WHEN trim(toString(n[f])) = '' THEN true
       ELSE false
     END] AS missingFields
WHERE size(missingFields) > 0
RETURN 
  'Program' AS nodeType,
  coalesce(n.name, '(sin name)') AS nodeName,
  missingFields AS missingProperties,
  size(missingFields) AS missingCount,
  'MISSING_PROPERTIES' AS issueType

UNION

// 2. PARAGRAPH NODES
WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon
MATCH (n:Paragraph)
WITH n, mandatoryCommon + ['programName', 'name'] AS mandatoryFields
WITH n, mandatoryFields,
     [f IN mandatoryFields WHERE CASE
       WHEN n[f] IS NULL THEN true
  WHEN trim(toString(n[f])) = '' THEN true
       ELSE false
     END] AS missingFields
WHERE size(missingFields) > 0
RETURN 
  'Paragraph' AS nodeType,
  (coalesce(n.programName, '(sin programName)') + ':' + coalesce(n.name, '(sin name)')) AS nodeName,
  missingFields AS missingProperties,
  size(missingFields) AS missingCount,
  'MISSING_PROPERTIES' AS issueType

UNION

// 3. COPYBOOK NODES
WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon
MATCH (n:Copybook)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields
WITH n, mandatoryFields,
     [f IN mandatoryFields WHERE CASE
       WHEN n[f] IS NULL THEN true
  WHEN trim(toString(n[f])) = '' THEN true
       ELSE false
     END] AS missingFields
WHERE size(missingFields) > 0
RETURN 
  'Copybook' AS nodeType,
  coalesce(n.name, '(sin name)') AS nodeName,
  missingFields AS missingProperties,
  size(missingFields) AS missingCount,
  'MISSING_PROPERTIES' AS issueType

UNION

// 4. DBTABLE NODES
WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon
MATCH (n:DBTable)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields
WITH n, mandatoryFields,
     [f IN mandatoryFields WHERE CASE
       WHEN n[f] IS NULL THEN true
  WHEN trim(toString(n[f])) = '' THEN true
       ELSE false
     END] AS missingFields
WHERE size(missingFields) > 0
RETURN 
  'DBTable' AS nodeType,
  coalesce(n.name, '(sin name)') AS nodeName,
  missingFields AS missingProperties,
  size(missingFields) AS missingCount,
  'MISSING_PROPERTIES' AS issueType

UNION

// 5. PARAMTYPE NODES
WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon
MATCH (n:ParamType)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields
WITH n, mandatoryFields,
     [f IN mandatoryFields WHERE CASE
       WHEN n[f] IS NULL THEN true
  WHEN trim(toString(n[f])) = '' THEN true
       ELSE false
     END] AS missingFields
WHERE size(missingFields) > 0
RETURN 
  'ParamType' AS nodeType,
  coalesce(n.name, '(sin name)') AS nodeName,
  missingFields AS missingProperties,
  size(missingFields) AS missingCount,
  'MISSING_PROPERTIES' AS issueType

UNION

// 6. EXTERNALROUTINE NODES
WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon
MATCH (n:ExternalRoutine)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields
WITH n, mandatoryFields,
     [f IN mandatoryFields WHERE CASE
       WHEN n[f] IS NULL THEN true
  WHEN trim(toString(n[f])) = '' THEN true
       ELSE false
     END] AS missingFields
WHERE size(missingFields) > 0
RETURN 
  'ExternalRoutine' AS nodeType,
  coalesce(n.name, '(sin name)') AS nodeName,
  missingFields AS missingProperties,
  size(missingFields) AS missingCount,
  'MISSING_PROPERTIES' AS issueType

UNION

// 7. OUTPUTFILE NODES
WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon
MATCH (n:OutputFile)
WITH n, mandatoryCommon + ['name'] AS mandatoryFields
WITH n, mandatoryFields,
     [f IN mandatoryFields WHERE CASE
       WHEN n[f] IS NULL THEN true
  WHEN trim(toString(n[f])) = '' THEN true
       ELSE false
     END] AS missingFields
WHERE size(missingFields) > 0
RETURN 
  'OutputFile' AS nodeType,
  coalesce(n.name, '(sin name)') AS nodeName,
  missingFields AS missingProperties,
  size(missingFields) AS missingCount,
  'MISSING_PROPERTIES' AS issueType

// ============================================================================
// Ordenar resultados por tipo de nodo y cantidad de propiedades faltantes
// ============================================================================
ORDER BY nodeType ASC, missingCount DESC;
