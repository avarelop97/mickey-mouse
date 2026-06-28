// ============================================================================
// AUDIT: Graph System Health (Ontology + Evidence + Governance + Noise)
// ============================================================================
// Proposito:
// - Revisar de forma integral el sistema de conocimiento cargado en Neo4j.
// - Emitir hallazgos por gate con severidad y decision operativa.
//
// Fuentes de verdad:
// - docs/graph-ontology.md
// - docs/node-review-state-machine.md
// - docs/programa-ingestion-methodology.md
// ============================================================================

// Gate 1.1: labels fuera de ontologia
WITH [
  'Program','Functionality','SubFunctionality','ProcessFlow','ProcessState','Paragraph','Copybook','DBTable','ParamType','ExternalRoutine','OutputFile',
  'Procedure','ProcStep','ProcVariable','ProcDD','RuntimeDataset','SchedulerCondition',
  'ControlCardMember','SysoutChannel','BatchJob',
  'BmsMapset','BmsMap','BmsField','UiLiteral','UiFunctionKey'
] AS allowedLabels
MATCH (n)
UNWIND labels(n) AS lbl
WITH allowedLabels, collect(DISTINCT lbl) AS labelsFound
WITH allowedLabels, labelsFound
WITH [l IN labelsFound WHERE NOT l IN allowedLabels] AS invalidLabels
RETURN
  'GATE_1_ONTOLOGY' AS gate,
  'INVALID_LABEL' AS issueType,
  CASE WHEN size(invalidLabels) = 0 THEN 'ok' ELSE 'critical' END AS severity,
  size(invalidLabels) AS impactedCount,
  invalidLabels[0..10] AS sample,
  CASE WHEN size(invalidLabels) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

UNION

// Gate 1.2: relaciones fuera de ontologia
WITH [
  'HAS_PARAGRAPH','IMPLEMENTS_FUNCTIONALITY','HAS_SUBFUNCTIONALITY','ORCHESTRATES_PROCESS','HAS_STATE','STATE_ENTRY_PARAGRAPH','TRANSITIONS_TO','INCLUDES_COPYBOOK','READS_TABLE','UPDATES_TABLE',
  'CALLS_ROUTINE','WRITES_FILE','STORES','IMPLEMENTED_BY','USES_COPYBOOK','PERFORMS_PARAGRAPH',
  'READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL',
  'HAS_STEP','DEFINES_VARIABLE','DEFINES_DD','USES_DD','RESOLVES_TO_DATASET','ROUTES_TO_VARIABLE',
  'EMITS_CONDITION','EXECUTES_PROGRAM','USES_CONTROL_CARD','TARGETS_SYSOUT_CHANNEL','IMPACTS_JOB',
  'HAS_MAP','HAS_FIELD','DISPLAYS_LITERAL','SUPPORTS_KEY',
  'TRIGGERS_FUNCTIONALITY','TRIGGERS_SUBFUNCTIONALITY','TRIGGERS_PARAGRAPH','TRIGGERS_STATE','REALIZED_BY',
  'LABELS_FIELD','USES_MAPSET','PRESENTS_MAP','SUBMITS_INPUT_TO'
] AS allowedRelations
MATCH ()-[r]->()
WITH allowedRelations, collect(DISTINCT type(r)) AS relsFound
WITH allowedRelations, relsFound
WITH [rt IN relsFound WHERE NOT rt IN allowedRelations] AS invalidRelations
RETURN
  'GATE_1_ONTOLOGY' AS gate,
  'INVALID_RELATIONSHIP' AS issueType,
  CASE WHEN size(invalidRelations) = 0 THEN 'ok' ELSE 'critical' END AS severity,
  size(invalidRelations) AS impactedCount,
  invalidRelations[0..10] AS sample,
  CASE WHEN size(invalidRelations) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

UNION

