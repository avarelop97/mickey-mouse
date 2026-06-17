// ============================================================================
// AUDIT: Nodos con Valores de Propiedades Invalidos
// ============================================================================
// Proposito: detectar nodos cuyos valores no encajan con los vocabularios
// controlados o con la semantica valida del modelo actual.
//
// Fuentes de verdad usadas:
// - docs/graph-ontology.md
// - docs/node-review-state-machine.md
// - infra/neo4j/manual-seed-cib005d.cypher
// - infra/neo4j/manual-seed-cib009d.cypher
// ============================================================================

// 1) reviewStatus fuera de lista valida
MATCH (n)
WHERE n.reviewStatus IS NOT NULL
  AND NOT n.reviewStatus IN ['pending_human_review', 'reviewed_human', 'rejected_human']
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'reviewStatus' AS propertyName,
  toString(n.reviewStatus) AS propertyValue,
  ['pending_human_review', 'reviewed_human', 'rejected_human'] AS expectedValues,
  'reviewStatus fuera del conjunto permitido' AS reason

UNION

// 2) reviewSource fuera de lista valida
MATCH (n)
WHERE n.reviewSource IS NOT NULL
  AND NOT n.reviewSource IN ['manual-seed', 'auto-ingestion', 'agent-reviewed']
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'reviewSource' AS propertyName,
  toString(n.reviewSource) AS propertyValue,
  ['manual-seed', 'auto-ingestion', 'agent-reviewed'] AS expectedValues,
  'reviewSource fuera del conjunto permitido' AS reason

UNION

// 3) reviewRequired inconsistente con reviewStatus
MATCH (n)
WHERE n.reviewStatus IS NOT NULL AND (
  (n.reviewStatus = 'reviewed_human' AND coalesce(n.reviewRequired, true) <> false) OR
  (n.reviewStatus IN ['pending_human_review', 'rejected_human'] AND coalesce(n.reviewRequired, false) <> true)
)
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'reviewRequired' AS propertyName,
  toString(n.reviewRequired) AS propertyValue,
  ['false when reviewed_human', 'true when pending_human_review or rejected_human'] AS expectedValues,
  'reviewRequired no coincide con la semantica de reviewStatus' AS reason

UNION

// 4) reviewed_human o rejected_human sin reviewedBy/reviewedAt
MATCH (n)
WHERE n.reviewStatus IN ['reviewed_human', 'rejected_human']
  AND (
    n.reviewedBy IS NULL OR trim(toString(n.reviewedBy)) = '' OR
    n.reviewedAt IS NULL OR trim(toString(n.reviewedAt)) = ''
  )
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'reviewedBy/reviewedAt' AS propertyName,
  coalesce(toString(n.reviewedBy), 'NULL') + ' | ' + coalesce(toString(n.reviewedAt), 'NULL') AS propertyValue,
  ['non-empty reviewedBy', 'non-empty reviewedAt'] AS expectedValues,
  'faltan metadatos humanos obligatorios para el estado actual' AS reason

UNION

// 5) ingestion fuera de lista valida
MATCH (n)
WHERE n.ingestion IS NOT NULL
  AND NOT n.ingestion IN ['manual', 'auto']
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'ingestion' AS propertyName,
  toString(n.ingestion) AS propertyValue,
  ['manual', 'auto'] AS expectedValues,
  'ingestion fuera del vocabulario operativo actual' AS reason

UNION

// 6) layer fuera de lista valida
MATCH (n)
WHERE n.layer IS NOT NULL
  AND NOT n.layer IN ['program', 'execution', 'dependency', 'data-access', 'integration', 'output']
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'layer' AS propertyName,
  toString(n.layer) AS propertyValue,
  ['program', 'execution', 'dependency', 'data-access', 'integration', 'output'] AS expectedValues,
  'layer fuera del vocabulario definido por la ontologia' AS reason

UNION

