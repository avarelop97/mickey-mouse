CREATE CONSTRAINT program_name_unique IF NOT EXISTS
FOR (n:Program) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT copybook_name_unique IF NOT EXISTS
FOR (n:Copybook) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT paragraph_name_unique IF NOT EXISTS
FOR (n:Paragraph) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT table_name_unique IF NOT EXISTS
FOR (n:DBTable) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT param_type_name_unique IF NOT EXISTS
FOR (n:ParamType) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT routine_name_unique IF NOT EXISTS
FOR (n:ExternalRoutine) REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT file_name_unique IF NOT EXISTS
FOR (n:OutputFile) REQUIRE n.name IS UNIQUE;

MERGE (program:Program {name: 'CIB009D'})
SET program.language = 'COBOL',
    program.platform = 'IBM-4381',
    program.database = 'DB2',
    program.objective = 'Generar la poliza de diario de ventas de operaciones de coberturas cambiarias',
    program.ingestion = 'manual',
    program.seedVersion = 'v1-direct',
    program.seedDate = '2026-06-16',
    program.viewModel = 'direct-links',
    program.modelScope = 'program-centric',
    program.reviewStatus = 'reviewed_human',
    program.reviewRequired = false,
    program.reviewSource = 'manual-seed',
    program.reviewedBy = 'human-curation',
    program.reviewedAt = '2026-06-16';

MATCH (program:Program {name: 'CIB009D'})
OPTIONAL MATCH (program)-[r:HAS_FACET|HAS_PARAGRAPH|INCLUDES_COPYBOOK|READS_TABLE|UPDATES_TABLE|USES_PARAM_TYPE|CALLS_ROUTINE|WRITES_FILE]->()
DELETE r;

MATCH (facet:ProgramFacet)
DETACH DELETE facet;

MATCH (orphan)
WHERE size(labels(orphan)) = 0
DETACH DELETE orphan;

