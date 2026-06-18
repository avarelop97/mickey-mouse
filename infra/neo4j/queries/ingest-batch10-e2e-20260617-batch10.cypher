// ============================================================================
// WRITEPAYLOAD INGEST BATCH-10
// RunId: e2e-20260617-batch10
// Objetivo: Ingestion idempotente con evidencia y gobernanza para 10 programas.
// ============================================================================

MERGE (program:Program {name:'CIB116D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB116D.cbl',
  program.evidenceFile = 'src/CIB116D.cbl',
  program.evidenceLines = [5,6],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB116D.cbl');
MATCH (program:Program {name:'CIB116D'})
UNWIND [
  {name:'DCONGTIA', lines:[401]},
  {name:'DCONTITU', lines:[406]},
  {name:'DCTAMARC', lines:[391]},
  {name:'DCUENTA', lines:[396]},
  {name:'DDEFOPER', lines:[386]},
  {name:'DOPECORI', lines:[376]},
  {name:'DPARAM', lines:[381]},
  {name:'SI2CE028', lines:[1773]},
  {name:'SI2CM026', lines:[1807]},
  {name:'SI2FH027', lines:[195]},
  {name:'SI2R1025', lines:[259]},
  {name:'SIC000', lines:[209]},
  {name:'SIC004', lines:[1757]},
  {name:'SIC005', lines:[202]},
  {name:'SICAM029', lines:[245]},
  {name:'SICNF043', lines:[238]},
  {name:'SICPT104', lines:[231]},
  {name:'SICTAT84', lines:[252]},
  {name:'SICVS011', lines:[223]},
  {name:'SIXAB001', lines:[216]},
  {name:'SIXAB002', lines:[1766]},
  {name:'SQLCA', lines:[188]}
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
  copybook.sourceFile = 'src/CIB116D.cbl',
  copybook.evidenceFile = 'src/CIB116D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB116D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB116D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB116D'})
UNWIND [
  {name:'CONGTIA', rel:'READS_TABLE', lines:[827]},
  {name:'CONGTIA', rel:'UPDATES_TABLE', lines:[1602]},
  {name:'CONTITU', rel:'UPDATES_TABLE', lines:[1624]},
  {name:'DEFOPER', rel:'READS_TABLE', lines:[1221]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[1018]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[1046]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[1258]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[1283]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[1336]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[1372]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[907]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[941]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[969]},
  {name:'OPECORI', rel:'UPDATES_TABLE', lines:[1405]},
  {name:'OPECORI', rel:'UPDATES_TABLE', lines:[1427]},
  {name:'OPECORI', rel:'UPDATES_TABLE', lines:[1452]},
  {name:'OPECORI', rel:'UPDATES_TABLE', lines:[1478]},
  {name:'OPECORI', rel:'UPDATES_TABLE', lines:[1503]},
  {name:'OPECORI', rel:'UPDATES_TABLE', lines:[1528]},
  {name:'PARAM', rel:'READS_TABLE', lines:[755]},
  {name:'PARAM', rel:'READS_TABLE', lines:[794]},
  {name:'PARAM', rel:'READS_TABLE', lines:[875]},
  {name:'PARAM', rel:'UPDATES_TABLE', lines:[1647]},
  {name:'R1', rel:'READS_TABLE', lines:[1683]},
  {name:'R1', rel:'READS_TABLE', lines:[1684]},
  {name:'R1', rel:'READS_TABLE', lines:[1685]},
  {name:'R1', rel:'READS_TABLE', lines:[1686]},
  {name:'R1', rel:'READS_TABLE', lines:[1687]},
  {name:'R1', rel:'READS_TABLE', lines:[1688]},
  {name:'R1', rel:'READS_TABLE', lines:[1689]},
  {name:'R1', rel:'READS_TABLE', lines:[1690]},
  {name:'R1', rel:'READS_TABLE', lines:[1691]},
  {name:'R1', rel:'READS_TABLE', lines:[1692]},
  {name:'R1', rel:'READS_TABLE', lines:[1693]},
  {name:'R1', rel:'READS_TABLE', lines:[1734]},
  {name:'R1', rel:'READS_TABLE', lines:[1748]},
  {name:'R1', rel:'READS_TABLE', lines:[1749]},
  {name:'R1', rel:'READS_TABLE', lines:[1750]}
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
  table.sourceFile = 'src/CIB116D.cbl',
  table.evidenceFile = 'src/CIB116D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB116D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB116D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB116D.cbl',
    ut.evidenceLines = t.lines
);

MERGE (program:Program {name:'CIB117D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB117D.cbl',
  program.evidenceFile = 'src/CIB117D.cbl',
  program.evidenceLines = [5,6],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB117D.cbl');
MATCH (program:Program {name:'CIB117D'})
UNWIND [
  {name:'DCONGTIA', lines:[357]},
  {name:'DCTAMARC', lines:[353]},
  {name:'DOPECORI', lines:[349]},
  {name:'SI2CE028', lines:[955]},
  {name:'SI2CM026', lines:[948]},
  {name:'SI2FH027', lines:[100]},
  {name:'SI2R1025', lines:[142]},
  {name:'SIC004', lines:[916]},
  {name:'SIC005', lines:[114]},
  {name:'SICAM029', lines:[135]},
  {name:'SICFP024', lines:[517]},
  {name:'SICIP023', lines:[499]},
  {name:'SICVS011', lines:[128]},
  {name:'SIXAB001', lines:[121]},
  {name:'SQLCA', lines:[107]}
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
  copybook.sourceFile = 'src/CIB117D.cbl',
  copybook.evidenceFile = 'src/CIB117D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB117D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB117D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB117D'})
UNWIND [
  {name:'OPECORI', rel:'READS_TABLE', lines:[371]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[393]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[407]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[438]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[460]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[474]},
  {name:'R1', rel:'READS_TABLE', lines:[654]},
  {name:'R1', rel:'READS_TABLE', lines:[688]},
  {name:'R1', rel:'READS_TABLE', lines:[689]},
  {name:'R1', rel:'READS_TABLE', lines:[690]},
  {name:'R1', rel:'READS_TABLE', lines:[691]},
  {name:'R1', rel:'READS_TABLE', lines:[692]},
  {name:'R1', rel:'READS_TABLE', lines:[693]},
  {name:'R1', rel:'READS_TABLE', lines:[694]},
  {name:'R1', rel:'READS_TABLE', lines:[695]},
  {name:'R1', rel:'READS_TABLE', lines:[704]},
  {name:'R1', rel:'READS_TABLE', lines:[705]},
  {name:'R1', rel:'READS_TABLE', lines:[706]},
  {name:'R1', rel:'READS_TABLE', lines:[708]},
  {name:'R1', rel:'READS_TABLE', lines:[711]},
  {name:'R1', rel:'READS_TABLE', lines:[732]},
  {name:'R1', rel:'READS_TABLE', lines:[733]},
  {name:'R2', rel:'READS_TABLE', lines:[673]},
  {name:'R2', rel:'READS_TABLE', lines:[707]},
  {name:'R2', rel:'READS_TABLE', lines:[709]},
  {name:'R2', rel:'READS_TABLE', lines:[710]}
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
  table.sourceFile = 'src/CIB117D.cbl',
  table.evidenceFile = 'src/CIB117D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB117D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB117D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB117D.cbl',
    ut.evidenceLines = t.lines
);

MERGE (program:Program {name:'CIB118D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB118D.cbl',
  program.evidenceFile = 'src/CIB118D.cbl',
  program.evidenceLines = [5,6],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB118D.cbl');
MATCH (program:Program {name:'CIB118D'})
UNWIND [
  {name:'DOPECORI', lines:[239]},
  {name:'SI2CE028', lines:[621]},
  {name:'SI2CM026', lines:[654]},
  {name:'SI2FH027', lines:[99]},
  {name:'SI2R1025', lines:[141]},
  {name:'SIC004', lines:[605]},
  {name:'SIC005', lines:[113]},
  {name:'SICAM029', lines:[134]},
  {name:'SICVS011', lines:[127]},
  {name:'SIXAB001', lines:[120]},
  {name:'SIXAB002', lines:[614]},
  {name:'SQLCA', lines:[106]}
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
  copybook.sourceFile = 'src/CIB118D.cbl',
  copybook.evidenceFile = 'src/CIB118D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB118D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB118D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB118D'})
UNWIND [
  {name:'OPECORI', rel:'READS_TABLE', lines:[427]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[464]},
  {name:'R1', rel:'READS_TABLE', lines:[288]},
  {name:'R1', rel:'READS_TABLE', lines:[289]},
  {name:'R1', rel:'READS_TABLE', lines:[580]},
  {name:'R1', rel:'READS_TABLE', lines:[581]},
  {name:'R1', rel:'READS_TABLE', lines:[582]},
  {name:'R1', rel:'READS_TABLE', lines:[583]},
  {name:'R1', rel:'READS_TABLE', lines:[584]},
  {name:'R1', rel:'READS_TABLE', lines:[585]},
  {name:'R1', rel:'READS_TABLE', lines:[586]},
  {name:'R1', rel:'READS_TABLE', lines:[587]},
  {name:'R1', rel:'READS_TABLE', lines:[588]},
  {name:'R1', rel:'READS_TABLE', lines:[589]},
  {name:'R1', rel:'READS_TABLE', lines:[598]}
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
  table.sourceFile = 'src/CIB118D.cbl',
  table.evidenceFile = 'src/CIB118D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB118D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB118D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB118D.cbl',
    ut.evidenceLines = t.lines
);

MERGE (program:Program {name:'CIB119D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB119D.cbl',
  program.evidenceFile = 'src/CIB119D.cbl',
  program.evidenceLines = [5,6],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB119D.cbl');
MATCH (program:Program {name:'CIB119D'})
UNWIND [
  {name:'DCTAMARC', lines:[250]},
  {name:'DOPECORI', lines:[240]},
  {name:'DPARAM', lines:[245]},
  {name:'SI2CE028', lines:[708]},
  {name:'SI2CM026', lines:[741]},
  {name:'SI2FH027', lines:[104]},
  {name:'SI2R1025', lines:[153]},
  {name:'SIC004', lines:[692]},
  {name:'SIC005', lines:[118]},
  {name:'SICAM029', lines:[146]},
  {name:'SICNF043', lines:[139]},
  {name:'SICVS011', lines:[132]},
  {name:'SIXAB001', lines:[125]},
  {name:'SIXAB002', lines:[701]},
  {name:'SQLCA', lines:[111]}
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
  copybook.sourceFile = 'src/CIB119D.cbl',
  copybook.evidenceFile = 'src/CIB119D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB119D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB119D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB119D'})
UNWIND [
  {name:'OPECORI', rel:'READS_TABLE', lines:[424]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[466]},
  {name:'PARAM', rel:'READS_TABLE', lines:[377]},
  {name:'R1', rel:'READS_TABLE', lines:[597]},
  {name:'R1', rel:'READS_TABLE', lines:[598]},
  {name:'R1', rel:'READS_TABLE', lines:[599]},
  {name:'R1', rel:'READS_TABLE', lines:[600]},
  {name:'R1', rel:'READS_TABLE', lines:[601]},
  {name:'R1', rel:'READS_TABLE', lines:[602]},
  {name:'R1', rel:'READS_TABLE', lines:[603]},
  {name:'R1', rel:'READS_TABLE', lines:[604]},
  {name:'R1', rel:'READS_TABLE', lines:[605]},
  {name:'R1', rel:'READS_TABLE', lines:[606]},
  {name:'R1', rel:'READS_TABLE', lines:[659]},
  {name:'R1', rel:'READS_TABLE', lines:[684]},
  {name:'R1', rel:'READS_TABLE', lines:[685]}
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
  table.sourceFile = 'src/CIB119D.cbl',
  table.evidenceFile = 'src/CIB119D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB119D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB119D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB119D.cbl',
    ut.evidenceLines = t.lines
);

MERGE (program:Program {name:'CIB120D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB120D.cbl',
  program.evidenceFile = 'src/CIB120D.cbl',
  program.evidenceLines = [5,6],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB120D.cbl');
MATCH (program:Program {name:'CIB120D'})
UNWIND [
  {name:'999-0100-CONSTRUYE', lines:[911], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque funcional 999-0100-CONSTRUYE con logica de proceso y control de negocio respaldada por evidencia en fuente COBOL.'},
  {name:'999-9900-FIN', lines:[932], executionOrder:200, executionPhase:'TERMINATION', summary:'Cierra el flujo principal y finaliza la ejecucion del programa en el bloque 999-9900-FIN.'}
] AS para
MERGE (paragraph:Paragraph {programName: program.name, name: para.name})
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
  paragraph.agentReviewNotes = 'Summary generado automaticamente desde evidencia de PROCEDURE DIVISION; requiere validacion humana.',
  paragraph.sourceFile = 'src/CIB120D.cbl',
  paragraph.evidenceFile = 'src/CIB120D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'procedure-division-sequence',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10',
  hp.evidenceFile = 'src/CIB120D.cbl',
  hp.evidenceLines = para.lines;
MATCH (program:Program {name:'CIB120D'})
UNWIND [
  {name:'DCONGTIA', lines:[279]},
  {name:'DCONTITU', lines:[284]},
  {name:'DCTAMARC', lines:[274]},
  {name:'DOPECORI', lines:[264]},
  {name:'DPARAM', lines:[269]},
  {name:'DPRECIO', lines:[289]},
  {name:'SI2CE028', lines:[895]},
  {name:'SI2CM026', lines:[939]},
  {name:'SI2FH027', lines:[106]},
  {name:'SI2R1025', lines:[169]},
  {name:'SIC004', lines:[888]},
  {name:'SIC005', lines:[141]},
  {name:'SICAM029', lines:[162]},
  {name:'SICVS011', lines:[155]},
  {name:'SIXAB001', lines:[148]},
  {name:'SIXAB002', lines:[904]},
  {name:'SQLCA', lines:[134]}
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
  copybook.sourceFile = 'src/CIB120D.cbl',
  copybook.evidenceFile = 'src/CIB120D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB120D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB120D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB120D'})
UNWIND [
  {name:'CONGTIA', rel:'READS_TABLE', lines:[710]},
  {name:'CONTITU', rel:'READS_TABLE', lines:[743]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[500]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[517]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[604]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[621]},
  {name:'PARAM', rel:'READS_TABLE', lines:[529]},
  {name:'PARAM', rel:'READS_TABLE', lines:[633]},
  {name:'R1', rel:'READS_TABLE', lines:[398]},
  {name:'R1', rel:'READS_TABLE', lines:[399]},
  {name:'R1', rel:'READS_TABLE', lines:[400]},
  {name:'R1', rel:'READS_TABLE', lines:[828]},
  {name:'R1', rel:'READS_TABLE', lines:[829]},
  {name:'R1', rel:'READS_TABLE', lines:[830]},
  {name:'R1', rel:'READS_TABLE', lines:[831]},
  {name:'R1', rel:'READS_TABLE', lines:[846]},
  {name:'R1', rel:'READS_TABLE', lines:[847]},
  {name:'R1', rel:'READS_TABLE', lines:[848]},
  {name:'R1', rel:'READS_TABLE', lines:[849]},
  {name:'R1', rel:'READS_TABLE', lines:[850]},
  {name:'R1', rel:'READS_TABLE', lines:[851]},
  {name:'R1', rel:'READS_TABLE', lines:[852]},
  {name:'R1', rel:'READS_TABLE', lines:[853]},
  {name:'R1', rel:'READS_TABLE', lines:[854]},
  {name:'R1', rel:'READS_TABLE', lines:[855]},
  {name:'R1', rel:'READS_TABLE', lines:[863]},
  {name:'R1', rel:'READS_TABLE', lines:[864]},
  {name:'R1', rel:'READS_TABLE', lines:[865]},
  {name:'R1', rel:'READS_TABLE', lines:[876]},
  {name:'R1', rel:'READS_TABLE', lines:[877]},
  {name:'R1', rel:'READS_TABLE', lines:[878]},
  {name:'R1', rel:'READS_TABLE', lines:[879]},
  {name:'R1', rel:'READS_TABLE', lines:[880]},
  {name:'R1', rel:'READS_TABLE', lines:[881]}
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
  table.sourceFile = 'src/CIB120D.cbl',
  table.evidenceFile = 'src/CIB120D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB120D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB120D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB120D.cbl',
    ut.evidenceLines = t.lines
);

MERGE (program:Program {name:'CIB121D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB121D.cbl',
  program.evidenceFile = 'src/CIB121D.cbl',
  program.evidenceLines = [8,9],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB121D.cbl');
MATCH (program:Program {name:'CIB121D'})
UNWIND [
  {name:'DDEFOPER', lines:[184]},
  {name:'DOPECORI', lines:[179]},
  {name:'SI2CE028', lines:[561]},
  {name:'SI2CM026', lines:[595]},
  {name:'SI2FH027', lines:[75]},
  {name:'SI2R1025', lines:[125]},
  {name:'SIC000', lines:[89]},
  {name:'SIC004', lines:[545]},
  {name:'SIC005', lines:[82]},
  {name:'SICAM029', lines:[118]},
  {name:'SICPT104', lines:[111]},
  {name:'SICVS011', lines:[103]},
  {name:'SIXAB001', lines:[96]},
  {name:'SIXAB002', lines:[554]},
  {name:'SQLCA', lines:[68]}
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
  copybook.sourceFile = 'src/CIB121D.cbl',
  copybook.evidenceFile = 'src/CIB121D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB121D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB121D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB121D'})
UNWIND [
  {name:'DEFOPER', rel:'READS_TABLE', lines:[278]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[301]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[333]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[369]},
  {name:'OPECORI', rel:'UPDATES_TABLE', lines:[405]},
  {name:'OPECORI', rel:'UPDATES_TABLE', lines:[426]},
  {name:'R1', rel:'READS_TABLE', lines:[513]},
  {name:'R1', rel:'READS_TABLE', lines:[514]},
  {name:'R1', rel:'READS_TABLE', lines:[515]},
  {name:'R1', rel:'READS_TABLE', lines:[516]},
  {name:'R1', rel:'READS_TABLE', lines:[517]},
  {name:'R1', rel:'READS_TABLE', lines:[518]},
  {name:'R1', rel:'READS_TABLE', lines:[519]},
  {name:'R1', rel:'READS_TABLE', lines:[520]},
  {name:'R1', rel:'READS_TABLE', lines:[521]},
  {name:'R1', rel:'READS_TABLE', lines:[538]}
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
  table.sourceFile = 'src/CIB121D.cbl',
  table.evidenceFile = 'src/CIB121D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB121D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB121D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB121D.cbl',
    ut.evidenceLines = t.lines
);

MERGE (program:Program {name:'CIB122D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB122D.cbl',
  program.evidenceFile = 'src/CIB122D.cbl',
  program.evidenceLines = [8,9],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB122D.cbl');
MATCH (program:Program {name:'CIB122D'})
UNWIND [
  {name:'600-9900', lines:[645], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque funcional 600-9900 con logica de proceso y control de negocio respaldada por evidencia en fuente COBOL.'},
  {name:'999-0100-CONSTRUYE', lines:[798], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque funcional 999-0100-CONSTRUYE con logica de proceso y control de negocio respaldada por evidencia en fuente COBOL.'},
  {name:'999-9900-FIN', lines:[818], executionOrder:300, executionPhase:'TERMINATION', summary:'Cierra el flujo principal y finaliza la ejecucion del programa en el bloque 999-9900-FIN.'}
] AS para
MERGE (paragraph:Paragraph {programName: program.name, name: para.name})
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
  paragraph.agentReviewNotes = 'Summary generado automaticamente desde evidencia de PROCEDURE DIVISION; requiere validacion humana.',
  paragraph.sourceFile = 'src/CIB122D.cbl',
  paragraph.evidenceFile = 'src/CIB122D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'procedure-division-sequence',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10',
  hp.evidenceFile = 'src/CIB122D.cbl',
  hp.evidenceLines = para.lines;
MATCH (program:Program {name:'CIB122D'})
UNWIND [
  {name:'DCTAMARC', lines:[315]},
  {name:'DOPECORI', lines:[307]},
  {name:'DPARAM', lines:[311]},
  {name:'SI2CE028', lines:[791]},
  {name:'SI2CM026', lines:[824]},
  {name:'SI2FH027', lines:[97]},
  {name:'SI2R1025', lines:[139]},
  {name:'SIC004', lines:[775]},
  {name:'SIC005', lines:[111]},
  {name:'SICAM029', lines:[132]},
  {name:'SICVS011', lines:[125]},
  {name:'SIXAB001', lines:[118]},
  {name:'SIXAB002', lines:[784]},
  {name:'SQLCA', lines:[104]}
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
  copybook.sourceFile = 'src/CIB122D.cbl',
  copybook.evidenceFile = 'src/CIB122D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB122D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB122D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB122D'})
UNWIND [
  {name:'OPECORI', rel:'READS_TABLE', lines:[474]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[518]},
  {name:'R1', rel:'READS_TABLE', lines:[387]},
  {name:'R1', rel:'READS_TABLE', lines:[388]},
  {name:'R1', rel:'READS_TABLE', lines:[389]},
  {name:'R1', rel:'READS_TABLE', lines:[390]},
  {name:'R1', rel:'READS_TABLE', lines:[391]},
  {name:'R1', rel:'READS_TABLE', lines:[665]},
  {name:'R1', rel:'READS_TABLE', lines:[666]},
  {name:'R1', rel:'READS_TABLE', lines:[667]},
  {name:'R1', rel:'READS_TABLE', lines:[668]},
  {name:'R1', rel:'READS_TABLE', lines:[669]},
  {name:'R1', rel:'READS_TABLE', lines:[670]},
  {name:'R1', rel:'READS_TABLE', lines:[671]},
  {name:'R1', rel:'READS_TABLE', lines:[672]},
  {name:'R1', rel:'READS_TABLE', lines:[673]},
  {name:'R1', rel:'READS_TABLE', lines:[674]},
  {name:'R1', rel:'READS_TABLE', lines:[685]},
  {name:'R1', rel:'READS_TABLE', lines:[710]},
  {name:'R1', rel:'READS_TABLE', lines:[711]},
  {name:'R1', rel:'READS_TABLE', lines:[712]},
  {name:'R1', rel:'READS_TABLE', lines:[734]},
  {name:'R1', rel:'READS_TABLE', lines:[735]},
  {name:'R1', rel:'READS_TABLE', lines:[736]},
  {name:'R1', rel:'READS_TABLE', lines:[758]},
  {name:'R1', rel:'READS_TABLE', lines:[759]},
  {name:'R1', rel:'READS_TABLE', lines:[768]},
  {name:'R1', rel:'READS_TABLE', lines:[769]}
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
  table.sourceFile = 'src/CIB122D.cbl',
  table.evidenceFile = 'src/CIB122D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB122D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB122D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB122D.cbl',
    ut.evidenceLines = t.lines
);

MERGE (program:Program {name:'CIB123D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB123D.cbl',
  program.evidenceFile = 'src/CIB123D.cbl',
  program.evidenceLines = [7,8],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB123D.cbl');
MATCH (program:Program {name:'CIB123D'})
UNWIND [
  {name:'999-0100-CONSTRUYE', lines:[912], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque funcional 999-0100-CONSTRUYE con logica de proceso y control de negocio respaldada por evidencia en fuente COBOL.'},
  {name:'999-9900-FIN', lines:[933], executionOrder:200, executionPhase:'TERMINATION', summary:'Cierra el flujo principal y finaliza la ejecucion del programa en el bloque 999-9900-FIN.'}
] AS para
MERGE (paragraph:Paragraph {programName: program.name, name: para.name})
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
  paragraph.agentReviewNotes = 'Summary generado automaticamente desde evidencia de PROCEDURE DIVISION; requiere validacion humana.',
  paragraph.sourceFile = 'src/CIB123D.cbl',
  paragraph.evidenceFile = 'src/CIB123D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'procedure-division-sequence',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10',
  hp.evidenceFile = 'src/CIB123D.cbl',
  hp.evidenceLines = para.lines;
MATCH (program:Program {name:'CIB123D'})
UNWIND [
  {name:'DCONGTIA', lines:[284]},
  {name:'DCONTITU', lines:[289]},
  {name:'DCTAMARC', lines:[279]},
  {name:'DOPECORI', lines:[269]},
  {name:'DPARAM', lines:[274]},
  {name:'DPRECIO', lines:[294]},
  {name:'SI2CE028', lines:[905]},
  {name:'SI2CM026', lines:[940]},
  {name:'SI2FH027', lines:[102]},
  {name:'SI2R1025', lines:[165]},
  {name:'SIC004', lines:[889]},
  {name:'SIC005', lines:[137]},
  {name:'SICAM029', lines:[158]},
  {name:'SICVS011', lines:[151]},
  {name:'SIXAB001', lines:[144]},
  {name:'SIXAB002', lines:[898]},
  {name:'SQLCA', lines:[130]}
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
  copybook.sourceFile = 'src/CIB123D.cbl',
  copybook.evidenceFile = 'src/CIB123D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB123D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB123D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB123D'})
UNWIND [
  {name:'CONGTIA', rel:'READS_TABLE', lines:[728]},
  {name:'CONTITU', rel:'READS_TABLE', lines:[768]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[506]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[526]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[616]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[636]},
  {name:'PARAM', rel:'READS_TABLE', lines:[540]},
  {name:'PARAM', rel:'READS_TABLE', lines:[650]},
  {name:'R1', rel:'READS_TABLE', lines:[411]},
  {name:'R1', rel:'READS_TABLE', lines:[412]},
  {name:'R1', rel:'READS_TABLE', lines:[413]},
  {name:'R1', rel:'READS_TABLE', lines:[850]},
  {name:'R1', rel:'READS_TABLE', lines:[851]},
  {name:'R1', rel:'READS_TABLE', lines:[852]},
  {name:'R1', rel:'READS_TABLE', lines:[853]},
  {name:'R1', rel:'READS_TABLE', lines:[863]},
  {name:'R1', rel:'READS_TABLE', lines:[864]},
  {name:'R1', rel:'READS_TABLE', lines:[865]},
  {name:'R1', rel:'READS_TABLE', lines:[876]},
  {name:'R1', rel:'READS_TABLE', lines:[877]},
  {name:'R1', rel:'READS_TABLE', lines:[878]},
  {name:'R1', rel:'READS_TABLE', lines:[879]},
  {name:'R1', rel:'READS_TABLE', lines:[880]},
  {name:'R1', rel:'READS_TABLE', lines:[881]},
  {name:'R1', rel:'READS_TABLE', lines:[882]}
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
  table.sourceFile = 'src/CIB123D.cbl',
  table.evidenceFile = 'src/CIB123D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB123D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB123D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB123D.cbl',
    ut.evidenceLines = t.lines
);

MERGE (program:Program {name:'CIB124D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB124D.cbl',
  program.evidenceFile = 'src/CIB124D.cbl',
  program.evidenceLines = [2,3],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB124D.cbl');
MATCH (program:Program {name:'CIB124D'})
UNWIND [
  {name:'DCONGTIA', lines:[118]},
  {name:'DCUENTA', lines:[122]},
  {name:'DOPECORI', lines:[110]},
  {name:'DPARAM', lines:[114]},
  {name:'OPECORI', lines:[107]},
  {name:'SI2CM026', lines:[722]},
  {name:'SI2FH027', lines:[89]},
  {name:'SIC000', lines:[103]},
  {name:'SIC004', lines:[706]},
  {name:'SIC005', lines:[96]},
  {name:'SICAM029', lines:[143]},
  {name:'SICVS011', lines:[136]},
  {name:'SIXAB001', lines:[129]},
  {name:'SIXAB002', lines:[715]},
  {name:'SQLCA', lines:[82]}
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
  copybook.sourceFile = 'src/CIB124D.cbl',
  copybook.evidenceFile = 'src/CIB124D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB124D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB124D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB124D'})
UNWIND [
  {name:'CONGTIA', rel:'READS_TABLE', lines:[632]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[603]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[621]},
  {name:'PARAM', rel:'READS_TABLE', lines:[580]},
  {name:'R1', rel:'READS_TABLE', lines:[454]},
  {name:'R1', rel:'READS_TABLE', lines:[455]},
  {name:'R1', rel:'READS_TABLE', lines:[456]},
  {name:'R1', rel:'READS_TABLE', lines:[457]},
  {name:'R1', rel:'READS_TABLE', lines:[458]},
  {name:'R1', rel:'READS_TABLE', lines:[459]},
  {name:'R1', rel:'READS_TABLE', lines:[460]},
  {name:'R1', rel:'READS_TABLE', lines:[461]},
  {name:'R1', rel:'READS_TABLE', lines:[462]},
  {name:'R1', rel:'READS_TABLE', lines:[463]},
  {name:'R1', rel:'READS_TABLE', lines:[464]},
  {name:'R1', rel:'READS_TABLE', lines:[465]},
  {name:'R1', rel:'READS_TABLE', lines:[466]},
  {name:'R1', rel:'READS_TABLE', lines:[467]},
  {name:'R1', rel:'READS_TABLE', lines:[468]},
  {name:'R1', rel:'READS_TABLE', lines:[469]},
  {name:'R1', rel:'READS_TABLE', lines:[470]},
  {name:'R1', rel:'READS_TABLE', lines:[471]},
  {name:'R1', rel:'READS_TABLE', lines:[472]},
  {name:'R1', rel:'READS_TABLE', lines:[473]},
  {name:'R1', rel:'READS_TABLE', lines:[474]},
  {name:'R1', rel:'READS_TABLE', lines:[475]},
  {name:'R1', rel:'READS_TABLE', lines:[476]},
  {name:'R1', rel:'READS_TABLE', lines:[477]},
  {name:'R1', rel:'READS_TABLE', lines:[478]},
  {name:'R1', rel:'READS_TABLE', lines:[479]},
  {name:'R1', rel:'READS_TABLE', lines:[480]},
  {name:'R1', rel:'READS_TABLE', lines:[481]},
  {name:'R1', rel:'READS_TABLE', lines:[482]},
  {name:'R1', rel:'READS_TABLE', lines:[483]},
  {name:'R1', rel:'READS_TABLE', lines:[484]},
  {name:'R1', rel:'READS_TABLE', lines:[485]},
  {name:'R1', rel:'READS_TABLE', lines:[486]},
  {name:'R1', rel:'READS_TABLE', lines:[487]},
  {name:'R1', rel:'READS_TABLE', lines:[488]},
  {name:'R1', rel:'READS_TABLE', lines:[489]},
  {name:'R1', rel:'READS_TABLE', lines:[490]},
  {name:'R1', rel:'READS_TABLE', lines:[491]},
  {name:'R1', rel:'READS_TABLE', lines:[492]},
  {name:'R1', rel:'READS_TABLE', lines:[493]},
  {name:'R1', rel:'READS_TABLE', lines:[494]},
  {name:'R1', rel:'READS_TABLE', lines:[495]},
  {name:'R1', rel:'READS_TABLE', lines:[496]},
  {name:'R1', rel:'READS_TABLE', lines:[497]},
  {name:'R1', rel:'READS_TABLE', lines:[498]},
  {name:'R1', rel:'READS_TABLE', lines:[499]},
  {name:'R1', rel:'READS_TABLE', lines:[500]},
  {name:'R1', rel:'READS_TABLE', lines:[501]},
  {name:'R1', rel:'READS_TABLE', lines:[502]},
  {name:'R1', rel:'READS_TABLE', lines:[503]},
  {name:'R1', rel:'READS_TABLE', lines:[504]},
  {name:'R1', rel:'READS_TABLE', lines:[505]},
  {name:'R1', rel:'READS_TABLE', lines:[506]},
  {name:'R1', rel:'READS_TABLE', lines:[507]},
  {name:'R1', rel:'READS_TABLE', lines:[508]},
  {name:'R1', rel:'READS_TABLE', lines:[509]},
  {name:'R1', rel:'READS_TABLE', lines:[510]},
  {name:'R1', rel:'READS_TABLE', lines:[511]},
  {name:'R1', rel:'READS_TABLE', lines:[512]},
  {name:'R1', rel:'READS_TABLE', lines:[513]},
  {name:'R1', rel:'READS_TABLE', lines:[514]},
  {name:'R1', rel:'READS_TABLE', lines:[515]},
  {name:'R1', rel:'READS_TABLE', lines:[517]},
  {name:'R1', rel:'READS_TABLE', lines:[518]},
  {name:'R1', rel:'READS_TABLE', lines:[519]},
  {name:'R1', rel:'READS_TABLE', lines:[520]},
  {name:'R1', rel:'READS_TABLE', lines:[521]},
  {name:'R1', rel:'READS_TABLE', lines:[522]},
  {name:'R1', rel:'READS_TABLE', lines:[523]},
  {name:'R1', rel:'READS_TABLE', lines:[524]},
  {name:'R1', rel:'READS_TABLE', lines:[525]},
  {name:'R1', rel:'READS_TABLE', lines:[526]},
  {name:'R1', rel:'READS_TABLE', lines:[527]},
  {name:'R1', rel:'READS_TABLE', lines:[528]},
  {name:'R1', rel:'READS_TABLE', lines:[529]},
  {name:'R1', rel:'READS_TABLE', lines:[530]},
  {name:'R1', rel:'READS_TABLE', lines:[531]},
  {name:'R1', rel:'READS_TABLE', lines:[532]},
  {name:'R1', rel:'READS_TABLE', lines:[533]},
  {name:'R1', rel:'READS_TABLE', lines:[534]},
  {name:'R1', rel:'READS_TABLE', lines:[535]},
  {name:'R1', rel:'READS_TABLE', lines:[536]},
  {name:'R1', rel:'READS_TABLE', lines:[537]},
  {name:'R1', rel:'READS_TABLE', lines:[538]},
  {name:'R1', rel:'READS_TABLE', lines:[539]},
  {name:'R1', rel:'READS_TABLE', lines:[540]}
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
  table.sourceFile = 'src/CIB124D.cbl',
  table.evidenceFile = 'src/CIB124D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB124D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB124D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB124D.cbl',
    ut.evidenceLines = t.lines
);

MERGE (program:Program {name:'CIB125D'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'execution',
  program.nodeType = 'program',
  program.viewTag = 'execution',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/CIB125D.cbl',
  program.evidenceFile = 'src/CIB125D.cbl',
  program.evidenceLines = [7,8],
  program.runId = 'e2e-20260617-batch10'
ON MATCH SET
  program.lastSeenRunId = 'e2e-20260617-batch10',
  program.sourceFile = coalesce(program.sourceFile, 'src/CIB125D.cbl');
MATCH (program:Program {name:'CIB125D'})
UNWIND [
  {name:'DCUENTA', lines:[116]},
  {name:'DOPECORI', lines:[104]},
  {name:'DOPERA', lines:[112]},
  {name:'DPARAM', lines:[108]},
  {name:'SIC004', lines:[519]},
  {name:'SIC005', lines:[76]},
  {name:'SICAM029', lines:[97]},
  {name:'SICCM026', lines:[535]},
  {name:'SICFH027', lines:[62]},
  {name:'SICVS011', lines:[90]},
  {name:'SIXAB001', lines:[83]},
  {name:'SIXAB002', lines:[528]},
  {name:'SQLCA', lines:[69]}
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
  copybook.sourceFile = 'src/CIB125D.cbl',
  copybook.evidenceFile = 'src/CIB125D.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'e2e-20260617-batch10'
ON MATCH SET
  copybook.lastSeenRunId = 'e2e-20260617-batch10',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/CIB125D.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'e2e-20260617-batch10',
  ic.evidenceFile = 'src/CIB125D.cbl',
  ic.evidenceLines = c.lines;
MATCH (program:Program {name:'CIB125D'})
UNWIND [
  {name:'OPECORI', rel:'READS_TABLE', lines:[267]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[342]},
  {name:'OPECORI', rel:'READS_TABLE', lines:[364]},
  {name:'OPERA', rel:'UPDATES_TABLE', lines:[384]},
  {name:'PARAM', rel:'READS_TABLE', lines:[215]},
  {name:'PARAM', rel:'READS_TABLE', lines:[447]},
  {name:'PARAM', rel:'READS_TABLE', lines:[450]},
  {name:'PARAM', rel:'READS_TABLE', lines:[477]},
  {name:'PARAM', rel:'READS_TABLE', lines:[481]},
  {name:'PARAM', rel:'READS_TABLE', lines:[485]}
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
  table.sourceFile = 'src/CIB125D.cbl',
  table.evidenceFile = 'src/CIB125D.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'e2e-20260617-batch10'
ON MATCH SET
  table.lastSeenRunId = 'e2e-20260617-batch10',
  table.sourceFile = coalesce(table.sourceFile, 'src/CIB125D.cbl')
FOREACH (_ IN CASE WHEN t.rel = 'READS_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[rt:READS_TABLE]->(table)
  ON CREATE SET
    rt.runId = 'e2e-20260617-batch10',
    rt.evidenceFile = 'src/CIB125D.cbl',
    rt.evidenceLines = t.lines
)
FOREACH (_ IN CASE WHEN t.rel = 'UPDATES_TABLE' THEN [1] ELSE [] END |
  MERGE (program)-[ut:UPDATES_TABLE]->(table)
  ON CREATE SET
    ut.runId = 'e2e-20260617-batch10',
    ut.evidenceFile = 'src/CIB125D.cbl',
    ut.evidenceLines = t.lines
);

MATCH (p:Program)
WHERE p.runId = 'e2e-20260617-batch10' OR p.lastSeenRunId = 'e2e-20260617-batch10'
RETURN count(p) AS programsTouched;