// 7) viewTag fuera de lista valida
MATCH (n)
WHERE n.viewTag IS NOT NULL
  AND NOT n.viewTag IN ['program', 'execution', 'dependency', 'data-access', 'integration', 'output']
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'viewTag' AS propertyName,
  toString(n.viewTag) AS propertyValue,
  ['program', 'execution', 'dependency', 'data-access', 'integration', 'output'] AS expectedValues,
  'viewTag fuera del vocabulario operativo actual' AS reason

UNION

// 8) nodeType fuera de lista valida
MATCH (n)
WHERE n.nodeType IS NOT NULL
  AND NOT n.nodeType IN ['program', 'process-step', 'copybook', 'physical-table', 'logical-param-type', 'external-service-call', 'report-file']
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'nodeType' AS propertyName,
  toString(n.nodeType) AS propertyValue,
  ['program', 'process-step', 'copybook', 'physical-table', 'logical-param-type', 'external-service-call', 'report-file'] AS expectedValues,
  'nodeType fuera del vocabulario operativo actual' AS reason

UNION

// 9) layer inconsistente con la label
MATCH (n)
WITH n, labels(n)[0] AS lbl,
     CASE labels(n)[0]
       WHEN 'Program' THEN 'program'
       WHEN 'Paragraph' THEN 'execution'
       WHEN 'Copybook' THEN 'dependency'
       WHEN 'DBTable' THEN 'data-access'
       WHEN 'ParamType' THEN 'data-access'
       WHEN 'ExternalRoutine' THEN 'integration'
       WHEN 'OutputFile' THEN 'output'
       ELSE NULL
     END AS expectedLayer
WHERE expectedLayer IS NOT NULL AND n.layer IS NOT NULL AND n.layer <> expectedLayer
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  lbl AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'layer' AS propertyName,
  toString(n.layer) AS propertyValue,
  [expectedLayer] AS expectedValues,
  'layer inconsistente con la label del nodo' AS reason

UNION

// 10) viewTag inconsistente con la label
MATCH (n)
WITH n, labels(n)[0] AS lbl,
     CASE labels(n)[0]
       WHEN 'Program' THEN 'program'
       WHEN 'Paragraph' THEN 'execution'
       WHEN 'Copybook' THEN 'dependency'
       WHEN 'DBTable' THEN 'data-access'
       WHEN 'ParamType' THEN 'data-access'
       WHEN 'ExternalRoutine' THEN 'integration'
       WHEN 'OutputFile' THEN 'output'
       ELSE NULL
     END AS expectedViewTag
WHERE expectedViewTag IS NOT NULL AND n.viewTag IS NOT NULL AND n.viewTag <> expectedViewTag
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  lbl AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'viewTag' AS propertyName,
  toString(n.viewTag) AS propertyValue,
  [expectedViewTag] AS expectedValues,
  'viewTag inconsistente con la label del nodo' AS reason

UNION

// 11) nodeType inconsistente con la label
MATCH (n)
WITH n, labels(n)[0] AS lbl,
     CASE labels(n)[0]
       WHEN 'Program' THEN 'program'
       WHEN 'Paragraph' THEN 'process-step'
       WHEN 'Copybook' THEN 'copybook'
       WHEN 'DBTable' THEN 'physical-table'
       WHEN 'ParamType' THEN 'logical-param-type'
       WHEN 'ExternalRoutine' THEN 'external-service-call'
       WHEN 'OutputFile' THEN 'report-file'
       ELSE NULL
     END AS expectedNodeType
WHERE expectedNodeType IS NOT NULL AND n.nodeType IS NOT NULL AND n.nodeType <> expectedNodeType
RETURN
  'INVALID_PROPERTY_VALUE' AS issueType,
  lbl AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'nodeType' AS propertyName,
  toString(n.nodeType) AS propertyValue,
  [expectedNodeType] AS expectedValues,
  'nodeType inconsistente con la label del nodo' AS reason

ORDER BY nodeType ASC, propertyName ASC, nodeName ASC;