MATCH (program:Program {name: 'CIB009D'})
UNWIND [
  {name: '000-INICIO', kind: 'control', summary: 'Orquesta inicializacion, apertura de salida, construccion de encabezado y proceso principal.', executionOrder: 10, phase: 'main-control', orderSource: 'manual-call-tree'},
  {name: '010-INICIALIZA', kind: 'initialization', summary: 'Inicializa acumuladores, switches y tabla de trabajo.', executionOrder: 20, phase: 'initialization', orderSource: 'manual-call-tree'},
  {name: '999-CONST-ENCA', kind: 'reporting', summary: 'Construye el encabezado estandar del reporte (via include).', executionOrder: 25, phase: 'initialization', orderSource: 'manual-call-tree'},
  {name: 'PROCESA-REPORTE', kind: 'process', summary: 'Procesa dolar controlado y dolar libre e imprime resultado.', executionOrder: 30, phase: 'main-process', orderSource: 'manual-call-tree'},
  {name: '020-PROCESO', kind: 'process', summary: 'Controla ciclo de 12 cuentas, impresion de detalle y totales.', executionOrder: 40, phase: 'main-process', orderSource: 'manual-call-tree'},
  {name: '030-PROCESO-DESGLOZADO', kind: 'calculation', summary: 'Determina claves de cuenta y desglosa informacion contable.', executionOrder: 50, phase: 'calculation', orderSource: 'manual-call-tree'},
  {name: 'PROCESA-SALDO', kind: 'calculation', summary: 'Determina tipo de saldo a consultar segun indice de acumulacion.', executionOrder: 60, phase: 'calculation', orderSource: 'manual-call-tree'},
  {name: '050-VERIFICA-SALDO', kind: 'validation', summary: 'Consulta y valida saldo TA1 para llenar la tabla de impresion.', executionOrder: 70, phase: 'validation', orderSource: 'manual-call-tree'},
  {name: '040-ACUMULA-TOTALES', kind: 'calculation', summary: 'Acumula cuentas y montos en debe/haber.', executionOrder: 80, phase: 'calculation', orderSource: 'manual-call-tree'},
  {name: '060-IMPRIME-REGISTRO', kind: 'reporting', summary: 'Imprime registro de detalle o blancos segun saldo.', executionOrder: 90, phase: 'reporting', orderSource: 'manual-call-tree'},
  {name: '070-VACIA-TABLA', kind: 'reporting', summary: 'Mueve tabla de trabajo a formato de salida e imprime detalle.', executionOrder: 100, phase: 'reporting', orderSource: 'manual-call-tree'},
  {name: '510-SELECCIONA-PARAM', kind: 'data-access', summary: 'Ejecuta SELECT DATOSPAR FROM PARAM por ITIPOPAR/IPARAM.', executionOrder: 110, phase: 'data-access', orderSource: 'manual-call-tree'},
  {name: '700-ENCABEZADO', kind: 'reporting', summary: 'Escribe encabezado de pagina del reporte.', executionOrder: 120, phase: 'reporting', orderSource: 'manual-call-tree'},
  {name: '800-IMPRIME-TOTALES', kind: 'reporting', summary: 'Imprime totales y pie de pagina, incluyendo cuentas sin movimientos.', executionOrder: 130, phase: 'reporting', orderSource: 'manual-call-tree'},
  {name: '810-IMPRIME-CTAS-SIN-MVTOS', kind: 'reporting', summary: 'Imprime cuentas sin movimientos.', executionOrder: 140, phase: 'reporting', orderSource: 'manual-call-tree'},
  {name: '970-SQL-ERROR', kind: 'error-handling', summary: 'Formatea y reporta errores SQL (via include).', executionOrder: 900, phase: 'error-path', orderSource: 'manual-call-tree'},
  {name: '980-ABORTA', kind: 'error-handling', summary: 'Hace rollback y termina el programa con codigo 16.', executionOrder: 910, phase: 'error-path', orderSource: 'manual-call-tree'},
  {name: '990-CIF-CTL', kind: 'utility', summary: 'Rutina auxiliar de control de impresion para terminacion anormal.', executionOrder: 920, phase: 'error-path', orderSource: 'manual-call-tree'}
] AS paragraphData
MERGE (paragraph:Paragraph {name: paragraphData.name})
SET paragraph.name = paragraphData.name,
    paragraph.kind = paragraphData.kind,
    paragraph.summary = paragraphData.summary,
    paragraph.executionOrder = paragraphData.executionOrder,
    paragraph.executionPhase = paragraphData.phase,
    paragraph.executionOrderSource = paragraphData.orderSource,
    paragraph.program = program.name,
    paragraph.ingestion = 'manual',
    paragraph.layer = 'execution',
    paragraph.nodeType = 'process-step',
    paragraph.viewTag = 'execution',
    paragraph.reviewStatus = 'reviewed_human',
    paragraph.reviewRequired = false,
    paragraph.reviewSource = 'manual-seed',
    paragraph.reviewedBy = 'human-curation',
    paragraph.reviewedAt = '2026-06-16'
MERGE (program)-[:HAS_PARAGRAPH]->(paragraph);

