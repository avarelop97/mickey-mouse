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

MERGE (program:Program {name: 'CIB005D'})
SET program.language = 'COBOL',
    program.platform = 'IBM-4381',
    program.database = 'DB2',
    program.objective = 'Informe Contable Diario para Coberturas Cambiarias',
  program.description = 'Programa COBOL de informe contable diario para coberturas cambiarias.',
    program.ingestion = 'manual',
    program.seedVersion = 'v3-direct',
    program.seedDate = '2026-06-16',
    program.viewModel = 'direct-links',
    program.modelScope = 'program-centric',
    program.reviewStatus = 'reviewed_human',
    program.reviewRequired = false,
    program.reviewSource = 'manual-seed',
    program.reviewedBy = 'human-curation',
    program.reviewedAt = '2026-06-16';

MATCH (program:Program {name: 'CIB005D'})
OPTIONAL MATCH (program)-[r:HAS_FACET|HAS_PARAGRAPH|INCLUDES_COPYBOOK|READS_TABLE|UPDATES_TABLE|USES_PARAM_TYPE|CALLS_ROUTINE|WRITES_FILE]->()
DELETE r;

MATCH (facet:ProgramFacet)
DETACH DELETE facet;

MATCH (orphan)
WHERE size(labels(orphan)) = 0
DETACH DELETE orphan;

MATCH (program:Program {name: 'CIB005D'})
UNWIND [
  {name: '000-CONTROL', kind: 'control', summary: 'Orquesta la ejecucion principal del programa.', description: 'Parrafo de control principal del programa.', executionOrder: 10, phase: 'main-control', orderSource: 'manual-call-tree'},
  {name: '999-MUEVE-FECHAS', kind: 'utility', summary: 'Construye fecha y hora de trabajo con logica Y2K.', description: 'Parrafo utilitario para construir fechas y horas de trabajo.', executionOrder: 20, phase: 'initialization', orderSource: 'manual-call-tree'},
  {name: '999-0100-CONSTRUYE', kind: 'reporting', summary: 'Construye la cabecera del reporte.', description: 'Parrafo que construye la cabecera del reporte diario.', executionOrder: 30, phase: 'initialization', orderSource: 'manual-call-tree'},
  {name: 'PROCESA-REPORTE', kind: 'process', summary: 'Inicializa acumulados, abre cursores y dispara la generacion del reporte.', description: 'Parrafo de proceso que prepara la ejecucion del reporte.', executionOrder: 40, phase: 'main-process', orderSource: 'manual-call-tree'},
  {name: 'GENERA-REPORTE', kind: 'process', summary: 'Lee TA0 y TA1, calcula saldos, imprime y actualiza PARAM.', description: 'Parrafo central que genera el reporte y actualiza acumulados.', executionOrder: 50, phase: 'main-process', orderSource: 'manual-call-tree'},
  {name: '010-CALCULOS', kind: 'calculation', summary: 'Calcula resultados del dia, mes y periodo.', description: 'Parrafo de calculo de resultados diarios, mensuales y periodicos.', executionOrder: 60, phase: 'calculation', orderSource: 'manual-call-tree'},
  {name: 'CALCLA-SALDO-COMPRAS', kind: 'calculation', summary: 'Calcula titulos, primas y deslizamiento para compras.', description: 'Parrafo de calculo de saldos para operaciones de compra.', executionOrder: 70, phase: 'calculation', orderSource: 'manual-call-tree'},
  {name: 'CALCLA-SALDO-VENTAS', kind: 'calculation', summary: 'Calcula titulos, primas y deslizamiento para ventas.', description: 'Parrafo de calculo de saldos para operaciones de venta.', executionOrder: 80, phase: 'calculation', orderSource: 'manual-call-tree'},
  {name: '040-ACTUALIZA-PARAM-TA0', kind: 'persistence', summary: 'Actualiza la tabla PARAM con los acumulados TA0.', description: 'Parrafo de persistencia que escribe los acumulados TA0 en PARAM.', executionOrder: 90, phase: 'persistence', orderSource: 'manual-call-tree'},
  {name: '970-SQL-ERROR', kind: 'error-handling', summary: 'Formatea SQLCA y deriva el aborto del proceso.', description: 'Parrafo de manejo de error SQL que prepara el mensaje diagnostico.', executionOrder: 900, phase: 'error-path', orderSource: 'manual-call-tree'},
  {name: '980-ABORTA', kind: 'error-handling', summary: 'Hace rollback y termina el programa con codigo 16.', description: 'Parrafo de aborto que revierte la transaccion y termina el programa.', executionOrder: 910, phase: 'error-path', orderSource: 'manual-call-tree'}
] AS paragraphData
MERGE (paragraph:Paragraph {programName: program.name, name: paragraphData.name})
SET paragraph.name = paragraphData.name,
  paragraph.programName = program.name,
    paragraph.kind = paragraphData.kind,
    paragraph.summary = paragraphData.summary,
    paragraph.description = paragraphData.description,
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

