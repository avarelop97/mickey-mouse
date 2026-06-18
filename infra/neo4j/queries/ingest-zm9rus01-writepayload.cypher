// Ingestion write payload: ZM9RUS01
// Mode: commit (idempotent MERGE)

CREATE CONSTRAINT program_name_unique IF NOT EXISTS
FOR (n:Program) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT copybook_name_unique IF NOT EXISTS
FOR (n:Copybook) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT paragraph_program_name_unique IF NOT EXISTS
FOR (n:Paragraph) REQUIRE (n.programName, n.name) IS UNIQUE;

CREATE CONSTRAINT table_name_unique IF NOT EXISTS
FOR (n:DBTable) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT param_type_name_unique IF NOT EXISTS
FOR (n:ParamType) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT routine_name_unique IF NOT EXISTS
FOR (n:ExternalRoutine) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT file_name_unique IF NOT EXISTS
FOR (n:OutputFile) REQUIRE n.name IS UNIQUE;

MERGE (program:Program {name: 'ZM9RUS01'})
ON CREATE SET
  program.ingestion = 'auto',
  program.layer = 'program',
  program.nodeType = 'program',
  program.viewTag = 'program',
  program.reviewStatus = 'pending_human_review',
  program.reviewRequired = true,
  program.reviewSource = 'auto-ingestion',
  program.sourceFile = 'src/ZM9RUS01.cbl',
  program.evidenceFile = 'src/ZM9RUS01.cbl',
  program.evidenceLines = [330, 334],
  program.runId = 'precheck-20260617-zm9rus01'
ON MATCH SET
  program.lastSeenRunId = 'precheck-20260617-zm9rus01',
  program.sourceFile = coalesce(program.sourceFile, 'src/ZM9RUS01.cbl');