MATCH (program:Program {name: 'CIB009D'})
UNWIND [
  {name: 'SICPATA1', type: 'data', description: 'Estructura de saldos TA1.'},
  {name: 'SICPATA0', type: 'data', description: 'Estructura contable TA0.'},
  {name: 'SICPATA5', type: 'data', description: 'Estructura de cuentas cargo/abono TA5.'},
  {name: 'SICFH027', type: 'data', description: 'Fechas y horas de compilacion/proceso.'},
  {name: 'SIC005', type: 'data', description: 'Buffer de mensajes SQL.'},
  {name: 'SICVS011', type: 'data', description: 'Variables de rutina VTB415O.'},
  {name: 'SICR1025', type: 'data', description: 'Titulos estandar de impresion.'},
  {name: 'SICAM029', type: 'data', description: 'Tabla de abreviaturas de meses.'},
  {name: 'DPARAM', type: 'data', description: 'Estructura host variable para tabla PARAM.'},
  {name: 'SQLCA', type: 'data', description: 'Area de estado SQL.'},
  {name: 'SICIP023', type: 'code', description: 'Inicio estandar de proceso.'},
  {name: 'SICFP024', type: 'code', description: 'Fin estandar de proceso.'},
  {name: 'SIC004', type: 'code', description: 'Manejo de error SQL (970-SQL-ERROR).'},
  {name: 'SICCE028', type: 'code', description: 'Construccion de encabezado estandar.'},
  {name: 'SICCM026', type: 'code', description: 'Mueve fecha y hora de compilacion/proceso.'}
] AS copybookData
MERGE (copybook:Copybook {name: copybookData.name})
SET copybook.type = copybookData.type,
    copybook.description = copybookData.description,
    copybook.ingestion = 'manual',
    copybook.layer = 'dependency',
    copybook.nodeType = 'copybook',
    copybook.viewTag = 'dependency',
    copybook.reviewStatus = 'reviewed_human',
    copybook.reviewRequired = false,
    copybook.reviewSource = 'manual-seed',
    copybook.reviewedBy = 'human-curation',
    copybook.reviewedAt = '2026-06-16'
MERGE (program)-[:INCLUDES_COPYBOOK]->(copybook);

MATCH (program:Program {name: 'CIB009D'})
MERGE (param:DBTable {name: 'PARAM'})
SET param.engine = 'DB2',
    param.description = 'Tabla generica de parametros y acumulados.',
    param.layer = 'data-access',
    param.nodeType = 'physical-table',
    param.viewTag = 'data-access',
    param.ingestion = 'manual',
    param.reviewStatus = 'reviewed_human',
    param.reviewRequired = false,
    param.reviewSource = 'manual-seed',
    param.reviewedBy = 'human-curation',
    param.reviewedAt = '2026-06-16'
MERGE (program)-[:READS_TABLE]->(param);

MATCH (program:Program {name: 'CIB009D'})
MATCH (param:DBTable {name: 'PARAM'})
UNWIND [
  {name: 'TA0', description: 'Cuenta contable base para desglose y referencia.'},
  {name: 'TA1', description: 'Saldo diario utilizado para validacion y acumulacion.'},
  {name: 'TA5', description: 'Configuracion de cuentas cargo/abono y llaves de cuenta.'}
] AS paramTypeData
MERGE (paramType:ParamType {name: paramTypeData.name})
SET paramType.description = paramTypeData.description,
    paramType.ingestion = 'manual',
    paramType.layer = 'data-access',
    paramType.nodeType = 'logical-param-type',
    paramType.viewTag = 'data-access',
    paramType.reviewStatus = 'reviewed_human',
    paramType.reviewRequired = false,
    paramType.reviewSource = 'manual-seed',
    paramType.reviewedBy = 'human-curation',
    paramType.reviewedAt = '2026-06-16'
MERGE (program)-[:USES_PARAM_TYPE]->(paramType)
MERGE (param)-[:STORES]->(paramType);

MATCH (program:Program {name: 'CIB009D'})
UNWIND [
  {name: 'DSNTIAR', vendor: 'IBM', purpose: 'Formateo de errores SQL a partir de SQLCA.'},
  {name: 'ADR003', vendor: 'Probursa', purpose: 'Centrado de titulos para reportes.'},
  {name: 'ADR009', vendor: 'Probursa', purpose: 'Ajuste o limpieza de textos para encabezado.'},
  {name: 'VDB403O', vendor: 'Probursa', purpose: 'Obtencion del nombre de compania para encabezado.'}
] AS routineData
MERGE (routine:ExternalRoutine {name: routineData.name})
SET routine.vendor = routineData.vendor,
    routine.purpose = routineData.purpose,
    routine.ingestion = 'manual',
    routine.layer = 'integration',
    routine.nodeType = 'external-service-call',
    routine.viewTag = 'integration',
    routine.reviewStatus = 'reviewed_human',
    routine.reviewRequired = false,
    routine.reviewSource = 'manual-seed',
    routine.reviewedBy = 'human-curation',
    routine.reviewedAt = '2026-06-16'