MATCH (program:Program {name: 'CIB005D'})
UNWIND [
  {name: 'SICPATA0', type: 'data', description: 'Estructura de negocio para registros PARAM tipo TA0.'},
  {name: 'SICPATA1', type: 'data', description: 'Estructura de negocio para registros PARAM tipo TA1.'},
  {name: 'SIXAB001', type: 'data', description: 'Variables de trabajo para errores y aborto.'},
  {name: 'SIC005', type: 'data', description: 'Buffer de mensajes para DSNTIAR.'},
  {name: 'SICFH027', type: 'data', description: 'Fechas y horas con adaptacion al ano 2000.'},
  {name: 'SICAM029', type: 'data', description: 'Tabla estatica de abreviaturas de meses.'},
  {name: 'SICR1025', type: 'data', description: 'Estructuras de cabecera y pie del reporte.'},
  {name: 'SIC004', type: 'code', description: 'Parrafo 970-SQL-ERROR.'},
  {name: 'SIXAB002', type: 'code', description: 'Parrafo 980-ABORTA.'},
  {name: 'SICCM026', type: 'code', description: 'Parrafo 999-MUEVE-FECHAS.'},
  {name: 'SICCE028', type: 'code', description: 'Parrafo 999-0100-CONSTRUYE.'}
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

MATCH (program:Program {name: 'CIB005D'})
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
MERGE (program)-[:READS_TABLE]->(param)
MERGE (program)-[:UPDATES_TABLE]->(param);

MATCH (program:Program {name: 'CIB005D'})
MATCH (param:DBTable {name: 'PARAM'})
UNWIND [
  {name: 'TA0', description: 'Acumulados por cuenta para compras y ventas.'},
  {name: 'TA1', description: 'Saldos del dia, mes y periodo por concepto.'}
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

MATCH (program:Program {name: 'CIB005D'})
UNWIND [
  {name: 'DSNTIAR', vendor: 'IBM', purpose: 'Formateo de errores SQL a partir de SQLCA.'},
  {name: 'ADR003', vendor: 'Probursa', purpose: 'Centrado de textos para reportes.'},
  {name: 'ADR009', vendor: 'Probursa', purpose: 'Ajuste o limpieza de textos.'},
  {name: 'VDB403O', vendor: 'Probursa', purpose: 'Obtencion del nombre de la compania.'}
] AS routineData
MERGE (routine:ExternalRoutine {name: routineData.name})
SET routine.vendor = routineData.vendor,
    routine.purpose = routineData.purpose,
  routine.description = routineData.purpose,
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

MATCH (program:Program {name: 'CIB005D'})
MERGE (report:OutputFile {name: 'CIB005R1'})
SET report.ddname = 'UT-S-CIB005R1',
    report.recordLength = 132,
    report.description = 'Salida fija de 132 posiciones del reporte diario.',
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

MATCH (program:Program {name: 'CIB005D'})
MATCH (generaReporte:Paragraph {programName: 'CIB005D', name: 'GENERA-REPORTE'})
MATCH (calcCompras:Paragraph {programName: 'CIB005D', name: 'CALCLA-SALDO-COMPRAS'})
MATCH (calcVentas:Paragraph {programName: 'CIB005D', name: 'CALCLA-SALDO-VENTAS'})
MATCH (calculos:Paragraph {programName: 'CIB005D', name: '010-CALCULOS'})
MATCH (actualizaTA0:Paragraph {programName: 'CIB005D', name: '040-ACTUALIZA-PARAM-TA0'})
MATCH (sqlError:Paragraph {programName: 'CIB005D', name: '970-SQL-ERROR'})
MATCH (aborta:Paragraph {programName: 'CIB005D', name: '980-ABORTA'})
MATCH (mueveFechas:Paragraph {programName: 'CIB005D', name: '999-MUEVE-FECHAS'})
MATCH (construye:Paragraph {programName: 'CIB005D', name: '999-0100-CONSTRUYE'})
MATCH (ta0:ParamType {name: 'TA0'})
MATCH (ta1:ParamType {name: 'TA1'})
MATCH (cbSql:Copybook {name: 'SIC004'})
MATCH (cbAbort:Copybook {name: 'SIXAB002'})
MATCH (cbDates:Copybook {name: 'SICCM026'})
MATCH (cbHeader:Copybook {name: 'SICCE028'})
MATCH (cbPata0:Copybook {name: 'SICPATA0'})
MATCH (cbPata1:Copybook {name: 'SICPATA1'})
MATCH (cbAbortVars:Copybook {name: 'SIXAB001'})
MATCH (cbMsgBuf:Copybook {name: 'SIC005'})
MATCH (cbFechas:Copybook {name: 'SICFH027'})
MATCH (cbMeses:Copybook {name: 'SICAM029'})
MATCH (cbReport:Copybook {name: 'SICR1025'})
MATCH (dsntiar:ExternalRoutine {name: 'DSNTIAR'})
MATCH (adr003:ExternalRoutine {name: 'ADR003'})
MATCH (adr009:ExternalRoutine {name: 'ADR009'})
MATCH (vdb403o:ExternalRoutine {name: 'VDB403O'})
MERGE (sqlError)-[:IMPLEMENTED_BY]->(cbSql)
MERGE (aborta)-[:IMPLEMENTED_BY]->(cbAbort)
MERGE (mueveFechas)-[:IMPLEMENTED_BY]->(cbDates)
MERGE (construye)-[:IMPLEMENTED_BY]->(cbHeader)
MERGE (generaReporte)-[uc1:USES_COPYBOOK]->(cbPata0)
SET uc1.why = 'Define la estructura de los registros TA0 leidos desde PARAM',
    uc1.evidenceFile = 'src/CIB005D.cbl',
    uc1.evidenceLines = [108]
MERGE (generaReporte)-[uc2:USES_COPYBOOK]->(cbPata1)
SET uc2.why = 'Define la estructura de los registros TA1 leidos desde PARAM',
    uc2.evidenceFile = 'src/CIB005D.cbl',
    uc2.evidenceLines = [112]
MERGE (calcCompras)-[uc3:USES_COPYBOOK]->(cbPata0)
SET uc3.why = 'Opera sobre los campos TA0 cargados en memoria (W000-DATOS)',
    uc3.evidenceFile = 'src/CIB005D.cbl',
    uc3.evidenceLines = [108, 707]
MERGE (calcVentas)-[uc4:USES_COPYBOOK]->(cbPata0)
SET uc4.why = 'Opera sobre los campos TA0 cargados en memoria (W000-DATOS)',
    uc4.evidenceFile = 'src/CIB005D.cbl',
    uc4.evidenceLines = [108, 760]
MERGE (actualizaTA0)-[uc5:USES_COPYBOOK]->(cbPata0)
SET uc5.why = 'Escribe de vuelta en PARAM usando la estructura TA0',
    uc5.evidenceFile = 'src/CIB005D.cbl',
    uc5.evidenceLines = [108, 1020]
MERGE (calculos)-[uc6:USES_COPYBOOK]->(cbPata1)
SET uc6.why = 'Opera sobre los campos TA1 cargados en memoria (W000-DATOS1)',
    uc6.evidenceFile = 'src/CIB005D.cbl',
    uc6.evidenceLines = [112, 697]
MERGE (sqlError)-[uc7:USES_COPYBOOK]->(cbMsgBuf)
SET uc7.why = 'Usa el buffer ME-MENSAJE-ERROR para recibir la salida de DSNTIAR',
    uc7.evidenceFile = 'src/CIB005D.cbl',
    uc7.evidenceLines = [478]
MERGE (sqlError)-[uc8:USES_COPYBOOK]->(cbAbortVars)
SET uc8.why = 'Rellena AB-WMENS y AB-WPROCESO antes de escalar el error',
    uc8.evidenceFile = 'src/CIB005D.cbl',
    uc8.evidenceLines = [471, 618]
MERGE (aborta)-[uc9:USES_COPYBOOK]->(cbAbortVars)
SET uc9.why = 'Lee las variables AB- para mostrar el diagnostico del error',
    uc9.evidenceFile = 'src/CIB005D.cbl',
    uc9.evidenceLines = [471]
MERGE (mueveFechas)-[uc10:USES_COPYBOOK]->(cbFechas)
SET uc10.why = 'Rellena FH-F-HOY-2000-R, FH-HORA-HOY y derivados',
    uc10.evidenceFile = 'src/CIB005D.cbl',
    uc10.evidenceLines = [484]
MERGE (construye)-[uc11:USES_COPYBOOK]->(cbFechas)
SET uc11.why = 'Usa FH-ANO-HOY-R, FH-MES-HOY, FH-DIA-HOY y FH-HORAS-HOY para la cabecera',
    uc11.evidenceFile = 'src/CIB005D.cbl',
    uc11.evidenceLines = [484]
MERGE (construye)-[uc12:USES_COPYBOOK]->(cbMeses)
SET uc12.why = 'Usa T999-ABREV-MES para el nombre del mes en la cabecera del reporte',
    uc12.evidenceFile = 'src/CIB005D.cbl',
    uc12.evidenceLines = [490]
MERGE (construye)-[uc13:USES_COPYBOOK]->(cbReport)
SET uc13.why = 'Rellena R1-01-ENCA, R1-02-ENCA y R1-03-ENCA con fecha, hora y titulo',
    uc13.evidenceFile = 'src/CIB005D.cbl',
    uc13.evidenceLines = [496]
MERGE (generaReporte)-[uc14:USES_COPYBOOK]->(cbReport)
SET uc14.why = 'Escribe R1-99-FIN al final del reporte',
    uc14.evidenceFile = 'src/CIB005D.cbl',
    uc14.evidenceLines = [584]
MERGE (generaReporte)-[rd1:READS_DATA]->(ta0)
SET rd1.operation = 'FETCH via cursor C500-TA0',
    rd1.evidenceFile = 'src/CIB005D.cbl',
    rd1.evidenceLines = [572, 1039]
MERGE (generaReporte)-[rd2:READS_DATA]->(ta1)
SET rd2.operation = 'FETCH via cursor C500-TA1',
    rd2.evidenceFile = 'src/CIB005D.cbl',
    rd2.evidenceLines = [575, 1058]
MERGE (actualizaTA0)-[ud1:UPDATES_DATA]->(ta0)
SET ud1.operation = 'UPDATE PARAM SET DATOSPAR WHERE ITIPOPAR=TA0',
    ud1.evidenceFile = 'src/CIB005D.cbl',
    ud1.evidenceLines = [1024]
MERGE (calcCompras)-[df1:DERIVES_FROM]->(ta0)
SET df1.fields = 'W000-DATOS(1..5), W000-SDO-ACUM-OP',
    df1.evidenceFile = 'src/CIB005D.cbl',
    df1.evidenceLines = [707]
MERGE (calcVentas)-[df2:DERIVES_FROM]->(ta0)
SET df2.fields = 'W000-DATOS(6..10), W000-SDO-ACUM-OP',
    df2.evidenceFile = 'src/CIB005D.cbl',
    df2.evidenceLines = [760]
MERGE (calculos)-[df3:DERIVES_FROM]->(ta1)
SET df3.fields = 'W000-IMP-DIA(13), W000-IMP-MES(13), W000-IMP-PER(13)',
    df3.evidenceFile = 'src/CIB005D.cbl',
    df3.evidenceLines = [697, 699, 700]
MERGE (sqlError)-[r1:DEPENDS_ON_EXTERNAL]->(dsntiar)
SET r1.why = 'Formatear SQLCA en mensaje legible de error',
    r1.viaCopybook = 'SIC004',
    r1.context = 'error-handling',
    r1.evidenceFile = 'cpy/SIC004.cpy',
    r1.evidenceLines = [10]
MERGE (construye)-[r2:DEPENDS_ON_EXTERNAL]->(adr003)
SET r2.why = 'Centrar el titulo del reporte',
    r2.viaCopybook = 'SICCE028',
    r2.context = 'report-formatting',
    r2.evidenceFile = 'cpy/SI2CE028.cpy',
    r2.evidenceLines = [22]
MERGE (construye)-[r3:DEPENDS_ON_EXTERNAL]->(adr009)
SET r3.why = 'Ajustar texto del titulo y nombre de compania',
    r3.viaCopybook = 'SICCE028',
    r3.context = 'report-formatting',
    r3.evidenceFile = 'cpy/SI2CE028.cpy',
    r3.evidenceLines = [24, 28]
MERGE (construye)-[r4:DEPENDS_ON_EXTERNAL]->(vdb403o)
SET r4.why = 'Obtener el nombre de la compania para encabezado',
    r4.viaCopybook = 'SICCE028',
    r4.context = 'master-data',
    r4.evidenceFile = 'cpy/SI2CE028.cpy',
    r4.evidenceLines = [27];