// ============================================================================
// WRITEPAYLOAD INGEST: CIB065D
// RunId: e2e-20260617-cib065d
// Objetivo: Ingestion idempotente con evidencia y gobernanza.
// ============================================================================

MERGE (program:Program {name:'CIB065D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB065D.cbl',
  program.evidenceFile = 'src/CIB065D.cbl',
  program.evidenceLines = [2,3],
  program.runId = 'e2e-20260617-cib065d'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-cib065d',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB065D.cbl');

MATCH (program:Program {name:'CIB065D'})
UNWIND [
  {
    name:'005-FECHAS', lines:[102], executionOrder:100, executionPhase:'INITIALIZATION',
    summary:'Lee PARAM (ITIPOPAR=P05) para obtener fechas operativas de 24 y 48 horas y carga datos de trabajo.'
  },
  {
    name:'010-LEE-TIPO-CAMBIO', lines:[128], executionOrder:200, executionPhase:'PROCESSING',
    summary:'Consulta TIPCAMB para valor 48 horas; ante ausencia de registro deriva al flujo de recuperacion con 24 horas.'
  },
  {
    name:'020-OBTEN-TIPO-24', lines:[161], executionOrder:300, executionPhase:'PROCESSING',
    summary:'Consulta TIPCAMB para valor 24 horas y prepara datos para insercion de valor 48 horas.'
  },
  {
    name:'030-GRABA-VALOR-48', lines:[194], executionOrder:400, executionPhase:'PERSISTENCE',
    summary:'Inserta en TIPCAMB el valor a 48 horas usando el tipo obtenido previamente y metadatos de sistema.'
  },
  {
    name:'810-TERMINA', lines:[226], executionOrder:500, executionPhase:'TERMINATION',
    summary:'Finaliza la ejecucion del programa con cierre normal mediante STOP RUN.'
  },
  {
    name:'980-ABORTA', lines:[237], executionOrder:600, executionPhase:'ERROR_PATH',
    summary:'Activa la rutina de aborto transaccional mediante include de manejo de rollback.'
  }
] AS p
MERGE (paragraph:Paragraph {programName: program.name, name: p.name})
ON CREATE SET
  paragraph.ingestion = 'auto',
  paragraph.layer = 'execution',
  paragraph.nodeType = 'process-step',
  paragraph.viewTag = 'execution',
  paragraph.reviewStatus = 'pending_human_review',
  paragraph.reviewRequired = true,
  paragraph.reviewSource = 'auto-ingestion',
  paragraph.agentReviewedBy = 'cobol-evidence-extractor',
  paragraph.agentReviewedAt = toString(datetime()),
  paragraph.agentReviewNotes = 'Summary generado desde evidencia de PROCEDURE DIVISION; requiere validacion humana.',
  paragraph.sourceFile = 'src/CIB065D.cbl',
  paragraph.evidenceFile = 'src/CIB065D.cbl',
  paragraph.evidenceLines = p.lines,
  paragraph.runId = 'e2e-20260617-cib065d'
SET
  paragraph.summary = p.summary,
  paragraph.executionOrder = p.executionOrder,
  paragraph.executionPhase = p.executionPhase,
  paragraph.executionOrderSource = 'procedure-division-sequence',
  paragraph.lastSeenRunId = 'e2e-20260617-cib065d'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-cib065d',
  hp.evidenceFile = 'src/CIB065D.cbl',
  hp.evidenceLines = p.lines;

MATCH (program:Program {name:'CIB065D'})
UNWIND [
  {name:'SQLCA', lines:[53]},
  {name:'SIXAB001', lines:[60]},
  {name:'SIC005', lines:[67]},
  {name:'SI2FH027', lines:[74]},
  {name:'DPARAM', lines:[80]},
  {name:'DTIPCAMB', lines:[87]},
  {name:'SIC004', lines:[232]},
  {name:'SIXAB002', lines:[239]}
] AS c
MERGE (copybook:Copybook {name:c.name})
ON CREATE SET
  copybook.ingestion = 'auto',
  copybook.layer = 'dependency',
  copybook.nodeType = 'copybook',
  copybook.viewTag = 'dependency',
  copybook.reviewStatus = 'pending_human_review',
  copybook.reviewRequired = true,
  copybook.reviewSource = 'auto-ingestion',
  copybook.sourceFile = 'src/CIB065D.cbl',
  copybook.evidenceFile = 'src/CIB065D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-cib065d'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-cib065d',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB065D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-cib065d',
  ic.evidenceFile = 'src/CIB065D.cbl',
  ic.evidenceLines = c.lines;

MATCH (program:Program {name:'CIB065D'})
UNWIND [
  {name:'PARAM', rel:'READS_TABLE', lines:[106]},
  {name:'TIPCAMB', rel:'READS_TABLE', lines:[139,171]},
  {name:'TIPCAMB', rel:'UPDATES_TABLE', lines:[196]}
] AS t
MERGE (table:DBTable {name:t.name})
ON CREATE SET
  table.ingestion = 'auto',
  table.layer = 'data-access',
  table.nodeType = 'db-table',
  table.viewTag = 'data-access',
  table.reviewStatus = 'pending_human_review',
  table.reviewRequired = true,
  table.reviewSource = 'auto-ingestion',
  table.sourceFile = 'src/CIB065D.cbl',
  table.evidenceFile = 'src/CIB065D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-cib065d'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-cib065d',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB065D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-cib065d',
    rt.evidenceFile = 'src/CIB065D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-cib065d',
    ut.evidenceFile = 'src/CIB065D.cbl',
    ut.evidenceLines = t.lines
);

MATCH (program:Program {name:'CIB065D'})
OPTIONAL MATCH (program)-[hp:HAS_PARAGRAPH]->(p:Paragraph)
OPTIONAL MATCH (program)-[ic:INCLUDES_COPYBOOK]->(c:Copybook)
OPTIONAL MATCH (program)-[rt:READS_TABLE]->(t1:DBTable)
OPTIONAL MATCH (program)-[ut:UPDATES_TABLE]->(t2:DBTable)
RETURN
  program.name AS program,
  count(DISTINCT p) AS paragraphCount,
  count(DISTINCT c) AS copybookCount,
  count(DISTINCT t1) AS readTableCount,
  count(DISTINCT t2) AS updatedTableCount,
  count(DISTINCT hp) AS hasParagraphRels,
  count(DISTINCT ic) AS includesCopybookRels,
  count(DISTINCT rt) AS readsTableRels,
  count(DISTINCT ut) AS updatesTableRels;