MERGE (program)-[:CALLS_ROUTINE]->(routine);

MATCH (program:Program {name: 'CIB009D'})
MERGE (report:OutputFile {name: 'CIB009R1'})
SET report.ddname = 'UT-S-CIB009R1',
    report.recordLength = 131,
    report.description = 'Salida fija de 131 posiciones para poliza diaria.',
    report.layer = 'output',
    report.nodeType = 'report-file',
    report.viewTag = 'output',
    report.ingestion = 'manual',
    report.reviewStatus = 'reviewed_human',
    report.reviewRequired = false,
    report.reviewSource = 'manual-seed',
    report.reviewedBy = 'human-curation',
    report.reviewedAt = '2026-06-16'
MERGE (program)-[:WRITES_FILE]->(report);

MATCH (program:Program {name: 'CIB009D'})
MATCH (p000:Paragraph {name: '000-INICIO'})
MATCH (p030:Paragraph {name: '030-PROCESO-DESGLOZADO'})
MATCH (p050:Paragraph {name: '050-VERIFICA-SALDO'})
MATCH (p510:Paragraph {name: '510-SELECCIONA-PARAM'})
MATCH (p700:Paragraph {name: '700-ENCABEZADO'})
MATCH (p800:Paragraph {name: '800-IMPRIME-TOTALES'})
MATCH (p970:Paragraph {name: '970-SQL-ERROR'})
MATCH (p999:Paragraph {name: '999-CONST-ENCA'})
MATCH (ta0:ParamType {name: 'TA0'})
MATCH (ta1:ParamType {name: 'TA1'})
MATCH (ta5:ParamType {name: 'TA5'})
MATCH (cbTa0:Copybook {name: 'SICPATA0'})
MATCH (cbTa1:Copybook {name: 'SICPATA1'})
MATCH (cbTa5:Copybook {name: 'SICPATA5'})
MATCH (cbDparam:Copybook {name: 'DPARAM'})
MATCH (cbFechas:Copybook {name: 'SICFH027'})
MATCH (cbMeses:Copybook {name: 'SICAM029'})
MATCH (cbTitles:Copybook {name: 'SICR1025'})
MATCH (cbSql:Copybook {name: 'SIC004'})
MATCH (cbHeader:Copybook {name: 'SICCE028'})
MATCH (dsntiar:ExternalRoutine {name: 'DSNTIAR'})
MATCH (adr003:ExternalRoutine {name: 'ADR003'})
MATCH (adr009:ExternalRoutine {name: 'ADR009'})
MATCH (vdb403o:ExternalRoutine {name: 'VDB403O'})
MERGE (p970)-[:IMPLEMENTED_BY]->(cbSql)
MERGE (p999)-[:IMPLEMENTED_BY]->(cbHeader)
MERGE (p030)-[uc1:USES_COPYBOOK]->(cbTa0)
SET uc1.why = 'Desglosa cuentas contables TA0 para distintos casos A020-ACUMULA-SW',
    uc1.evidenceFile = 'src/CIB009D.cbl',
    uc1.evidenceLines = [414, 432, 459, 468, 495, 513]
MERGE (p030)-[uc2:USES_COPYBOOK]->(cbTa5)
SET uc2.why = 'Lee cuentas cargo/abono y llaves desde TA5 para el desglose',
    uc2.evidenceFile = 'src/CIB009D.cbl',
    uc2.evidenceLines = [423, 441, 450, 477, 486, 504]
MERGE (p050)-[uc3:USES_COPYBOOK]->(cbTa1)
SET uc3.why = 'Valida e interpreta saldo diario TA1 antes de poblar tabla de impresion',
    uc3.evidenceFile = 'src/CIB009D.cbl',
    uc3.evidenceLines = [576, 580]