MATCH (program:Program {name:'ZM9RUS01'})
UNWIND [
  {name:'000000-CONTROL', lines:[334]},
  {name:'100000-INICIO-PROGRAMA', lines:[342]},
  {name:'100100-VALIDA-PARAM', lines:[367]},
  {name:'200000-PROCESO-PROGRAMA', lines:[395]},
  {name:'200100-ARMA-EMAIL-PROMOTOR', lines:[469]},
  {name:'200100-CONSULTA-PROMOTOR', lines:[593]},
  {name:'200200-INSERTA-ALERTA-ZMDT800', lines:[628]},
  {name:'200300-INSERTA-PARAM', lines:[677]},
  {name:'300000-FINAL-PROGRAMA', lines:[701]},
  {name:'9000-ESCRIBE-QUEUE', lines:[734]}
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
  paragraph.sourceFile = 'src/ZM9RUS01.cbl',
  paragraph.evidenceFile = 'src/ZM9RUS01.cbl',
  paragraph.evidenceLines = p.lines,
  paragraph.runId = 'precheck-20260617-zm9rus01'
ON MATCH SET
  paragraph.lastSeenRunId = 'precheck-20260617-zm9rus01',
  paragraph.sourceFile = coalesce(paragraph.sourceFile, 'src/ZM9RUS01.cbl')
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'precheck-20260617-zm9rus01',
  hp.evidenceFile = 'src/ZM9RUS01.cbl',
  hp.evidenceLines = p.lines;

MATCH (program:Program {name:'ZM9RUS01'})
UNWIND [
  {name:'SQLCA', lines:[271,272,273]},
  {name:'ZZMDT800', lines:[275,276,277]},
  {name:'ZPARAM', lines:[279,280,281]},
  {name:'ZORDENES', lines:[283,284,285]},
  {name:'ZUSUARIO', lines:[287,288,289]},
  {name:'AJW0ALRT', lines:[291,292]},
  {name:'KZDEC101', lines:[294,295]},
  {name:'AJWALRT1', lines:[325,326]}
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
  copybook.sourceFile = 'src/ZM9RUS01.cbl',
  copybook.evidenceFile = 'src/ZM9RUS01.cbl',
  copybook.evidenceLines = c.lines,
  copybook.runId = 'precheck-20260617-zm9rus01'
ON MATCH SET
  copybook.lastSeenRunId = 'precheck-20260617-zm9rus01',
  copybook.sourceFile = coalesce(copybook.sourceFile, 'src/ZM9RUS01.cbl')
MERGE (program)-[ic:INCLUDES_COPYBOOK]->(copybook)
ON CREATE SET
  ic.runId = 'precheck-20260617-zm9rus01',
  ic.evidenceFile = 'src/ZM9RUS01.cbl',
  ic.evidenceLines = c.lines;

MATCH (program:Program {name:'ZM9RUS01'})
UNWIND [
  {name:'PARAM', lines:[378,688]},
  {name:'ORDENES', lines:[602,603,604]},
  {name:'USUARIO', lines:[602,604]},
  {name:'ZMDT800', lines:[635,646]}
] AS t
MERGE (table:DBTable {name:t.name})
ON CREATE SET
  table.ingestion = 'auto',
  table.layer = 'data-access',
  table.nodeType = 'physical-table',
  table.viewTag = 'data-access',
  table.reviewStatus = 'pending_human_review',
  table.reviewRequired = true,
  table.reviewSource = 'auto-ingestion',
  table.sourceFile = 'src/ZM9RUS01.cbl',
  table.evidenceFile = 'src/ZM9RUS01.cbl',
  table.evidenceLines = t.lines,
  table.runId = 'precheck-20260617-zm9rus01'
ON MATCH SET
  table.lastSeenRunId = 'precheck-20260617-zm9rus01',
  table.sourceFile = coalesce(table.sourceFile, 'src/ZM9RUS01.cbl');

MATCH (program:Program {name:'ZM9RUS01'})
MATCH (param:DBTable {name:'PARAM'})
MERGE (program)-[rr:READS_TABLE]->(param)
ON CREATE SET rr.runId='precheck-20260617-zm9rus01', rr.evidenceFile='src/ZM9RUS01.cbl', rr.evidenceLines=[375,376,378,379,380];

MATCH (program:Program {name:'ZM9RUS01'})
MATCH (ord:DBTable {name:'ORDENES'})
MERGE (program)-[ro:READS_TABLE]->(ord)
ON CREATE SET ro.runId='precheck-20260617-zm9rus01', ro.evidenceFile='src/ZM9RUS01.cbl', ro.evidenceLines=[599,600,602,603,604];

MATCH (program:Program {name:'ZM9RUS01'})
MATCH (usr:DBTable {name:'USUARIO'})
MERGE (program)-[ru:READS_TABLE]->(usr)
ON CREATE SET ru.runId='precheck-20260617-zm9rus01', ru.evidenceFile='src/ZM9RUS01.cbl', ru.evidenceLines=[599,600,602,604];

MATCH (program:Program {name:'ZM9RUS01'})
MATCH (z8:DBTable {name:'ZMDT800'})
MERGE (program)-[uz8:UPDATES_TABLE]->(z8)
ON CREATE SET uz8.runId='precheck-20260617-zm9rus01', uz8.evidenceFile='src/ZM9RUS01.cbl', uz8.evidenceLines=[634,635,646,647,658,660];

MATCH (program:Program {name:'ZM9RUS01'})
MATCH (param:DBTable {name:'PARAM'})
MERGE (program)-[up:UPDATES_TABLE]->(param)
ON CREATE SET up.runId='precheck-20260617-zm9rus01', up.evidenceFile='src/ZM9RUS01.cbl', up.evidenceLines=[687,688,692,694,695];

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'100100-VALIDA-PARAM'})
MATCH (cb:Copybook {name:'ZPARAM'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'Usa DCLPARAM para preparar y recibir el acceso SQL a PARAM.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [373,374,377,379,380],
  r.runId = 'precheck-20260617-zm9rus01';

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'200000-PROCESO-PROGRAMA'})
MATCH (cb:Copybook {name:'KZDEC101'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'Inicializa y puebla campos C11 del layout de mensaje antes de delegar el armado e insercion.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [402,407,409,437,447,452],
  r.runId = 'precheck-20260617-zm9rus01';

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'200100-ARMA-EMAIL-PROMOTOR'})
MATCH (cb:Copybook {name:'AJWALRT1'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'Consume campos WS-ALRT de la commarea para construir el texto del correo.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [476,483,484,500,501,502,503,518],
  r.runId = 'precheck-20260617-zm9rus01';

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'200100-ARMA-EMAIL-PROMOTOR'})
MATCH (cb:Copybook {name:'ZZMDT800'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'Puebla la estructura ZM800 usada despues por la insercion en ZMDT800.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [546,558],
  r.runId = 'precheck-20260617-zm9rus01';

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'200100-CONSULTA-PROMOTOR'})
MATCH (cb:Copybook {name:'ZORDENES'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'La consulta SQL referencia la tabla ORDENES y su join por IORDENES/IUSERAUT.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [602,603,604],
  r.runId = 'precheck-20260617-zm9rus01';

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'200100-CONSULTA-PROMOTOR'})
MATCH (cb:Copybook {name:'ZUSUARIO'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'La consulta recibe IPROM en DCLUSUARIO y resuelve el join contra USUARIO.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [601,602,604,610],
  r.runId = 'precheck-20260617-zm9rus01';

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'200100-CONSULTA-PROMOTOR'})
MATCH (cb:Copybook {name:'ZZMDT800'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'Usa ZM800-IORDENES como insumo de la consulta y ZM800-IPROM como destino del resultado.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [597,603,610],
  r.runId = 'precheck-20260617-zm9rus01';

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'200200-INSERTA-ALERTA-ZMDT800'})
MATCH (cb:Copybook {name:'ZZMDT800'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'La sentencia INSERT consume la estructura ZM800 completa.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [635,648,658],
  r.runId = 'precheck-20260617-zm9rus01';

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'200300-INSERTA-PARAM'})
MATCH (cb:Copybook {name:'ZPARAM'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'Mueve DCLPARAM y luego inserta ese layout en PARAM.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [683,685,688,692,694],
  r.runId = 'precheck-20260617-zm9rus01';

MATCH (p:Paragraph {programName:'ZM9RUS01', name:'300000-FINAL-PROGRAMA'})
MATCH (cb:Copybook {name:'AJWALRT1'})
MERGE (p)-[r:USES_COPYBOOK]->(cb)
ON CREATE SET
  r.why = 'Reporta en trazas campos WS-ALRT de salida y error provenientes de la commarea.',
  r.evidenceFile = 'src/ZM9RUS01.cbl',
  r.evidenceLines = [708,709,712,713,716,717,720,721,724,725],
  r.runId = 'precheck-20260617-zm9rus01';

RETURN 'OK' AS status, 'ZM9RUS01 payload aplicado' AS message;
