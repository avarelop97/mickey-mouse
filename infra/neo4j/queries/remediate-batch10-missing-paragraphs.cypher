// ============================================================================
// REMEDIATION PASS-2: Missing Paragraphs for Batch10
// RunId: e2e-20260617-batch10-pass2
// Objetivo: Completar Paragraph/HAS_PARAGRAPH en programas con extraction gap.
// ============================================================================

MATCH (program:Program {name:'CIB116D'})
WITH program
UNWIND [
  {name:'CIB116D', lines:[6], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB116D: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'IBM-9121', lines:[21], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-MUEVE-FECHAS', lines:[414], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 999-MUEVE-FECHAS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'540-BUSCA-VENCIMIENTO', lines:[422], executionOrder:400, executionPhase:'PROCESSING', summary:'Bloque 540-BUSCA-VENCIMIENTO: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'550-DEFINE-CURSOR-VENCIM-CASA', lines:[423], executionOrder:500, executionPhase:'TERMINATION', summary:'Bloque 550-DEFINE-CURSOR-VENCIM-CASA: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'555-DEFINE-CURSOR-VENCIM-BCO', lines:[424], executionOrder:600, executionPhase:'TERMINATION', summary:'Bloque 555-DEFINE-CURSOR-VENCIM-BCO: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'010-PROCESO', lines:[425], executionOrder:700, executionPhase:'PROCESSING', summary:'Bloque 010-PROCESO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'700-FIN', lines:[429], executionOrder:800, executionPhase:'TERMINATION', summary:'Bloque 700-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'015-INICIO', lines:[435], executionOrder:900, executionPhase:'INITIALIZATION', summary:'Bloque 015-INICIO: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'505-TIIE-APLICA', lines:[438], executionOrder:1000, executionPhase:'PROCESSING', summary:'Bloque 505-TIIE-APLICA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'080-PROCESA-VENCIMIENTOS', lines:[439], executionOrder:1100, executionPhase:'PROCESSING', summary:'Bloque 080-PROCESA-VENCIMIENTOS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'730-TOT-CONCEPTOS-REPO', lines:[443], executionOrder:1200, executionPhase:'PROCESSING', summary:'Bloque 730-TOT-CONCEPTOS-REPO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'590-BUSCA-PLUS-MINUS', lines:[445], executionOrder:1300, executionPhase:'PROCESSING', summary:'Bloque 590-BUSCA-PLUS-MINUS: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'999-CONST-ENCA', lines:[470], executionOrder:1400, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-CONST-ENCA-BANCO', lines:[472], executionOrder:1500, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA-BANCO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'030-INICIA-WAREAS-REPORTE', lines:[491], executionOrder:1600, executionPhase:'INITIALIZATION', summary:'Bloque 030-INICIA-WAREAS-REPORTE: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'075-BUSCA-IREF', lines:[492], executionOrder:1700, executionPhase:'PROCESSING', summary:'Bloque 075-BUSCA-IREF: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'620-ACTUALIZA-OPECORI', lines:[502], executionOrder:1800, executionPhase:'PERSISTENCE', summary:'Bloque 620-ACTUALIZA-OPECORI: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'720-REP-CONCEPTOS', lines:[504], executionOrder:1900, executionPhase:'PROCESSING', summary:'Bloque 720-REP-CONCEPTOS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'085-TOTALES', lines:[516], executionOrder:2000, executionPhase:'PROCESSING', summary:'Bloque 085-TOTALES: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'090-VENCIMIENTO', lines:[517], executionOrder:2100, executionPhase:'PROCESSING', summary:'Bloque 090-VENCIMIENTO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'580-BUSCA-GARANTIAS', lines:[518], executionOrder:2200, executionPhase:'PROCESSING', summary:'Bloque 580-BUSCA-GARANTIAS: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'625-ACTUALIZA-OPECORI', lines:[526], executionOrder:2300, executionPhase:'PERSISTENCE', summary:'Bloque 625-ACTUALIZA-OPECORI: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'585-BUSCA-GARANTIAS-P', lines:[529], executionOrder:2400, executionPhase:'PROCESSING', summary:'Bloque 585-BUSCA-GARANTIAS-P: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'570-BUSCA-EOPERA', lines:[535], executionOrder:2500, executionPhase:'PROCESSING', summary:'Bloque 570-BUSCA-EOPERA: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'630-INSERTA-EN-OPECORI', lines:[542], executionOrder:2600, executionPhase:'PERSISTENCE', summary:'Bloque 630-INSERTA-EN-OPECORI: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'070-DIAS-VENCIMIENTO', lines:[583], executionOrder:2700, executionPhase:'PROCESSING', summary:'Bloque 070-DIAS-VENCIMIENTO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'626-ACTUALIZA-OPECORI', lines:[614], executionOrder:2800, executionPhase:'PERSISTENCE', summary:'Bloque 626-ACTUALIZA-OPECORI: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'980-ABORTA', lines:[633], executionOrder:2900, executionPhase:'ERROR_PATH', summary:'Bloque 980-ABORTA: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'},
  {name:'040-ACTUALIZA-N', lines:[658], executionOrder:3000, executionPhase:'PERSISTENCE', summary:'Bloque 040-ACTUALIZA-N: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'045-ACTUALIZA-P', lines:[660], executionOrder:3100, executionPhase:'PERSISTENCE', summary:'Bloque 045-ACTUALIZA-P: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'060-ACTUALIZA-T', lines:[662], executionOrder:3200, executionPhase:'PERSISTENCE', summary:'Bloque 060-ACTUALIZA-T: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'065-ACTUALIZA-G', lines:[664], executionOrder:3300, executionPhase:'PERSISTENCE', summary:'Bloque 065-ACTUALIZA-G: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'560-LEE-VENCIMIENTOS-CAS', lines:[667], executionOrder:3400, executionPhase:'PROCESSING', summary:'Bloque 560-LEE-VENCIMIENTOS-CAS: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'565-LEE-VENCIMIENTOS-BCO', lines:[669], executionOrder:3500, executionPhase:'PROCESSING', summary:'Bloque 565-LEE-VENCIMIENTOS-BCO: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'END-EVALUATE', lines:[698], executionOrder:3600, executionPhase:'PROCESSING', summary:'Bloque END-EVALUATE: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'970-SQL-ERROR', lines:[780], executionOrder:3700, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'},
  {name:'530-VALOR-PARAM-TO2', lines:[864], executionOrder:3800, executionPhase:'PROCESSING', summary:'Bloque 530-VALOR-PARAM-TO2: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'660-ACTUALIZA-PARAM', lines:[865], executionOrder:3900, executionPhase:'PERSISTENCE', summary:'Bloque 660-ACTUALIZA-PARAM: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'705-ENCABEZADO', lines:[1141], executionOrder:4000, executionPhase:'PROCESSING', summary:'Bloque 705-ENCABEZADO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'100-TERMINA-GARANTIAS', lines:[1309], executionOrder:4100, executionPhase:'TERMINATION', summary:'Bloque 100-TERMINA-GARANTIAS: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'520-VALOR-CONGTIA', lines:[1310], executionOrder:4200, executionPhase:'PROCESSING', summary:'Bloque 520-VALOR-CONGTIA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'640-ACTUALIZA-CONGTIA', lines:[1311], executionOrder:4300, executionPhase:'PERSISTENCE', summary:'Bloque 640-ACTUALIZA-CONGTIA: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'650-ACTUALIZA-CONTITU', lines:[1312], executionOrder:4400, executionPhase:'PERSISTENCE', summary:'Bloque 650-ACTUALIZA-CONTITU: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'055-INSERTA-PLUS-MINUS', lines:[1382], executionOrder:4500, executionPhase:'PERSISTENCE', summary:'Bloque 055-INSERTA-PLUS-MINUS: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'600-ACTUALIZA-OPECORI', lines:[1397], executionOrder:4600, executionPhase:'PERSISTENCE', summary:'Bloque 600-ACTUALIZA-OPECORI: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'999-0100-CONSTRUYE', lines:[1780], executionOrder:4700, executionPhase:'PROCESSING', summary:'Bloque 999-0100-CONSTRUYE: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'R1-01-CIA', lines:[1799], executionOrder:4800, executionPhase:'PROCESSING', summary:'Bloque R1-01-CIA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-9900-FIN', lines:[1800], executionOrder:4900, executionPhase:'TERMINATION', summary:'Bloque 999-9900-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'EXIT', lines:[1801], executionOrder:5000, executionPhase:'PROCESSING', summary:'Bloque EXIT: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'}
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
  paragraph.agentReviewNotes = 'Paragraph generado en pasada de remediacion por extraction gap; requiere revision humana.',
  paragraph.sourceFile = 'src/CIB116D.cbl',
  paragraph.evidenceFile = 'src/CIB116D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10-pass2'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'pass2-perform-and-label-heuristics',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10-pass2'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10-pass2',
  hp.evidenceFile = 'src/CIB116D.cbl',
  hp.evidenceLines = para.lines;

MATCH (program:Program {name:'CIB117D'})
WITH program
UNWIND [
  {name:'CIB117D', lines:[6], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB117D: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'IBM-9121', lines:[29], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'100-INICIO', lines:[505], executionOrder:300, executionPhase:'INITIALIZATION', summary:'Bloque 100-INICIO: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'105-INICIALIZA', lines:[524], executionOrder:400, executionPhase:'INITIALIZATION', summary:'Bloque 105-INICIALIZA: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'999-CONST-ENCA', lines:[531], executionOrder:500, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-CONST-ENCA-BANCO', lines:[533], executionOrder:600, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA-BANCO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'970-SQL-ERROR', lines:[546], executionOrder:700, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'},
  {name:'108-IMPRIME-ENCABEZADOS', lines:[590], executionOrder:800, executionPhase:'PROCESSING', summary:'Bloque 108-IMPRIME-ENCABEZADOS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'110-PROCESA-REGISTROS', lines:[606], executionOrder:900, executionPhase:'PROCESSING', summary:'Bloque 110-PROCESA-REGISTROS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'200-TASAS-COMPRA-VENTA', lines:[648], executionOrder:1000, executionPhase:'PROCESSING', summary:'Bloque 200-TASAS-COMPRA-VENTA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'210-INDICES-COMPRA-VENTA', lines:[666], executionOrder:1100, executionPhase:'PROCESSING', summary:'Bloque 210-INDICES-COMPRA-VENTA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'400-IMPRIME-ENCA-TASAS', lines:[685], executionOrder:1200, executionPhase:'PROCESSING', summary:'Bloque 400-IMPRIME-ENCA-TASAS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'410-IMPRIME-ENCA-INDICES', lines:[701], executionOrder:1300, executionPhase:'PROCESSING', summary:'Bloque 410-IMPRIME-ENCA-INDICES: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'420-IMPRIME-TOTALES', lines:[717], executionOrder:1400, executionPhase:'PROCESSING', summary:'Bloque 420-IMPRIME-TOTALES: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'500-LEE-REGISTRO', lines:[738], executionOrder:1500, executionPhase:'PROCESSING', summary:'Bloque 500-LEE-REGISTRO: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'550-LEE-REGISTRO', lines:[781], executionOrder:1600, executionPhase:'PROCESSING', summary:'Bloque 550-LEE-REGISTRO: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'600-MOVER-CAMPOS-TASAS', lines:[824], executionOrder:1700, executionPhase:'PROCESSING', summary:'Bloque 600-MOVER-CAMPOS-TASAS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'610-MOVER-CAMPOS-INDICES', lines:[859], executionOrder:1800, executionPhase:'PROCESSING', summary:'Bloque 610-MOVER-CAMPOS-INDICES: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'710-RUTINA-DE-ERRORES', lines:[894], executionOrder:1900, executionPhase:'ERROR_PATH', summary:'Bloque 710-RUTINA-DE-ERRORES: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'},
  {name:'740-CERRAR-ARCHIVOS', lines:[909], executionOrder:2000, executionPhase:'PROCESSING', summary:'Bloque 740-CERRAR-ARCHIVOS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'980-ABORTA', lines:[922], executionOrder:2100, executionPhase:'ERROR_PATH', summary:'Bloque 980-ABORTA: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'},
  {name:'990-CIF-CTL', lines:[938], executionOrder:2200, executionPhase:'PROCESSING', summary:'Bloque 990-CIF-CTL: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-0100-CONSTRUYE', lines:[962], executionOrder:2300, executionPhase:'PROCESSING', summary:'Bloque 999-0100-CONSTRUYE: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'R1-01-CIA', lines:[981], executionOrder:2400, executionPhase:'PROCESSING', summary:'Bloque R1-01-CIA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-9900-FIN', lines:[982], executionOrder:2500, executionPhase:'TERMINATION', summary:'Bloque 999-9900-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'EXIT', lines:[983], executionOrder:2600, executionPhase:'PROCESSING', summary:'Bloque EXIT: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'}
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
  paragraph.agentReviewNotes = 'Paragraph generado en pasada de remediacion por extraction gap; requiere revision humana.',
  paragraph.sourceFile = 'src/CIB117D.cbl',
  paragraph.evidenceFile = 'src/CIB117D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10-pass2'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'pass2-perform-and-label-heuristics',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10-pass2'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10-pass2',
  hp.evidenceFile = 'src/CIB117D.cbl',
  hp.evidenceLines = para.lines;

MATCH (program:Program {name:'CIB118D'})
WITH program
UNWIND [
  {name:'CIB118D', lines:[6], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB118D: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'IBM-9121', lines:[29], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-MUEVE-FECHAS', lines:[247], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 999-MUEVE-FECHAS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'510-DEFINE-CURSOR-VENCIM-CASA', lines:[255], executionOrder:400, executionPhase:'TERMINATION', summary:'Bloque 510-DEFINE-CURSOR-VENCIM-CASA: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'515-DEFINE-CURSOR-VENCIM-BANCO', lines:[256], executionOrder:500, executionPhase:'TERMINATION', summary:'Bloque 515-DEFINE-CURSOR-VENCIM-BANCO: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'010-INICIO', lines:[257], executionOrder:600, executionPhase:'INITIALIZATION', summary:'Bloque 010-INICIO: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'700-FIN', lines:[261], executionOrder:700, executionPhase:'TERMINATION', summary:'Bloque 700-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'015-INICIO', lines:[267], executionOrder:800, executionPhase:'INITIALIZATION', summary:'Bloque 015-INICIO: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'030-PROCESA-INFORMACION', lines:[273], executionOrder:900, executionPhase:'PROCESSING', summary:'Bloque 030-PROCESA-INFORMACION: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'060-PROCESA-CORTE', lines:[275], executionOrder:1000, executionPhase:'PROCESSING', summary:'Bloque 060-PROCESA-CORTE: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'020-INICIALIZA-WAREAS', lines:[296], executionOrder:1100, executionPhase:'INITIALIZATION', summary:'Bloque 020-INICIALIZA-WAREAS: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'999-CONST-ENCA', lines:[298], executionOrder:1200, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-CONST-ENCA-BANCO', lines:[300], executionOrder:1300, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA-BANCO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'705-ENCABEZADO', lines:[303], executionOrder:1400, executionPhase:'PROCESSING', summary:'Bloque 705-ENCABEZADO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'W010-TOTAL-NETO', lines:[308], executionOrder:1500, executionPhase:'PROCESSING', summary:'Bloque W010-TOTAL-NETO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'W010-BAN-VENTAS', lines:[321], executionOrder:1600, executionPhase:'PROCESSING', summary:'Bloque W010-BAN-VENTAS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'040-DECIDE-IOPERA', lines:[331], executionOrder:1700, executionPhase:'PROCESSING', summary:'Bloque 040-DECIDE-IOPERA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'520-LEE-VENCIMIENTOS-CASA', lines:[333], executionOrder:1800, executionPhase:'PROCESSING', summary:'Bloque 520-LEE-VENCIMIENTOS-CASA: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'530-LEE-VENCIMIENTOS-BANCO', lines:[335], executionOrder:1900, executionPhase:'PROCESSING', summary:'Bloque 530-LEE-VENCIMIENTOS-BANCO: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'050-GENERA-REGISTRO-IMPRESION', lines:[406], executionOrder:2000, executionPhase:'PROCESSING', summary:'Bloque 050-GENERA-REGISTRO-IMPRESION: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'720-REP-CONCEPTOS', lines:[407], executionOrder:2100, executionPhase:'PROCESSING', summary:'Bloque 720-REP-CONCEPTOS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'970-SQL-ERROR', lines:[445], executionOrder:2200, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'},
  {name:'999-0100-CONTRUYE', lines:[628], executionOrder:2300, executionPhase:'PROCESSING', summary:'Bloque 999-0100-CONTRUYE: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'R1-01-CIA', lines:[647], executionOrder:2400, executionPhase:'PROCESSING', summary:'Bloque R1-01-CIA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-9900-FIN', lines:[648], executionOrder:2500, executionPhase:'TERMINATION', summary:'Bloque 999-9900-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'EXIT', lines:[649], executionOrder:2600, executionPhase:'PROCESSING', summary:'Bloque EXIT: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'}
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
  paragraph.agentReviewNotes = 'Paragraph generado en pasada de remediacion por extraction gap; requiere revision humana.',
  paragraph.sourceFile = 'src/CIB118D.cbl',
  paragraph.evidenceFile = 'src/CIB118D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10-pass2'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'pass2-perform-and-label-heuristics',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10-pass2'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10-pass2',
  hp.evidenceFile = 'src/CIB118D.cbl',
  hp.evidenceLines = para.lines;

MATCH (program:Program {name:'CIB119D'})
WITH program
UNWIND [
  {name:'CIB119D', lines:[6], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB119D: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'IBM-9121', lines:[29], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-MUEVE-FECHAS', lines:[259], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 999-MUEVE-FECHAS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-CONST-ENCA', lines:[269], executionOrder:400, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-CONST-ENCA-BANCO', lines:[271], executionOrder:500, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA-BANCO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'550-CURSOR-REGS-VIGS-FOPERCA', lines:[273], executionOrder:600, executionPhase:'PROCESSING', summary:'Bloque 550-CURSOR-REGS-VIGS-FOPERCA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'555-CURSOR-REGS-VIGS-FOPERBA', lines:[274], executionOrder:700, executionPhase:'PROCESSING', summary:'Bloque 555-CURSOR-REGS-VIGS-FOPERBA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'010-INICIO', lines:[275], executionOrder:800, executionPhase:'INITIALIZATION', summary:'Bloque 010-INICIO: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'013-INICIALIZA', lines:[277], executionOrder:900, executionPhase:'INITIALIZATION', summary:'Bloque 013-INICIALIZA: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'700-FIN', lines:[280], executionOrder:1000, executionPhase:'TERMINATION', summary:'Bloque 700-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'705-ENCABEZADO', lines:[292], executionOrder:1100, executionPhase:'PROCESSING', summary:'Bloque 705-ENCABEZADO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'560-LEE-REGS-VIGS-FOPERCA', lines:[296], executionOrder:1200, executionPhase:'PROCESSING', summary:'Bloque 560-LEE-REGS-VIGS-FOPERCA: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'570-LEE-REGS-VIGS-FOPERBA', lines:[300], executionOrder:1300, executionPhase:'PROCESSING', summary:'Bloque 570-LEE-REGS-VIGS-FOPERBA: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'740-TOT-CONCEPT-VENT-REPO', lines:[303], executionOrder:1400, executionPhase:'PROCESSING', summary:'Bloque 740-TOT-CONCEPT-VENT-REPO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'730-TOT-CONCEPT-COMP-REPO', lines:[328], executionOrder:1500, executionPhase:'PROCESSING', summary:'Bloque 730-TOT-CONCEPT-COMP-REPO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'720-REP-CONCEPTOS', lines:[334], executionOrder:1600, executionPhase:'PROCESSING', summary:'Bloque 720-REP-CONCEPTOS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'015-INICIA-WAREAS-REPORTE', lines:[345], executionOrder:1700, executionPhase:'INITIALIZATION', summary:'Bloque 015-INICIA-WAREAS-REPORTE: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'970-SQL-ERROR', lines:[403], executionOrder:1800, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'},
  {name:'020-DECIDE-IOPERA', lines:[533], executionOrder:1900, executionPhase:'PROCESSING', summary:'Bloque 020-DECIDE-IOPERA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'510-TASA-PAR-APLICA', lines:[612], executionOrder:2000, executionPhase:'PROCESSING', summary:'Bloque 510-TASA-PAR-APLICA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'030-CALCULA-PLUSVALIA', lines:[631], executionOrder:2100, executionPhase:'PROCESSING', summary:'Bloque 030-CALCULA-PLUSVALIA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-0100-CONSTRUYE', lines:[715], executionOrder:2200, executionPhase:'PROCESSING', summary:'Bloque 999-0100-CONSTRUYE: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'R1-01-CIA', lines:[734], executionOrder:2300, executionPhase:'PROCESSING', summary:'Bloque R1-01-CIA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-9900-FIN', lines:[735], executionOrder:2400, executionPhase:'TERMINATION', summary:'Bloque 999-9900-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'EXIT', lines:[736], executionOrder:2500, executionPhase:'PROCESSING', summary:'Bloque EXIT: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'}
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
  paragraph.agentReviewNotes = 'Paragraph generado en pasada de remediacion por extraction gap; requiere revision humana.',
  paragraph.sourceFile = 'src/CIB119D.cbl',
  paragraph.evidenceFile = 'src/CIB119D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10-pass2'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'pass2-perform-and-label-heuristics',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10-pass2'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10-pass2',
  hp.evidenceFile = 'src/CIB119D.cbl',
  hp.evidenceLines = para.lines;

MATCH (program:Program {name:'CIB121D'})
WITH program
UNWIND [
  {name:'CIB121D', lines:[9], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB121D: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'IBM-9121', lines:[24], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-MUEVE-FECHAS', lines:[193], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 999-MUEVE-FECHAS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'010-PROCESO', lines:[201], executionOrder:400, executionPhase:'PROCESSING', summary:'Bloque 010-PROCESO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'700-FIN', lines:[202], executionOrder:500, executionPhase:'TERMINATION', summary:'Bloque 700-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'015-INICIO', lines:[208], executionOrder:600, executionPhase:'INITIALIZATION', summary:'Bloque 015-INICIO: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'705-ENCABEZADO', lines:[209], executionOrder:700, executionPhase:'PROCESSING', summary:'Bloque 705-ENCABEZADO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'551-BUSCA-PLUS-MINUS', lines:[210], executionOrder:800, executionPhase:'PROCESSING', summary:'Bloque 551-BUSCA-PLUS-MINUS: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'552-BUSCA-PLUS-MINUS', lines:[211], executionOrder:900, executionPhase:'PROCESSING', summary:'Bloque 552-BUSCA-PLUS-MINUS: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'553-BUSCA-PLUS-MINUS', lines:[212], executionOrder:1000, executionPhase:'PROCESSING', summary:'Bloque 553-BUSCA-PLUS-MINUS: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'720-REP-CONCEPTOS', lines:[213], executionOrder:1100, executionPhase:'PROCESSING', summary:'Bloque 720-REP-CONCEPTOS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-CONST-ENCA-BANCO', lines:[222], executionOrder:1200, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA-BANCO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-CONST-ENCA', lines:[224], executionOrder:1300, executionPhase:'PROCESSING', summary:'Bloque 999-CONST-ENCA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'050-BUSCA-IREF', lines:[240], executionOrder:1400, executionPhase:'PROCESSING', summary:'Bloque 050-BUSCA-IREF: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'500-BUSCA-EOPERA', lines:[244], executionOrder:1500, executionPhase:'PROCESSING', summary:'Bloque 500-BUSCA-EOPERA: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'630-INSERTA-EN-OPECORI', lines:[268], executionOrder:1600, executionPhase:'PERSISTENCE', summary:'Bloque 630-INSERTA-EN-OPECORI: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'970-SQL-ERROR', lines:[291], executionOrder:1700, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'},
  {name:'100-INSERTA-PLUS-MINUS', lines:[380], executionOrder:1800, executionPhase:'PERSISTENCE', summary:'Bloque 100-INSERTA-PLUS-MINUS: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'600-ACTUALIZA-OPECORI', lines:[397], executionOrder:1900, executionPhase:'PERSISTENCE', summary:'Bloque 600-ACTUALIZA-OPECORI: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'999-0100-CONSTRUYE', lines:[568], executionOrder:2000, executionPhase:'PROCESSING', summary:'Bloque 999-0100-CONSTRUYE: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'R1-01-CIA', lines:[587], executionOrder:2100, executionPhase:'PROCESSING', summary:'Bloque R1-01-CIA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-9900-FIN', lines:[588], executionOrder:2200, executionPhase:'TERMINATION', summary:'Bloque 999-9900-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'EXIT', lines:[589], executionOrder:2300, executionPhase:'PROCESSING', summary:'Bloque EXIT: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'}
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
  paragraph.agentReviewNotes = 'Paragraph generado en pasada de remediacion por extraction gap; requiere revision humana.',
  paragraph.sourceFile = 'src/CIB121D.cbl',
  paragraph.evidenceFile = 'src/CIB121D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10-pass2'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'pass2-perform-and-label-heuristics',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10-pass2'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10-pass2',
  hp.evidenceFile = 'src/CIB121D.cbl',
  hp.evidenceLines = para.lines;

MATCH (program:Program {name:'CIB124D'})
WITH program
UNWIND [
  {name:'CIB124D', lines:[3], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB124D: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'IBM-9121', lines:[18], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-MUEVE-FECHAS', lines:[352], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 999-MUEVE-FECHAS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'020-PROCESO', lines:[360], executionOrder:400, executionPhase:'PROCESSING', summary:'Bloque 020-PROCESO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'300-DEFINE-MES', lines:[374], executionOrder:500, executionPhase:'TERMINATION', summary:'Bloque 300-DEFINE-MES: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'010-INICIO', lines:[383], executionOrder:600, executionPhase:'INITIALIZATION', summary:'Bloque 010-INICIO: inicializa variables, contexto operativo y dependencias para la ejecucion del programa.'},
  {name:'500-DEFINE-CURSOR', lines:[384], executionOrder:700, executionPhase:'TERMINATION', summary:'Bloque 500-DEFINE-CURSOR: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'100-ARMA-CONTRATO', lines:[386], executionOrder:800, executionPhase:'PROCESSING', summary:'Bloque 100-ARMA-CONTRATO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'200-ESCRIBE-CONTRATO', lines:[447], executionOrder:900, executionPhase:'PROCESSING', summary:'Bloque 200-ESCRIBE-CONTRATO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'550-LEE-VENCIMIENTOS-CAS', lines:[448], executionOrder:1000, executionPhase:'PROCESSING', summary:'Bloque 550-LEE-VENCIMIENTOS-CAS: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'305-OBTEN-CUENTA-BANCO', lines:[576], executionOrder:1100, executionPhase:'PROCESSING', summary:'Bloque 305-OBTEN-CUENTA-BANCO: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'970-SQL-ERROR', lines:[589], executionOrder:1200, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'}
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
  paragraph.agentReviewNotes = 'Paragraph generado en pasada de remediacion por extraction gap; requiere revision humana.',
  paragraph.sourceFile = 'src/CIB124D.cbl',
  paragraph.evidenceFile = 'src/CIB124D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10-pass2'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'pass2-perform-and-label-heuristics',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10-pass2'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10-pass2',
  hp.evidenceFile = 'src/CIB124D.cbl',
  hp.evidenceLines = para.lines;

MATCH (program:Program {name:'CIB125D'})
WITH program
UNWIND [
  {name:'CIB125D', lines:[8], executionOrder:100, executionPhase:'PROCESSING', summary:'Bloque CIB125D: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'IBM-9121', lines:[24], executionOrder:200, executionPhase:'PROCESSING', summary:'Bloque IBM-9121: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'000-CONTROL', lines:[124], executionOrder:300, executionPhase:'PROCESSING', summary:'Bloque 000-CONTROL: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'999-MUEVE-FECHAS', lines:[125], executionOrder:400, executionPhase:'PROCESSING', summary:'Bloque 999-MUEVE-FECHAS: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'010-PROCESA-INFORMACION', lines:[147], executionOrder:500, executionPhase:'PROCESSING', summary:'Bloque 010-PROCESA-INFORMACION: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'020-PROC-OPECORI-OPERA', lines:[155], executionOrder:600, executionPhase:'PROCESSING', summary:'Bloque 020-PROC-OPECORI-OPERA: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'500-FECHA-DIA-OPERACION', lines:[211], executionOrder:700, executionPhase:'PROCESSING', summary:'Bloque 500-FECHA-DIA-OPERACION: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'970-SQL-ERROR', lines:[230], executionOrder:800, executionPhase:'ERROR_PATH', summary:'Bloque 970-SQL-ERROR: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'},
  {name:'510-DEFINE-CURSOR-FUTUROS', lines:[238], executionOrder:900, executionPhase:'TERMINATION', summary:'Bloque 510-DEFINE-CURSOR-FUTUROS: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'520-LEE-FUTUROS', lines:[287], executionOrder:1000, executionPhase:'PROCESSING', summary:'Bloque 520-LEE-FUTUROS: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'530-BUSCA-OPER-TASA', lines:[338], executionOrder:1100, executionPhase:'PROCESSING', summary:'Bloque 530-BUSCA-OPER-TASA: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'535-BUSCA-OPER-INPC', lines:[360], executionOrder:1200, executionPhase:'PROCESSING', summary:'Bloque 535-BUSCA-OPER-INPC: ejecuta lectura o consulta de datos con control de resultado SQL y flujo asociado.'},
  {name:'540-INSERTA-OPERA', lines:[382], executionOrder:1300, executionPhase:'PERSISTENCE', summary:'Bloque 540-INSERTA-OPERA: persiste datos de negocio y valida resultado para continuidad o manejo de error.'},
  {name:'550-TASA-PARAMETRO', lines:[443], executionOrder:1400, executionPhase:'PROCESSING', summary:'Bloque 550-TASA-PARAMETRO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'560-INPC-PARAMETRO', lines:[473], executionOrder:1500, executionPhase:'PROCESSING', summary:'Bloque 560-INPC-PARAMETRO: paso funcional del flujo procedural identificado por evidencia en codigo COBOL.'},
  {name:'700-FIN', lines:[509], executionOrder:1600, executionPhase:'TERMINATION', summary:'Bloque 700-FIN: cierra el flujo de ejecucion y finaliza el proceso del programa de forma controlada.'},
  {name:'980-ABORTA', lines:[525], executionOrder:1700, executionPhase:'ERROR_PATH', summary:'Bloque 980-ABORTA: atiende ruta de error, rollback o aborto transaccional segun condicion detectada.'}
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
  paragraph.agentReviewNotes = 'Paragraph generado en pasada de remediacion por extraction gap; requiere revision humana.',
  paragraph.sourceFile = 'src/CIB125D.cbl',
  paragraph.evidenceFile = 'src/CIB125D.cbl',
  paragraph.evidenceLines = para.lines,
  paragraph.runId = 'e2e-20260617-batch10-pass2'
SET
  paragraph.summary = para.summary,
  paragraph.executionOrder = para.executionOrder,
  paragraph.executionPhase = para.executionPhase,
  paragraph.executionOrderSource = 'pass2-perform-and-label-heuristics',
  paragraph.lastSeenRunId = 'e2e-20260617-batch10-pass2'
MERGE (program)-[hp:HAS_PARAGRAPH]->(paragraph)
ON CREATE SET
  hp.runId = 'e2e-20260617-batch10-pass2',
  hp.evidenceFile = 'src/CIB125D.cbl',
  hp.evidenceLines = para.lines;

UNWIND ['CIB116D','CIB117D','CIB118D','CIB119D','CIB121D','CIB124D','CIB125D'] AS pn
MATCH (p:Program {name:pn})
OPTIONAL MATCH (p)-[:HAS_PARAGRAPH]->(par:Paragraph)
RETURN pn AS program, count(par) AS paragraphCount
ORDER BY program;
