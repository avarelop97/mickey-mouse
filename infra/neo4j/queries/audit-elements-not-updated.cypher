// ============================================================================
// AUDIT: Elementos fuera de la version actualizada del modelo
// ============================================================================
// Objetivo:
//   Listar nodos y relaciones que no cumplen el contrato operativo actual,
//   para construir backlog accionable de remediacion.
//
// Salida:
// - issueType
// - severity
// - elementKind (NODE|RELATIONSHIP)
// - elementId
// - nodeType
// - nodeName
// - propertyName
// - currentValue
// - expectedValue
// - recommendation
// ============================================================================

// 1) Labels no permitidas
MATCH (n)
UNWIND labels(n) AS lbl
WITH n, lbl
WHERE NOT lbl IN ['Program','Paragraph','Copybook','DBTable','ParamType','ExternalRoutine','OutputFile']
RETURN
  'INVALID_LABEL' AS issueType,
  'high' AS severity,
  'NODE' AS elementKind,
  elementId(n) AS elementId,
  lbl AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'label' AS propertyName,
  lbl AS currentValue,
  'Program|Paragraph|Copybook|DBTable|ParamType|ExternalRoutine|OutputFile' AS expectedValue,
  'Eliminar o reclasificar nodo a una label permitida.' AS recommendation

UNION

// 2) Tipos de relacion no permitidos
MATCH ()-[r]->()
WHERE NOT type(r) IN [
  'HAS_PARAGRAPH','INCLUDES_COPYBOOK','READS_TABLE','UPDATES_TABLE',
  'CALLS_ROUTINE','WRITES_FILE','STORES','IMPLEMENTED_BY','USES_COPYBOOK',
  'READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL'
]
RETURN
  'INVALID_RELATIONSHIP_TYPE' AS issueType,
  'high' AS severity,
  'RELATIONSHIP' AS elementKind,
  elementId(r) AS elementId,
  type(r) AS nodeType,
  '(rel:' + type(r) + ')' AS nodeName,
  'type' AS propertyName,
  type(r) AS currentValue,
  'Catalogo de relaciones permitido por ontologia' AS expectedValue,
  'Eliminar o migrar a una relacion permitida.' AS recommendation

UNION

// 3) Pares origen-relacion-destino invalidos
MATCH (a)-[r]->(b)
WITH a, r, b,
     labels(a)[0] AS src,
     type(r) AS rel,
     labels(b)[0] AS dst,
     [
       'Program|HAS_PARAGRAPH|Paragraph',
       'Program|INCLUDES_COPYBOOK|Copybook',
       'Program|READS_TABLE|DBTable',
       'Program|UPDATES_TABLE|DBTable',
       'Program|CALLS_ROUTINE|ExternalRoutine',
       'Program|WRITES_FILE|OutputFile',
       'DBTable|STORES|ParamType',
       'Paragraph|IMPLEMENTED_BY|Copybook',
       'Paragraph|USES_COPYBOOK|Copybook',
       'Paragraph|READS_DATA|ParamType',
       'Paragraph|UPDATES_DATA|ParamType',
       'Paragraph|DERIVES_FROM|ParamType',
       'Paragraph|DEPENDS_ON_EXTERNAL|ExternalRoutine'
     ] AS allowed
WHERE NOT (src + '|' + rel + '|' + dst) IN allowed
RETURN
  'INVALID_PAIR' AS issueType,
  'high' AS severity,
  'RELATIONSHIP' AS elementKind,
  elementId(r) AS elementId,
  rel AS nodeType,
  coalesce(a.programName + ':', '') + coalesce(a.name, '(sin src)') + ' -> ' + coalesce(b.name, '(sin dst)') AS nodeName,
  'pair' AS propertyName,
  src + '|' + rel + '|' + dst AS currentValue,
  'Matriz de pares permitidos de la ontologia' AS expectedValue,
  'Migrar relacion al par permitido o eliminar si no hay evidencia.' AS recommendation

UNION