MERGE (p510)-[uc4:USES_COPYBOOK]->(cbDparam)
SET uc4.why = 'Usa host variables DCLPARAM para SELECT de PARAM',
    uc4.evidenceFile = 'src/CIB009D.cbl',
    uc4.evidenceLines = [309, 638]
MERGE (p700)-[uc5:USES_COPYBOOK]->(cbTitles)
SET uc5.why = 'Compone e imprime encabezados estandar del reporte',
    uc5.evidenceFile = 'src/CIB009D.cbl',
    uc5.evidenceLines = [134, 663]
MERGE (p800)-[uc6:USES_COPYBOOK]->(cbFechas)
SET uc6.why = 'Usa fecha de proceso para pie de pagina del reporte',
    uc6.evidenceFile = 'src/CIB009D.cbl',
    uc6.evidenceLines = [108, 688, 691]
MERGE (p800)-[uc7:USES_COPYBOOK]->(cbMeses)
SET uc7.why = 'Usa abreviatura de mes para pie de pagina',
    uc7.evidenceFile = 'src/CIB009D.cbl',
    uc7.evidenceLines = [295, 689]
MERGE (p970)-[uc8:USES_COPYBOOK]->(cbSql)
SET uc8.why = 'Rutina de error SQL basada en include SIC004',
    uc8.evidenceFile = 'src/CIB009D.cbl',
    uc8.evidenceLines = [386, 368, 647]
MERGE (p030)-[rd1:READS_DATA]->(ta0)
SET rd1.operation = 'Lectura de DATOSPAR para ITIPOPAR=TA0',
    rd1.evidenceFile = 'src/CIB009D.cbl',
    rd1.evidenceLines = [414, 432, 459, 468, 495, 513, 638]
MERGE (p030)-[rd2:READS_DATA]->(ta5)
SET rd2.operation = 'Lectura de DATOSPAR para ITIPOPAR=TA5',
    rd2.evidenceFile = 'src/CIB009D.cbl',
    rd2.evidenceLines = [423, 441, 450, 477, 486, 504, 638]
MERGE (p050)-[rd3:READS_DATA]->(ta1)
SET rd3.operation = 'Lectura de DATOSPAR para ITIPOPAR=TA1',
    rd3.evidenceFile = 'src/CIB009D.cbl',
    rd3.evidenceLines = [576, 638]
MERGE (p800)-[df1:DERIVES_FROM]->(ta1)
SET df1.fields = 'R1-08-TOT-DEBE, R1-08-TOT-HABER y pie de pagina derivados de saldos acumulados TA1',
    df1.evidenceFile = 'src/CIB009D.cbl',
    df1.evidenceLines = [688, 689, 691]
MERGE (p970)-[r1:DEPENDS_ON_EXTERNAL]->(dsntiar)
SET r1.why = 'Formatear SQLCA en mensaje legible de error',
    r1.viaCopybook = 'SIC004',
    r1.context = 'error-handling',
    r1.evidenceFile = 'cpy/SIC004.cpy',
    r1.evidenceLines = [10]
MERGE (p999)-[r2:DEPENDS_ON_EXTERNAL]->(adr003)
SET r2.why = 'Centrar titulo del reporte',
    r2.viaCopybook = 'SICCE028',
    r2.context = 'report-formatting',
    r2.evidenceFile = 'cpy/SI2CE028.cpy',
    r2.evidenceLines = [22]
MERGE (p999)-[r3:DEPENDS_ON_EXTERNAL]->(adr009)
SET r3.why = 'Ajustar texto de titulo y nombre de compania',
    r3.viaCopybook = 'SICCE028',
    r3.context = 'report-formatting',
    r3.evidenceFile = 'cpy/SI2CE028.cpy',
    r3.evidenceLines = [24, 28]
MERGE (p999)-[r4:DEPENDS_ON_EXTERNAL]->(vdb403o)
SET r4.why = 'Obtener nombre de compania para encabezado',
    r4.viaCopybook = 'SICCE028',
    r4.context = 'master-data',
    r4.evidenceFile = 'cpy/SI2CE028.cpy',
    r4.evidenceLines = [27];