// Gate 1.3: triples origen-relacion-destino fuera de matriz
WITH [
  'Program|HAS_PARAGRAPH|Paragraph',
  'Program|IMPLEMENTS_FUNCTIONALITY|Functionality',
  'Functionality|HAS_SUBFUNCTIONALITY|SubFunctionality',
  'Program|ORCHESTRATES_PROCESS|ProcessFlow',
  'ProcessFlow|HAS_STATE|ProcessState',
  'ProcessState|STATE_ENTRY_PARAGRAPH|Paragraph',
  'ProcessState|TRANSITIONS_TO|ProcessState',
  'Program|INCLUDES_COPYBOOK|Copybook',
  'Program|READS_TABLE|DBTable',
  'Program|UPDATES_TABLE|DBTable',
  'Program|CALLS_ROUTINE|ExternalRoutine',
  'Program|WRITES_FILE|OutputFile',
  'DBTable|STORES|ParamType',
  'Paragraph|IMPLEMENTED_BY|Copybook',
  'Paragraph|PERFORMS_PARAGRAPH|Paragraph',
  'Paragraph|USES_COPYBOOK|Copybook',
  'Paragraph|READS_DATA|ParamType',
  'Paragraph|UPDATES_DATA|ParamType',
  'Paragraph|DERIVES_FROM|ParamType',
  'Paragraph|DEPENDS_ON_EXTERNAL|ExternalRoutine',
  'Procedure|HAS_STEP|ProcStep',
  'Procedure|DEFINES_VARIABLE|ProcVariable',
  'Procedure|DEFINES_DD|ProcDD',
  'ProcStep|USES_DD|ProcDD',
  'ProcStep|EXECUTES_PROGRAM|ExternalRoutine',
  'ProcStep|EMITS_CONDITION|SchedulerCondition',
  'ProcStep|USES_CONTROL_CARD|ControlCardMember',
  'ProcDD|RESOLVES_TO_DATASET|RuntimeDataset',
  'ProcDD|ROUTES_TO_VARIABLE|ProcVariable',
  'ProcDD|TARGETS_SYSOUT_CHANNEL|SysoutChannel',
  'Procedure|IMPACTS_JOB|BatchJob',
  'BmsMapset|HAS_MAP|BmsMap',
  'BmsMap|HAS_FIELD|BmsField',
  'BmsMap|DISPLAYS_LITERAL|UiLiteral',
  'BmsMap|SUPPORTS_KEY|UiFunctionKey',
  'UiFunctionKey|TRIGGERS_FUNCTIONALITY|Functionality',
  'UiFunctionKey|TRIGGERS_SUBFUNCTIONALITY|SubFunctionality',
  'UiFunctionKey|TRIGGERS_PARAGRAPH|Paragraph',
  'UiFunctionKey|TRIGGERS_STATE|ProcessState',
  'Functionality|REALIZED_BY|Paragraph',
  'SubFunctionality|REALIZED_BY|Paragraph',
  'UiLiteral|LABELS_FIELD|BmsField',
  'Program|USES_MAPSET|BmsMapset',
  'Program|PRESENTS_MAP|BmsMap',
  'BmsMap|SUBMITS_INPUT_TO|Program'
] AS allowedTriples
MATCH (a)-[r]->(b)
WITH allowedTriples,
     labels(a)[0] + '|' + type(r) + '|' + labels(b)[0] AS triple
WITH allowedTriples, collect(DISTINCT triple) AS triplesFound
WITH allowedTriples, triplesFound
WITH [t IN triplesFound WHERE NOT t IN allowedTriples] AS invalidTriples
RETURN
  'GATE_1_ONTOLOGY' AS gate,
  'INVALID_TRIPLE' AS issueType,
  CASE WHEN size(invalidTriples) = 0 THEN 'ok' ELSE 'critical' END AS severity,
  size(invalidTriples) AS impactedCount,
  invalidTriples[0..10] AS sample,
  CASE WHEN size(invalidTriples) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

UNION

// Gate 1.4: relacion deprecada Program->ParamType detectada
MATCH (:Program)-[r:USES_PARAM_TYPE]->(:ParamType)
WITH collect(r) AS deprecatedRels
RETURN
  'GATE_1_ONTOLOGY' AS gate,
  'DEPRECATED_PROGRAM_PARAMTYPE_RELATION' AS issueType,
  CASE WHEN size(deprecatedRels) = 0 THEN 'ok' ELSE 'critical' END AS severity,
  size(deprecatedRels) AS impactedCount,
  ['USES_PARAM_TYPE'] AS sample,
  CASE WHEN size(deprecatedRels) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

UNION

// Gate 2: relaciones semanticas sin evidencia
OPTIONAL MATCH ()-[r]->()
WITH [
  'USES_COPYBOOK','READS_DATA','UPDATES_DATA','DERIVES_FROM','DEPENDS_ON_EXTERNAL',
  'IMPLEMENTS_FUNCTIONALITY','HAS_SUBFUNCTIONALITY','ORCHESTRATES_PROCESS','HAS_STATE','STATE_ENTRY_PARAGRAPH','TRANSITIONS_TO','TRIGGERS_STATE','REALIZED_BY','PERFORMS_PARAGRAPH',
  'HAS_STEP','DEFINES_VARIABLE','DEFINES_DD','USES_DD','RESOLVES_TO_DATASET','ROUTES_TO_VARIABLE',
  'EMITS_CONDITION','EXECUTES_PROGRAM','USES_CONTROL_CARD','TARGETS_SYSOUT_CHANNEL','IMPACTS_JOB',
  'HAS_MAP','HAS_FIELD','DISPLAYS_LITERAL','SUPPORTS_KEY',
  'TRIGGERS_FUNCTIONALITY','TRIGGERS_SUBFUNCTIONALITY','TRIGGERS_PARAGRAPH',
  'LABELS_FIELD','USES_MAPSET','PRESENTS_MAP','SUBMITS_INPUT_TO'
] AS semanticRelations, r
WITH semanticRelations, collect(r) AS rels
WITH semanticRelations, rels
WITH [x IN rels
      WHERE x IS NOT NULL
        AND type(x) IN semanticRelations
        AND (
          x.evidenceFile IS NULL OR trim(toString(x.evidenceFile)) = '' OR
          x.evidenceLines IS NULL OR size(x.evidenceLines) = 0
        )] AS missingEvidence