// 3.1) Relacion deprecada Program->ParamType
MATCH (:Program)-[r:USES_PARAM_TYPE]->(:ParamType)
RETURN
  'DEPRECATED_RELATIONSHIP' AS issueType,
  'high' AS severity,
  'RELATIONSHIP' AS elementKind,
  elementId(r) AS elementId,
  type(r) AS nodeType,
  '(rel:' + type(r) + ')' AS nodeName,
  'type' AS propertyName,
  type(r) AS currentValue,
  'Program->DBTable->STORES->ParamType and Paragraph->READS_DATA/UPDATES_DATA/DERIVES_FROM->ParamType' AS expectedValue,
  'Eliminar USES_PARAM_TYPE y conservar trazabilidad por DBTable/STORES y Paragraph.' AS recommendation

UNION

// 4) Relaciones semanticas sin evidencia
MATCH ()-[r]->()
WHERE type(r) IN ['USES_COPYBOOK','READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL']
  AND (
    r.evidenceFile IS NULL OR trim(toString(r.evidenceFile)) = '' OR
    r.evidenceLines IS NULL OR size(r.evidenceLines) = 0
  )
RETURN
  'MISSING_EVIDENCE' AS issueType,
  'high' AS severity,
  'RELATIONSHIP' AS elementKind,
  elementId(r) AS elementId,
  type(r) AS nodeType,
  '(rel:' + type(r) + ')' AS nodeName,
  'evidenceFile/evidenceLines' AS propertyName,
  coalesce(toString(r.evidenceFile), 'NULL') + ' | ' + coalesce(toString(r.evidenceLines), 'NULL') AS currentValue,
  'evidenceFile no vacio + evidenceLines no vacio' AS expectedValue,
  'Agregar evidencia trazable o eliminar la relacion.' AS recommendation

UNION

// 5) Propiedades obligatorias faltantes por tipologia
WITH [
  'ingestion', 'layer', 'nodeType', 'viewTag',
  'reviewStatus', 'reviewRequired', 'reviewSource'
] AS mandatoryCommon,
[
  {label: 'Program', keyFields: ['name']},
  {
    label: 'Paragraph',
    keyFields: [
      'programName', 'name', 'summary',
      'agentReviewedBy', 'agentReviewedAt', 'agentReviewNotes'
    ]
  },
  {label: 'Copybook', keyFields: ['name']},
  {label: 'DBTable', keyFields: ['name']},
  {label: 'ParamType', keyFields: ['name']},
  {label: 'ExternalRoutine', keyFields: ['name']},
  {label: 'OutputFile', keyFields: ['name']}
] AS cfgs
UNWIND cfgs AS cfg
MATCH (n)
WHERE cfg.label IN labels(n)
WITH cfg, n, mandatoryCommon + cfg.keyFields AS requiredProps
UNWIND requiredProps AS prop
WITH cfg, n, prop
WHERE n[prop] IS NULL OR n[prop] = [] OR trim(toString(n[prop])) = ''
RETURN
  'MISSING_MANDATORY_PROPERTY' AS issueType,
  'high' AS severity,
  'NODE' AS elementKind,
  elementId(n) AS elementId,
  cfg.label AS nodeType,
  CASE WHEN cfg.label = 'Paragraph'
    THEN coalesce(n.programName, '(sin programName)') + ':' + coalesce(n.name, '(sin name)')
    ELSE coalesce(n.name, '(sin name)')
  END AS nodeName,
  prop AS propertyName,
  coalesce(toString(n[prop]), 'NULL') AS currentValue,
  'Propiedad obligatoria con valor no vacio' AS expectedValue,
  'Completar propiedad obligatoria segun contrato.' AS recommendation

UNION

// 6) Valores controlados invalidos: reviewStatus
MATCH (n)
WHERE n.reviewStatus IS NOT NULL
  AND NOT n.reviewStatus IN ['pending_human_review', 'reviewed_human', 'rejected_human']
