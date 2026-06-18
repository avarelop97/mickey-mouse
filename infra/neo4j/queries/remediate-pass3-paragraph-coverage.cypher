// ============================================================================
// REMEDIATION PASS-3: Paragraph coverage fix
// RunId: e2e-20260617-pass3-coverage-fix
// Objetivo: cerrar brecha PERFORM targets vs Paragraph para programas auditados.
// ============================================================================

MATCH (program:Program {name:'CIB065D'})
WITH program
UNWIND [
  {name:'CIB065D', lines:[3], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB065D: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'IBM-4381', lines:[24], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-4381: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'005-FECHAS', lines:[96], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 005-FECHAS: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'010-LEE-TIPO-CAMBIO', lines:[97], executionOrder:400, executionPhase:'PROCESSING', summary:'Bloque 010-LEE-TIPO-CAMBIO: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'810-TERMINA', lines:[98], executionOrder:500, executionPhase:'TERMINATION', summary:'Bloque 810-TERMINA: cierre controlado del proceso y terminacion del programa.'},
  {name:'970-SQL-ERROR', lines:[113], executionOrder:600, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: ruta de error o aborto transaccional en flujo procedural.'},
  {name:'020-OBTEN-TIPO-24', lines:[159], executionOrder:700, executionPhase:'PROCESSING', summary:'Bloque 020-OBTEN-TIPO-24: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'030-GRABA-VALOR-48', lines:[190], executionOrder:800, executionPhase:'PERSISTENCE', summary:'Bloque 030-GRABA-VALOR-48: persistencia de datos con control de resultado y manejo de excepciones.'},
  {name:'980-ABORTA', lines:[237], executionOrder:900, executionPhase:'ERROR_PATH', summary:'Bloque 980-ABORTA: ruta de error o aborto transaccional en flujo procedural.'}
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
  paragraph.agentReviewNotes = 'Pass-3: cobertura de paragraph completada con normalizacion de formato fijo y targets de PERFORM.',
  paragraph.sourceFile = 'src/CIB065D.cbl',
  paragraph.evidenceFile = 'src/CIB065D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-pass3-coverage-fix'
SET
  paragraph.summary = coalesce(paragraph.summary, para.summary),
  paragraph.executionOrder = coalesce(paragraph.executionOrder, para.executionOrder),
  paragraph.executionPhase = coalesce(paragraph.executionPhase, para.executionPhase),
  paragraph.executionOrderSource = coalesce(paragraph.executionOrderSource, 'pass3-perform-and-label-coverage'),
  paragraph.lastSeenRunId = 'e2e-20260617-pass3-coverage-fix',
  paragraph.agentReviewedBy = coalesce(paragraph.agentReviewedBy, 'cobol-evidence-extractor'),
  paragraph.agentReviewedAt = coalesce(paragraph.agentReviewedAt, toString(datetime())),
  paragraph.agentReviewNotes = coalesce(paragraph.agentReviewNotes, 'Pass-3: cobertura de paragraph completada con normalizacion de formato fijo y targets de PERFORM.')
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-pass3-coverage-fix',
  hp.evidenceFile = 'src/CIB065D.cbl',
  hp.evidenceLines = para.lines;

MATCH (program:Program {name:'CIB120D'})
WITH program
UNWIND [
  {name:'CIB120D', lines:[6], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB120D: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'IBM-9121', lines:[26], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-MUEVE-FECHAS', lines:[297], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 999-MUEVE-FECHAS: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'500-DEFINE-CURSOR-VIGENTE-CASA', lines:[307], executionOrder:400, executionPhase:'TERMINATION', summary:'Bloque 500-DEFINE-CURSOR-VIGENTE-CASA: cierre controlado del proceso y terminacion del programa.'},
  {name:'530-DEFINE-CURSOR-VIGENTE-BCO', lines:[308], executionOrder:500, executionPhase:'TERMINATION', summary:'Bloque 530-DEFINE-CURSOR-VIGENTE-BCO: cierre controlado del proceso y terminacion del programa.'},
  {name:'005-PROCESO', lines:[309], executionOrder:600, executionPhase:'PROCESSING', summary:'Bloque 005-PROCESO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'700-FIN', lines:[313], executionOrder:700, executionPhase:'TERMINATION', summary:'Bloque 700-FIN: cierre controlado del proceso y terminacion del programa.'},
  {name:'010-INICIO', lines:[319], executionOrder:800, executionPhase:'INITIALIZATION', summary:'Bloque 010-INICIO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'040-PROCESA-VIGENTE', lines:[322], executionOrder:900, executionPhase:'PROCESSING', summary:'Bloque 040-PROCESA-VIGENTE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'020-INICIA-WAREAS-REPORTE', lines:[345], executionOrder:1000, executionPhase:'INITIALIZATION', summary:'Bloque 020-INICIA-WAREAS-REPORTE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'015-ENCABEZADO', lines:[346], executionOrder:1100, executionPhase:'PROCESSING', summary:'Bloque 015-ENCABEZADO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-CONST-ENCA', lines:[354], executionOrder:1200, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-CONST-ENCA-BANCO', lines:[356], executionOrder:1300, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA-BANCO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'705-ENCABEZADO', lines:[359], executionOrder:1400, executionPhase:'PROCESSING', summary:'Bloque 705-ENCABEZADO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'R1-06-FECHA-VENC', lines:[386], executionOrder:1500, executionPhase:'PROCESSING', summary:'Bloque R1-06-FECHA-VENC: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'730-ESCRIBE-TIT', lines:[397], executionOrder:1600, executionPhase:'PROCESSING', summary:'Bloque 730-ESCRIBE-TIT: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'050-PROCESA-DETALLE', lines:[402], executionOrder:1700, executionPhase:'PROCESSING', summary:'Bloque 050-PROCESA-DETALLE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'560-BUSCA-GARANTIA', lines:[410], executionOrder:1800, executionPhase:'PROCESSING', summary:'Bloque 560-BUSCA-GARANTIA: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'060-DECIDE-IOPERA', lines:[411], executionOrder:1900, executionPhase:'PROCESSING', summary:'Bloque 060-DECIDE-IOPERA: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'570-CURSOR-CAUCION', lines:[412], executionOrder:2000, executionPhase:'PROCESSING', summary:'Bloque 570-CURSOR-CAUCION: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'575-LEE-CAUCION', lines:[414], executionOrder:2100, executionPhase:'PROCESSING', summary:'Bloque 575-LEE-CAUCION: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'070-DETERMINA-VALUACION', lines:[418], executionOrder:2200, executionPhase:'TERMINATION', summary:'Bloque 070-DETERMINA-VALUACION: cierre controlado del proceso y terminacion del programa.'},
  {name:'100-GENERA-REGISTRO', lines:[419], executionOrder:2300, executionPhase:'PROCESSING', summary:'Bloque 100-GENERA-REGISTRO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'520-LEE-VIGENTE-CASA', lines:[421], executionOrder:2400, executionPhase:'PROCESSING', summary:'Bloque 520-LEE-VIGENTE-CASA: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'540-LEE-VIGENTE-BANCO', lines:[423], executionOrder:2500, executionPhase:'PROCESSING', summary:'Bloque 540-LEE-VIGENTE-BANCO: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'720-REP-CONCEPTOS', lines:[488], executionOrder:2600, executionPhase:'PROCESSING', summary:'Bloque 720-REP-CONCEPTOS: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'970-SQL-ERROR', lines:[544], executionOrder:2700, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: ruta de error o aborto transaccional en flujo procedural.'},
  {name:'706-ENCABEZADO', lines:[837], executionOrder:2800, executionPhase:'PROCESSING', summary:'Bloque 706-ENCABEZADO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'980-ABORTA', lines:[901], executionOrder:2900, executionPhase:'ERROR_PATH', summary:'Bloque 980-ABORTA: ruta de error o aborto transaccional en flujo procedural.'},
  {name:'999-0100-CONSTRUYE', lines:[911], executionOrder:3000, executionPhase:'PROCESSING', summary:'Bloque 999-0100-CONSTRUYE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'R1-01-CIA', lines:[931], executionOrder:3100, executionPhase:'PROCESSING', summary:'Bloque R1-01-CIA: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-9900-FIN', lines:[932], executionOrder:3200, executionPhase:'TERMINATION', summary:'Bloque 999-9900-FIN: cierre controlado del proceso y terminacion del programa.'},
  {name:'EXIT', lines:[933], executionOrder:3300, executionPhase:'PROCESSING', summary:'Bloque EXIT: paso procedural identificado por evidencia en labels o targets de PERFORM.'}
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
  paragraph.agentReviewNotes = 'Pass-3: cobertura de paragraph completada con normalizacion de formato fijo y targets de PERFORM.',
  paragraph.sourceFile = 'src/CIB120D.cbl',
  paragraph.evidenceFile = 'src/CIB120D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-pass3-coverage-fix'
SET
  paragraph.summary = coalesce(paragraph.summary, para.summary),
  paragraph.executionOrder = coalesce(paragraph.executionOrder, para.executionOrder),
  paragraph.executionPhase = coalesce(paragraph.executionPhase, para.executionPhase),
  paragraph.executionOrderSource = coalesce(paragraph.executionOrderSource, 'pass3-perform-and-label-coverage'),
  paragraph.lastSeenRunId = 'e2e-20260617-pass3-coverage-fix',
  paragraph.agentReviewedBy = coalesce(paragraph.agentReviewedBy, 'cobol-evidence-extractor'),
  paragraph.agentReviewedAt = coalesce(paragraph.agentReviewedAt, toString(datetime())),
  paragraph.agentReviewNotes = coalesce(paragraph.agentReviewNotes, 'Pass-3: cobertura de paragraph completada con normalizacion de formato fijo y targets de PERFORM.')
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-pass3-coverage-fix',
  hp.evidenceFile = 'src/CIB120D.cbl',
  hp.evidenceLines = para.lines;

MATCH (program:Program {name:'CIB122D'})
WITH program
UNWIND [
  {name:'CIB122D', lines:[9], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB122D: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'IBM-9121', lines:[37], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-MUEVE-FECHAS', lines:[323], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 999-MUEVE-FECHAS: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'510-DEFINE-CURSOR-POSICIONCA', lines:[332], executionOrder:400, executionPhase:'TERMINATION', summary:'Bloque 510-DEFINE-CURSOR-POSICIONCA: cierre controlado del proceso y terminacion del programa.'},
  {name:'515-DEFINE-CURSOR-POSICIONBA', lines:[333], executionOrder:500, executionPhase:'TERMINATION', summary:'Bloque 515-DEFINE-CURSOR-POSICIONBA: cierre controlado del proceso y terminacion del programa.'},
  {name:'020-LIMPIA-REPORTE', lines:[340], executionOrder:600, executionPhase:'PROCESSING', summary:'Bloque 020-LIMPIA-REPORTE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'010-INICIO', lines:[341], executionOrder:700, executionPhase:'INITIALIZATION', summary:'Bloque 010-INICIO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'810-SUMA-TOTALES-FIN', lines:[345], executionOrder:800, executionPhase:'TERMINATION', summary:'Bloque 810-SUMA-TOTALES-FIN: cierre controlado del proceso y terminacion del programa.'},
  {name:'700-FIN', lines:[346], executionOrder:900, executionPhase:'TERMINATION', summary:'Bloque 700-FIN: cierre controlado del proceso y terminacion del programa.'},
  {name:'999-CONST-ENCA', lines:[356], executionOrder:1000, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-CONST-ENCA-BANCO', lines:[358], executionOrder:1100, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA-BANCO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'705-ENCABEZADO', lines:[361], executionOrder:1200, executionPhase:'PROCESSING', summary:'Bloque 705-ENCABEZADO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'015-PROCESO-CURSORES', lines:[364], executionOrder:1300, executionPhase:'PROCESSING', summary:'Bloque 015-PROCESO-CURSORES: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'030-PROCESA-INFORMACION', lines:[372], executionOrder:1400, executionPhase:'PROCESSING', summary:'Bloque 030-PROCESA-INFORMACION: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'R1-15-VALUA', lines:[410], executionOrder:1500, executionPhase:'PROCESSING', summary:'Bloque R1-15-VALUA: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'050-GENERA-REGISTRO-IMPRESION', lines:[416], executionOrder:1600, executionPhase:'PROCESSING', summary:'Bloque 050-GENERA-REGISTRO-IMPRESION: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'520-LEE-POSICIONCA', lines:[418], executionOrder:1700, executionPhase:'PROCESSING', summary:'Bloque 520-LEE-POSICIONCA: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'530-LEE-POSICIONBA', lines:[420], executionOrder:1800, executionPhase:'PROCESSING', summary:'Bloque 530-LEE-POSICIONBA: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'600-CALCULA-VALUACION', lines:[441], executionOrder:1900, executionPhase:'PROCESSING', summary:'Bloque 600-CALCULA-VALUACION: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'720-REP-CONCEPTOS', lines:[458], executionOrder:2000, executionPhase:'PROCESSING', summary:'Bloque 720-REP-CONCEPTOS: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'970-SQL-ERROR', lines:[500], executionOrder:2100, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: ruta de error o aborto transaccional en flujo procedural.'},
  {name:'600-9900', lines:[645], executionOrder:2200, executionPhase:'PROCESSING', summary:'Bloque 600-9900: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'EXIT', lines:[646], executionOrder:2300, executionPhase:'PROCESSING', summary:'Bloque EXIT: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'800-SUMA-TOTALES', lines:[684], executionOrder:2400, executionPhase:'PROCESSING', summary:'Bloque 800-SUMA-TOTALES: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'980-ABORTA', lines:[781], executionOrder:2500, executionPhase:'ERROR_PATH', summary:'Bloque 980-ABORTA: ruta de error o aborto transaccional en flujo procedural.'},
  {name:'999-0100-CONSTRUYE', lines:[798], executionOrder:2600, executionPhase:'PROCESSING', summary:'Bloque 999-0100-CONSTRUYE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'R1-01-CIA', lines:[817], executionOrder:2700, executionPhase:'PROCESSING', summary:'Bloque R1-01-CIA: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-9900-FIN', lines:[818], executionOrder:2800, executionPhase:'TERMINATION', summary:'Bloque 999-9900-FIN: cierre controlado del proceso y terminacion del programa.'}
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
  paragraph.agentReviewNotes = 'Pass-3: cobertura de paragraph completada con normalizacion de formato fijo y targets de PERFORM.',
  paragraph.sourceFile = 'src/CIB122D.cbl',
  paragraph.evidenceFile = 'src/CIB122D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-pass3-coverage-fix'
SET
  paragraph.summary = coalesce(paragraph.summary, para.summary),
  paragraph.executionOrder = coalesce(paragraph.executionOrder, para.executionOrder),
  paragraph.executionPhase = coalesce(paragraph.executionPhase, para.executionPhase),
  paragraph.executionOrderSource = coalesce(paragraph.executionOrderSource, 'pass3-perform-and-label-coverage'),
  paragraph.lastSeenRunId = 'e2e-20260617-pass3-coverage-fix',
  paragraph.agentReviewedBy = coalesce(paragraph.agentReviewedBy, 'cobol-evidence-extractor'),
  paragraph.agentReviewedAt = coalesce(paragraph.agentReviewedAt, toString(datetime())),
  paragraph.agentReviewNotes = coalesce(paragraph.agentReviewNotes, 'Pass-3: cobertura de paragraph completada con normalizacion de formato fijo y targets de PERFORM.')
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-pass3-coverage-fix',
  hp.evidenceFile = 'src/CIB122D.cbl',
  hp.evidenceLines = para.lines;

MATCH (program:Program {name:'CIB123D'})
WITH program
UNWIND [
  {name:'CIB123D', lines:[8], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB123D: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'IBM-9121', lines:[28], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'000-CONTROL', lines:[301], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 000-CONTROL: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-MUEVE-FECHAS', lines:[302], executionOrder:400, executionPhase:'PROCESSING', summary:'Bloque 999-MUEVE-FECHAS: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'500-DEFINE-CURSOR-VIGENTE-CASA', lines:[312], executionOrder:500, executionPhase:'TERMINATION', summary:'Bloque 500-DEFINE-CURSOR-VIGENTE-CASA: cierre controlado del proceso y terminacion del programa.'},
  {name:'530-DEFINE-CURSOR-VIGENTE-BCO', lines:[313], executionOrder:600, executionPhase:'TERMINATION', summary:'Bloque 530-DEFINE-CURSOR-VIGENTE-BCO: cierre controlado del proceso y terminacion del programa.'},
  {name:'005-PROCESO', lines:[314], executionOrder:700, executionPhase:'PROCESSING', summary:'Bloque 005-PROCESO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'700-FIN', lines:[318], executionOrder:800, executionPhase:'TERMINATION', summary:'Bloque 700-FIN: cierre controlado del proceso y terminacion del programa.'},
  {name:'010-INICIO', lines:[325], executionOrder:900, executionPhase:'INITIALIZATION', summary:'Bloque 010-INICIO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'040-PROCESA-VIGENTE', lines:[327], executionOrder:1000, executionPhase:'PROCESSING', summary:'Bloque 040-PROCESA-VIGENTE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'020-INICIA-WAREAS-REPORTE', lines:[349], executionOrder:1100, executionPhase:'INITIALIZATION', summary:'Bloque 020-INICIA-WAREAS-REPORTE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'030-INICIA-WAREAS', lines:[350], executionOrder:1200, executionPhase:'INITIALIZATION', summary:'Bloque 030-INICIA-WAREAS: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'015-ENCABEZADO', lines:[351], executionOrder:1300, executionPhase:'PROCESSING', summary:'Bloque 015-ENCABEZADO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-CONST-ENCA', lines:[360], executionOrder:1400, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-CONST-ENCA-BANCO', lines:[362], executionOrder:1500, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA-BANCO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'705-ENCABEZADO', lines:[365], executionOrder:1600, executionPhase:'PROCESSING', summary:'Bloque 705-ENCABEZADO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'R1-01-CONTRATO', lines:[392], executionOrder:1700, executionPhase:'PROCESSING', summary:'Bloque R1-01-CONTRATO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'730-ESCRIBE-TIT', lines:[410], executionOrder:1800, executionPhase:'PROCESSING', summary:'Bloque 730-ESCRIBE-TIT: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'050-PROCESA-DETALLE', lines:[415], executionOrder:1900, executionPhase:'PROCESSING', summary:'Bloque 050-PROCESA-DETALLE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'560-BUSCA-GARANTIA', lines:[423], executionOrder:2000, executionPhase:'PROCESSING', summary:'Bloque 560-BUSCA-GARANTIA: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'100-GENERA-REGISTRO', lines:[424], executionOrder:2100, executionPhase:'PROCESSING', summary:'Bloque 100-GENERA-REGISTRO: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'520-LEE-VIGENTE-CASA', lines:[426], executionOrder:2200, executionPhase:'PROCESSING', summary:'Bloque 520-LEE-VIGENTE-CASA: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'540-LEE-VIGENTE-BANCO', lines:[428], executionOrder:2300, executionPhase:'PROCESSING', summary:'Bloque 540-LEE-VIGENTE-BANCO: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'060-DECIDE-IOPERA', lines:[434], executionOrder:2400, executionPhase:'PROCESSING', summary:'Bloque 060-DECIDE-IOPERA: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'070-DETERMINA-VALUACION', lines:[453], executionOrder:2500, executionPhase:'TERMINATION', summary:'Bloque 070-DETERMINA-VALUACION: cierre controlado del proceso y terminacion del programa.'},
  {name:'720-REP-CONCEPTOS', lines:[494], executionOrder:2600, executionPhase:'PROCESSING', summary:'Bloque 720-REP-CONCEPTOS: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'970-SQL-ERROR', lines:[555], executionOrder:2700, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: ruta de error o aborto transaccional en flujo procedural.'},
  {name:'570-CURSOR-CAUCION', lines:[753], executionOrder:2800, executionPhase:'PROCESSING', summary:'Bloque 570-CURSOR-CAUCION: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'575-LEE-CAUCION', lines:[755], executionOrder:2900, executionPhase:'PROCESSING', summary:'Bloque 575-LEE-CAUCION: lectura o consulta de datos con evidencia de invocacion en flujo procedural.'},
  {name:'980-ABORTA', lines:[895], executionOrder:3000, executionPhase:'ERROR_PATH', summary:'Bloque 980-ABORTA: ruta de error o aborto transaccional en flujo procedural.'},
  {name:'999-0100-CONSTRUYE', lines:[912], executionOrder:3100, executionPhase:'PROCESSING', summary:'Bloque 999-0100-CONSTRUYE: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'R1-01-CIA', lines:[932], executionOrder:3200, executionPhase:'PROCESSING', summary:'Bloque R1-01-CIA: paso procedural identificado por evidencia en labels o targets de PERFORM.'},
  {name:'999-9900-FIN', lines:[933], executionOrder:3300, executionPhase:'TERMINATION', summary:'Bloque 999-9900-FIN: cierre controlado del proceso y terminacion del programa.'},
  {name:'EXIT', lines:[934], executionOrder:3400, executionPhase:'PROCESSING', summary:'Bloque EXIT: paso procedural identificado por evidencia en labels o targets de PERFORM.'}
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
  paragraph.agentReviewNotes = 'Pass-3: cobertura de paragraph completada con normalizacion de formato fijo y targets de PERFORM.',
  paragraph.sourceFile = 'src/CIB123D.cbl',
  paragraph.evidenceFile = 'src/CIB123D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-pass3-coverage-fix'
SET
  paragraph.summary = coalesce(paragraph.summary, para.summary),
  paragraph.executionOrder = coalesce(paragraph.executionOrder, para.executionOrder),
  paragraph.executionPhase = coalesce(paragraph.executionPhase, para.executionPhase),
  paragraph.executionOrderSource = coalesce(paragraph.executionOrderSource, 'pass3-perform-and-label-coverage'),
  paragraph.lastSeenRunId = 'e2e-20260617-pass3-coverage-fix',
  paragraph.agentReviewedBy = coalesce(paragraph.agentReviewedBy, 'cobol-evidence-extractor'),
  paragraph.agentReviewedAt = coalesce(paragraph.agentReviewedAt, toString(datetime())),
  paragraph.agentReviewNotes = coalesce(paragraph.agentReviewNotes, 'Pass-3: cobertura de paragraph completada con normalizacion de formato fijo y targets de PERFORM.')
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-pass3-coverage-fix',
  hp.evidenceFile = 'src/CIB123D.cbl',
  hp.evidenceLines = para.lines;

UNWIND ['CIB065D','CIB120D','CIB122D','CIB123D'] AS pn
MATCH (p:Program {name:pn})
OPTIONAL MATCH (p)-[:HAS_PARAGRAPH]->(par:Paragraph)
RETURN pn AS program, count(par) AS paragraphCount
ORDER BY program;