RETURN
  'GATE_2_EVIDENCE' AS gate,
  'MISSING_RELATIONSHIP_EVIDENCE' AS issueType,
  'critical' AS severity,
  size(missingEvidence) AS impactedCount,
  [x IN missingEvidence | type(x)][0..10] AS sample,
  CASE WHEN size(missingEvidence) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

UNION

// Gate 3.1: reviewStatus inconsistente con reviewRequired
OPTIONAL MATCH (n)
WITH [x IN collect(n)
      WHERE x IS NOT NULL AND (
        (x.reviewStatus = 'reviewed_human' AND coalesce(x.reviewRequired, true) <> false)
        OR (x.reviewStatus IN ['pending_human_review', 'rejected_human'] AND coalesce(x.reviewRequired, false) <> true)
      )] AS inconsistentReviewRequired
RETURN
  'GATE_3_REVIEW_GOVERNANCE' AS gate,
  'REVIEW_REQUIRED_INCONSISTENT' AS issueType,
  'critical' AS severity,
  size(inconsistentReviewRequired) AS impactedCount,
  [x IN inconsistentReviewRequired | labels(x)[0] + ':' + coalesce(x.programName + ':', '') + coalesce(x.name, '(sin name)')][0..10] AS sample,
  CASE WHEN size(inconsistentReviewRequired) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

UNION

// Gate 3.2: reviewSource fuera de vocabulario
OPTIONAL MATCH (n)
WITH [x IN collect(n)
      WHERE x IS NOT NULL
        AND x.reviewSource IS NOT NULL
        AND NOT x.reviewSource IN ['manual-seed', 'auto-ingestion', 'agent-reviewed']] AS invalidReviewSource
RETURN
  'GATE_3_REVIEW_GOVERNANCE' AS gate,
  'REVIEW_SOURCE_INVALID' AS issueType,
  'high' AS severity,
  size(invalidReviewSource) AS impactedCount,
  [x IN invalidReviewSource | labels(x)[0] + ':' + coalesce(x.programName + ':', '') + coalesce(x.name, '(sin name)')][0..10] AS sample,
  CASE WHEN size(invalidReviewSource) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

UNION

// Gate 3.3: reviewed_human/rejected_human sin reviewedBy/reviewedAt
OPTIONAL MATCH (n)
WITH [x IN collect(n)
      WHERE x IS NOT NULL
        AND x.reviewStatus IN ['reviewed_human', 'rejected_human']
        AND (
          x.reviewedBy IS NULL OR trim(toString(x.reviewedBy)) = '' OR
          x.reviewedAt IS NULL OR trim(toString(x.reviewedAt)) = ''
        )] AS missingHumanReviewMeta
RETURN
  'GATE_3_REVIEW_GOVERNANCE' AS gate,
  'MISSING_HUMAN_REVIEW_METADATA' AS issueType,
  'high' AS severity,
  size(missingHumanReviewMeta) AS impactedCount,
  [x IN missingHumanReviewMeta | labels(x)[0] + ':' + coalesce(x.programName + ':', '') + coalesce(x.name, '(sin name)')][0..10] AS sample,
  CASE WHEN size(missingHumanReviewMeta) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

UNION

// Gate 4.1: fan-out de Program -> Paragraph (heuristico de ruido)
OPTIONAL MATCH (p:Program)-[:HAS_PARAGRAPH]->(par:Paragraph)
WITH p, count(par) AS paragraphCount
WITH [x IN collect({programName: p.name, paragraphCount: paragraphCount})
      WHERE x.programName IS NOT NULL AND x.paragraphCount > 20] AS programParagraphFanout
RETURN
  'GATE_4_ABSTRACTION_NOISE' AS gate,
  'PROGRAM_PARAGRAPH_FANOUT' AS issueType,
  'medium' AS severity,
  size(programParagraphFanout) AS impactedCount,
  [x IN programParagraphFanout | x.programName + '|' + toString(x.paragraphCount)][0..10] AS sample,
  CASE WHEN size(programParagraphFanout) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

UNION

// Gate 4.2: fan-out de Paragraph -> Copybook (heuristico de ruido)
OPTIONAL MATCH (par:Paragraph)-[:USES_COPYBOOK]->(c:Copybook)
WITH par, count(c) AS copybookCount
WITH [x IN collect({programName: par.programName, paragraphName: par.name, copybookCount: copybookCount})
      WHERE x.paragraphName IS NOT NULL AND x.copybookCount > 5] AS paragraphCopybookFanout
RETURN
  'GATE_4_ABSTRACTION_NOISE' AS gate,
  'PARAGRAPH_COPYBOOK_FANOUT' AS issueType,
  'medium' AS severity,
  size(paragraphCopybookFanout) AS impactedCount,
  [x IN paragraphCopybookFanout | coalesce(x.programName, '(sin programName)') + ':' + x.paragraphName + '|' + toString(x.copybookCount)][0..10] AS sample,
  CASE WHEN size(paragraphCopybookFanout) = 0 THEN 'READY_FOR_HUMAN_REVIEW' ELSE 'BLOCKED' END AS decision

ORDER BY gate, issueType;