RETURN
  'INVALID_CONTROLLED_VALUE' AS issueType,
  'high' AS severity,
  'NODE' AS elementKind,
  elementId(n) AS elementId,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'reviewStatus' AS propertyName,
  toString(n.reviewStatus) AS currentValue,
  'pending_human_review|reviewed_human|rejected_human' AS expectedValue,
  'Corregir reviewStatus al vocabulario permitido.' AS recommendation

UNION

// 7) Valores controlados invalidos: reviewSource
MATCH (n)
WHERE n.reviewSource IS NOT NULL
  AND NOT n.reviewSource IN ['manual-seed', 'auto-ingestion', 'agent-reviewed']
RETURN
  'INVALID_CONTROLLED_VALUE' AS issueType,
  'high' AS severity,
  'NODE' AS elementKind,
  elementId(n) AS elementId,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'reviewSource' AS propertyName,
  toString(n.reviewSource) AS currentValue,
  'manual-seed|auto-ingestion|agent-reviewed' AS expectedValue,
  'Corregir reviewSource al vocabulario permitido.' AS recommendation

UNION

// 8) Inconsistencia reviewStatus vs reviewRequired
MATCH (n)
WHERE (n.reviewStatus = 'reviewed_human' AND coalesce(n.reviewRequired, true) <> false)
   OR (n.reviewStatus IN ['pending_human_review', 'rejected_human'] AND coalesce(n.reviewRequired, false) <> true)
RETURN
  'INVALID_REVIEW_STATE' AS issueType,
  'high' AS severity,
  'NODE' AS elementKind,
  elementId(n) AS elementId,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'reviewRequired' AS propertyName,
  coalesce(toString(n.reviewRequired), 'NULL') AS currentValue,
  'false when reviewed_human; true when pending/rejected' AS expectedValue,
  'Alinear reviewRequired con reviewStatus.' AS recommendation

UNION

// 9) Falta metadata humana cuando el estado ya no es pending
MATCH (n)
WHERE n.reviewStatus IN ['reviewed_human', 'rejected_human']
  AND (
    n.reviewedBy IS NULL OR trim(toString(n.reviewedBy)) = '' OR
    n.reviewedAt IS NULL OR trim(toString(n.reviewedAt)) = ''
  )
RETURN
  'MISSING_HUMAN_REVIEW_METADATA' AS issueType,
  'high' AS severity,
  'NODE' AS elementKind,
  elementId(n) AS elementId,
  labels(n)[0] AS nodeType,
  coalesce(n.programName + ':', '') + coalesce(n.name, '(sin name)') AS nodeName,
  'reviewedBy/reviewedAt' AS propertyName,
  coalesce(toString(n.reviewedBy), 'NULL') + ' | ' + coalesce(toString(n.reviewedAt), 'NULL') AS currentValue,
  'No vacio cuando reviewStatus es reviewed_human o rejected_human' AS expectedValue,
  'Completar metadata de revision humana.' AS recommendation

UNION

// 10) Summary de Paragraph no informativo o placeholder
WITH [
  'limpieza pendiente',
  'nodo tecnico no funcional',
  'requiere limpieza',
  'placeholder',
  'todo'
] AS invalidSummaryTokens
MATCH (n:Paragraph)
WHERE n.summary IS NULL
   OR trim(toString(n.summary)) = ''
   OR any(token IN invalidSummaryTokens WHERE toLower(toString(n.summary)) CONTAINS token)
   OR toLower(trim(toString(n.summary))) =~ '^parrafo .+ del programa .+\\.$'
RETURN
  'INVALID_SUMMARY_QUALITY' AS issueType,
  'medium' AS severity,
  'NODE' AS elementKind,
  elementId(n) AS elementId,
  'Paragraph' AS nodeType,
  coalesce(n.programName, '(sin programName)') + ':' + coalesce(n.name, '(sin name)') AS nodeName,
  'summary' AS propertyName,
  coalesce(toString(n.summary), 'NULL') AS currentValue,
  'Summary informativo y no generico' AS expectedValue,
  'Regenerar summary con contenido funcional del parrafo.' AS recommendation

ORDER BY severity DESC, issueType ASC, nodeType ASC, nodeName ASC;
