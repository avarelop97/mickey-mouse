// =============================================================================
// TEST GRAPH SEED — Ontología completa: un nodo representativo por tipo
// =============================================================================
// Propósito : grafo de documentación mínimo que cubre los 24 tipos de nodo
//             del contrato ontológico y todos los tipos de relación válidos.
// Uso       : cargado automáticamente por el servicio `seed` del compose.
// Contrato  : docs/graph-ontology.md
// =============================================================================

// ─── CONSTRAINTS ─────────────────────────────────────────────────────────────

CREATE CONSTRAINT IF NOT EXISTS FOR (n:Program)            REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Functionality)      REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Copybook)           REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:DBTable)            REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ParamType)          REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ExternalRoutine)    REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:OutputFile)         REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Procedure)          REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:RuntimeDataset)     REQUIRE n.dsn IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:SysoutChannel)      REQUIRE n.code IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:BatchJob)           REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:BmsMapset)          REQUIRE n.name IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:UiFunctionKey)      REQUIRE n.name IS UNIQUE;

CREATE CONSTRAINT IF NOT EXISTS FOR (n:SubFunctionality)
  REQUIRE (n.functionalityName, n.name) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ProcessFlow)
  REQUIRE (n.programName, n.name) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ProcessState)
  REQUIRE (n.programName, n.flowName, n.name) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:Paragraph)
  REQUIRE (n.programName, n.name) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ProcStep)
  REQUIRE (n.procedureName, n.stepName) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ProcVariable)
  REQUIRE (n.procedureName, n.name, n.direction) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ProcDD)
  REQUIRE (n.procedureName, n.ddName) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:SchedulerCondition)
  REQUIRE (n.scheduler, n.name, n.dateScope) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:ControlCardMember)
  REQUIRE (n.library, n.member) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:BmsMap)
  REQUIRE (n.mapsetName, n.name) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:BmsField)
  REQUIRE (n.mapsetName, n.mapName, n.name) IS UNIQUE;
CREATE CONSTRAINT IF NOT EXISTS FOR (n:UiLiteral)
  REQUIRE (n.mapsetName, n.mapName, n.text, n.line) IS UNIQUE;

// =============================================================================
// NODOS
// =============================================================================

// ── Program  (layer: program) ─────────────────────────────────────────────────
MERGE (prog:Program {name: 'TEST-PROGRAM'})
SET prog += {
  description:    'Programa COBOL de demostración que cubre la ontología completa del grafo.',
  language:       'COBOL',
  platform:       'IBM-4381',
  database:       'DB2',
  objective:      'Demostrar todos los tipos de nodo y relación del contrato ontológico.',
  seedVersion:    'test-v1',
  seedDate:       '2026-06-22',
  viewModel:      'direct-links',
  modelScope:     'program-centric',
  sourceFile:     'src/TEST-PROGRAM.cbl',
  ingestion:      'test-seed',
  layer:          'program',
  nodeType:       'program',
  viewTag:        'program',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── Functionality  (layer: functional) ────────────────────────────────────────
MERGE (func:Functionality {name: 'FUNC-COBERTURAS-CAMBIARIAS'})
SET func += {
  description:    'Funcionalidad principal: gestión y reporte de coberturas cambiarias.',
  businessDomain: 'tesorería',
  objective:      'Consolidar y reportar posiciones de coberturas cambiarias diarias.',
  sourceFile:     'src/TEST-PROGRAM.cbl',
  ingestion:      'test-seed',
  layer:          'functional',
  nodeType:       'business-function',
  viewTag:        'functional',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── SubFunctionality  (layer: functional) ────────────────────────────────────
MERGE (subfunc:SubFunctionality {
  functionalityName: 'FUNC-COBERTURAS-CAMBIARIAS',
  name:              'SUBFUNC-VALIDACION-CUENTAS'
})
SET subfunc += {
  description:       'Sub-funcionalidad: validación de cuentas contables de coberturas.',
  functionalityName: 'FUNC-COBERTURAS-CAMBIARIAS',
  objective:         'Verificar que las cuentas cargo/abono existan y estén activas en DB2.',
  sourceFile:        'src/TEST-PROGRAM.cbl',
  ingestion:         'test-seed',
  layer:             'functional',
  nodeType:          'sub-business-function',
  viewTag:           'functional',
  reviewStatus:      'reviewed_human',
  reviewRequired:    false,
  reviewSource:      'test-seed',
  reviewedBy:        'test-seed-author',
  reviewedAt:        '2026-06-22'
};

// ── ProcessFlow  (layer: process) ─────────────────────────────────────────────
MERGE (flow:ProcessFlow {programName: 'TEST-PROGRAM', name: 'FLUJO-PRINCIPAL'})
SET flow += {
  description:    'Flujo operativo principal de TEST-PROGRAM: inicial → captura → confirmación.',
  programName:    'TEST-PROGRAM',
  objective:      'Coordinar los estados de ejecución del proceso principal de coberturas.',
  sourceFile:     'src/TEST-PROGRAM.cbl',
  ingestion:      'test-seed',
  layer:          'process',
  nodeType:       'ProcessFlow',
  viewTag:        'process-flow',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── ProcessState × 2  (layer: process) ────────────────────────────────────────
MERGE (st0:ProcessState {
  programName: 'TEST-PROGRAM',
  flowName:    'FLUJO-PRINCIPAL',
  name:        'ESTADO-INICIAL'
})
SET st0 += {
  description:    'Estado inicial: control y enrutamiento según variable WC-ESTADO.',
  programName:    'TEST-PROGRAM',
  flowName:       'FLUJO-PRINCIPAL',
  objective:      'Punto de entrada del flujo; selecciona el estado destino.',
  sourceFile:     'src/TEST-PROGRAM.cbl',
  ingestion:      'test-seed',
  layer:          'process',
  nodeType:       'ProcessState',
  viewTag:        'process-state',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

MERGE (st1:ProcessState {
  programName: 'TEST-PROGRAM',
  flowName:    'FLUJO-PRINCIPAL',
  name:        'ESTADO-CAPTURA'
})
SET st1 += {
  description:    'Estado de captura: lectura de datos de entrada y validación inicial.',
  programName:    'TEST-PROGRAM',
  flowName:       'FLUJO-PRINCIPAL',
  objective:      'Capturar y pre-validar datos de la transacción de cobertura.',
  sourceFile:     'src/TEST-PROGRAM.cbl',
  ingestion:      'test-seed',
  layer:          'process',
  nodeType:       'ProcessState',
  viewTag:        'process-state',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── Paragraph × 2  (layer: execution) ────────────────────────────────────────
MERGE (par0:Paragraph {programName: 'TEST-PROGRAM', name: '000-CONTROL'})
SET par0 += {
  description:          'Párrafo de control principal; orquesta el flujo de ejecución completo.',
  name:                 '000-CONTROL',
  programName:          'TEST-PROGRAM',
  program:              'TEST-PROGRAM',
  key:                  'TEST-PROGRAM:000-CONTROL',
  kind:                 'control',
  summary:              'Orquesta inicialización, proceso principal y finalización.',
  executionOrder:       1000,
  executionPhase:       'MAIN-CONTROL',
  executionOrderSource: 'test-seed',
  sourceFile:           'src/TEST-PROGRAM.cbl',
  evidenceFile:         'src/TEST-PROGRAM.cbl',
  evidenceLines:        [100],
  ingestion:            'test-seed',
  layer:                'execution',
  nodeType:             'process-step',
  viewTag:              'execution',
  reviewStatus:         'reviewed_human',
  reviewRequired:       false,
  reviewSource:         'test-seed',
  reviewedBy:           'test-seed-author',
  reviewedAt:           '2026-06-22'
};

MERGE (par1:Paragraph {programName: 'TEST-PROGRAM', name: '100-PROCESA'})
SET par1 += {
  description:          'Párrafo de proceso principal; ejecuta la lógica de negocio central.',
  name:                 '100-PROCESA',
  programName:          'TEST-PROGRAM',
  program:              'TEST-PROGRAM',
  key:                  'TEST-PROGRAM:100-PROCESA',
  kind:                 'process',
  summary:              'Procesa cuentas, acumula saldos y genera el registro de salida.',
  executionOrder:       2000,
  executionPhase:       'PROCESSING',
  executionOrderSource: 'test-seed',
  sourceFile:           'src/TEST-PROGRAM.cbl',
  evidenceFile:         'src/TEST-PROGRAM.cbl',
  evidenceLines:        [250],
  ingestion:            'test-seed',
  layer:                'execution',
  nodeType:             'process-step',
  viewTag:              'execution',
  reviewStatus:         'reviewed_human',
  reviewRequired:       false,
  reviewSource:         'test-seed',
  reviewedBy:           'test-seed-author',
  reviewedAt:           '2026-06-22'
};

// ── Copybook  (layer: dependency) ─────────────────────────────────────────────
MERGE (cb:Copybook {name: 'DCUENTA'})
SET cb += {
  description:    'Copybook con la estructura de host variables para la tabla TBCUENTAS (DB2).',
  sourceFile:     'src/TEST-PROGRAM.cbl',
  evidenceFile:   'src/TEST-PROGRAM.cbl',
  evidenceLines:  [45],
  ingestion:      'test-seed',
  layer:          'dependency',
  nodeType:       'copybook',
  viewTag:        'dependency',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── DBTable  (layer: data-access) ─────────────────────────────────────────────
MERGE (tbl:DBTable {name: 'TBCUENTAS'})
SET tbl += {
  description:    'Tabla DB2 con las cuentas contables de coberturas cambiarias.',
  sourceFile:     'src/TEST-PROGRAM.cbl',
  evidenceFile:   'src/TEST-PROGRAM.cbl',
  evidenceLines:  [512, 513, 514],
  ingestion:      'test-seed',
  layer:          'data-access',
  nodeType:       'physical-table',
  viewTag:        'data-access',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── ParamType  (layer: data-access) ───────────────────────────────────────────
MERGE (pt:ParamType {name: 'TA0'})
SET pt += {
  description:    'Tipo lógico TA0: cuenta contable base para desglose y referencia.',
  ingestion:      'test-seed',
  layer:          'data-access',
  nodeType:       'logical-param-type',
  viewTag:        'data-access',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── ExternalRoutine  (layer: integration) ─────────────────────────────────────
MERGE (ext:ExternalRoutine {name: 'VTB415O'})
SET ext += {
  description:    'Rutina externa de validación de cuentas en el sistema de valores.',
  ingestion:      'test-seed',
  layer:          'integration',
  nodeType:       'external-service-call',
  viewTag:        'integration',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── OutputFile  (layer: io) ───────────────────────────────────────────────────
MERGE (outf:OutputFile {name: 'ARCH-REPORTE-TEST'})
SET outf += {
  description:    'Archivo de salida con el reporte de posiciones de coberturas.',
  ddname:         'SALIDA1',
  format:         'TEXT',
  recordLength:   133,
  sourceFile:     'src/TEST-PROGRAM.cbl',
  ingestion:      'test-seed',
  layer:          'io',
  nodeType:       'output-file',
  viewTag:        'dependency',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── Procedure  (layer: orchestration) ─────────────────────────────────────────
MERGE (proc:Procedure {name: 'TESTPROC'})
SET proc += {
  description:    'Procedimiento JCL que ejecuta TEST-PROGRAM en el ciclo batch diario.',
  objective:      'Correr el proceso de coberturas cambiarias diariamente.',
  process:        'COBERTURAS-DIARIO',
  system:         'SISTEMA DE VALORES',
  sourceFile:     'prc/TESTPROC.prc',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'Procedure',
  viewTag:        'jcl-proc',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── ProcStep  (layer: orchestration) ──────────────────────────────────────────
MERGE (step:ProcStep {procedureName: 'TESTPROC', stepName: 'PASO01'})
SET step += {
  description:    'Paso EXEC que lanza TEST-PROGRAM con los parámetros de la corrida.',
  procedureName:  'TESTPROC',
  stepName:       'PASO01',
  execTarget:     'TEST-PROGRAM',
  execType:       'PGM',
  parmRaw:        'FECHA=HOY',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'ProcStep',
  viewTag:        'jcl-proc-step',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── ProcVariable  (layer: orchestration) ──────────────────────────────────────
MERGE (pvar:ProcVariable {procedureName: 'TESTPROC', name: 'INPARM', direction: 'IN'})
SET pvar += {
  description:    'Símbolo de entrada que parametriza el dataset de parámetros de la corrida.',
  procedureName:  'TESTPROC',
  direction:      'IN',
  semanticRole:   'input-parameter',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'ProcVariable',
  viewTag:        'jcl-proc-variable',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── ProcDD × 2  (layer: orchestration) ────────────────────────────────────────
MERGE (dd1:ProcDD {procedureName: 'TESTPROC', ddName: 'DDIN'})
SET dd1 += {
  description:    'DD de entrada con el dataset de parámetros de la corrida batch.',
  procedureName:  'TESTPROC',
  ddType:         'DATASET',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'ProcDD',
  viewTag:        'jcl-proc-dd',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

MERGE (dd2:ProcDD {procedureName: 'TESTPROC', ddName: 'DDOUT'})
SET dd2 += {
  description:    'DD de salida SYSOUT para el canal de impresión del reporte.',
  procedureName:  'TESTPROC',
  ddType:         'SYSOUT',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'ProcDD',
  viewTag:        'jcl-proc-dd',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── RuntimeDataset  (layer: orchestration) ────────────────────────────────────
MERGE (ds:RuntimeDataset {dsn: 'SYS.TEST.INPUT.PARMS'})
SET ds += {
  description:    'Dataset físico con los parámetros de entrada del proceso diario.',
  disp:           'SHR',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'RuntimeDataset',
  viewTag:        'jcl-runtime-dataset',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── SchedulerCondition  (layer: orchestration) ────────────────────────────────
MERGE (sc:SchedulerCondition {
  scheduler:  'CASPREDF',
  name:       'COND-OK-PASO01',
  dateScope:  'STEP'
})
SET sc += {
  description:    'Condición de scheduler emitida por PASO01 al completarse correctamente.',
  scheduler:      'CASPREDF',
  dateScope:      'STEP',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'SchedulerCondition',
  viewTag:        'scheduler-condition',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── ControlCardMember  (layer: orchestration) ─────────────────────────────────
MERGE (cc:ControlCardMember {library: 'SYS.CARDS', member: 'PARAM01'})
SET cc += {
  description:    'Miembro de tarjetas de control con los parámetros de la corrida batch.',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'ControlCardMember',
  viewTag:        'jcl-control-card',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── SysoutChannel  (layer: orchestration) ─────────────────────────────────────
MERGE (soc:SysoutChannel {code: 'TV16'})
SET soc += {
  description:    'Canal de distribución de SYSOUT para impresión de reportes operativos.',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'SysoutChannel',
  viewTag:        'jcl-sysout-channel',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── BatchJob  (layer: orchestration) ──────────────────────────────────────────
MERGE (bj:BatchJob {name: 'TESTJOB1'})
SET bj += {
  description:    'Job batch que ejecuta el procedimiento TESTPROC diariamente.',
  ingestion:      'test-seed',
  layer:          'orchestration',
  nodeType:       'BatchJob',
  viewTag:        'jcl-job',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── BmsMapset  (layer: presentation) ──────────────────────────────────────────
MERGE (mps:BmsMapset {name: 'TESTMPS'})
SET mps += {
  description:    'Mapset BMS que agrupa las pantallas de la aplicación TEST-PROGRAM.',
  sourceFile:     'bms/TESTMPS.bms',
  ingestion:      'test-seed',
  layer:          'presentation',
  nodeType:       'BmsMapset',
  viewTag:        'bms-mapset',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── BmsMap  (layer: presentation) ─────────────────────────────────────────────
MERGE (bmap:BmsMap {mapsetName: 'TESTMPS', name: 'TESTMAP'})
SET bmap += {
  description:    'Mapa BMS de captura de datos de cobertura cambiaria.',
  mapsetName:     'TESTMPS',
  sourceFile:     'bms/TESTMPS.bms',
  ingestion:      'test-seed',
  layer:          'presentation',
  nodeType:       'BmsMap',
  viewTag:        'bms-map',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── BmsField  (layer: presentation) ──────────────────────────────────────────
MERGE (bfld:BmsField {mapsetName: 'TESTMPS', mapName: 'TESTMAP', name: 'CAMPO-CUENTA'})
SET bfld += {
  description:    'Campo de captura del número de cuenta contable en pantalla.',
  mapsetName:     'TESTMPS',
  mapName:        'TESTMAP',
  sourceFile:     'bms/TESTMPS.bms',
  ingestion:      'test-seed',
  layer:          'presentation',
  nodeType:       'BmsField',
  viewTag:        'bms-field',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── UiLiteral  (layer: presentation) ──────────────────────────────────────────
MERGE (uil:UiLiteral {mapsetName: 'TESTMPS', mapName: 'TESTMAP', text: 'CUENTA:', line: 5})
SET uil += {
  description:    'Texto literal visible en pantalla que etiqueta el campo de cuenta.',
  mapsetName:     'TESTMPS',
  mapName:        'TESTMAP',
  sourceFile:     'bms/TESTMPS.bms',
  ingestion:      'test-seed',
  layer:          'presentation',
  nodeType:       'UiLiteral',
  viewTag:        'bms-literal',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// ── UiFunctionKey  (layer: presentation) ──────────────────────────────────────
MERGE (uifk:UiFunctionKey {name: 'PF2-CONFIRMAR'})
SET uifk += {
  description:    'Tecla PF2: confirmar la transacción y avanzar al estado de captura.',
  sourceFile:     'bms/TESTMPS.bms',
  ingestion:      'test-seed',
  layer:          'presentation',
  nodeType:       'UiFunctionKey',
  viewTag:        'bms-function-key',
  reviewStatus:   'reviewed_human',
  reviewRequired: false,
  reviewSource:   'test-seed',
  reviewedBy:     'test-seed-author',
  reviewedAt:     '2026-06-22'
};

// =============================================================================
// RELACIONES
// =============================================================================

// ── Funcional COBOL ───────────────────────────────────────────────────────────

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (par0:Paragraph {programName: 'TEST-PROGRAM', name: '000-CONTROL'})
MERGE (prog)-[:HAS_PARAGRAPH]->(par0);

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (par1:Paragraph {programName: 'TEST-PROGRAM', name: '100-PROCESA'})
MERGE (prog)-[:HAS_PARAGRAPH]->(par1);

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (func:Functionality {name: 'FUNC-COBERTURAS-CAMBIARIAS'})
MERGE (prog)-[:IMPLEMENTS_FUNCTIONALITY {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [1]
}]->(func);

MATCH (func:Functionality {name: 'FUNC-COBERTURAS-CAMBIARIAS'}),
      (subfunc:SubFunctionality {
        functionalityName: 'FUNC-COBERTURAS-CAMBIARIAS',
        name:              'SUBFUNC-VALIDACION-CUENTAS'
      })
MERGE (func)-[:HAS_SUBFUNCTIONALITY {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [1]
}]->(subfunc);

MATCH (func:Functionality {name: 'FUNC-COBERTURAS-CAMBIARIAS'}),
      (par0:Paragraph {programName: 'TEST-PROGRAM', name: '000-CONTROL'})
MERGE (func)-[:REALIZED_BY {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [100]
}]->(par0);

MATCH (subfunc:SubFunctionality {
        functionalityName: 'FUNC-COBERTURAS-CAMBIARIAS',
        name:              'SUBFUNC-VALIDACION-CUENTAS'
      }),
      (par1:Paragraph {programName: 'TEST-PROGRAM', name: '100-PROCESA'})
MERGE (subfunc)-[:REALIZED_BY {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [250]
}]->(par1);

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (tbl:DBTable {name: 'TBCUENTAS'})
MERGE (prog)-[:READS_TABLE]->(tbl);

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (tbl:DBTable {name: 'TBCUENTAS'})
MERGE (prog)-[:UPDATES_TABLE]->(tbl);

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (ext:ExternalRoutine {name: 'VTB415O'})
MERGE (prog)-[:CALLS_ROUTINE]->(ext);

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (outf:OutputFile {name: 'ARCH-REPORTE-TEST'})
MERGE (prog)-[:WRITES_FILE]->(outf);

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (cb:Copybook {name: 'DCUENTA'})
MERGE (prog)-[:INCLUDES_COPYBOOK]->(cb);

MATCH (tbl:DBTable {name: 'TBCUENTAS'}),
      (pt:ParamType {name: 'TA0'})
MERGE (tbl)-[:STORES]->(pt);

MATCH (par0:Paragraph {programName: 'TEST-PROGRAM', name: '000-CONTROL'}),
      (cb:Copybook {name: 'DCUENTA'})
MERGE (par0)-[:IMPLEMENTED_BY]->(cb);

MATCH (par0:Paragraph {programName: 'TEST-PROGRAM', name: '000-CONTROL'}),
      (cb:Copybook {name: 'DCUENTA'})
MERGE (par0)-[:USES_COPYBOOK {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [105]
}]->(cb);

MATCH (par0:Paragraph {programName: 'TEST-PROGRAM', name: '000-CONTROL'}),
      (par1:Paragraph {programName: 'TEST-PROGRAM', name: '100-PROCESA'})
MERGE (par0)-[:PERFORMS_PARAGRAPH {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [120]
}]->(par1);

MATCH (par1:Paragraph {programName: 'TEST-PROGRAM', name: '100-PROCESA'}),
      (pt:ParamType {name: 'TA0'})
MERGE (par1)-[:READS_DATA {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [255]
}]->(pt);

MATCH (par1:Paragraph {programName: 'TEST-PROGRAM', name: '100-PROCESA'}),
      (pt:ParamType {name: 'TA0'})
MERGE (par1)-[:UPDATES_DATA {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [270]
}]->(pt);

MATCH (par1:Paragraph {programName: 'TEST-PROGRAM', name: '100-PROCESA'}),
      (pt:ParamType {name: 'TA0'})
MERGE (par1)-[:DERIVES_FROM {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [280]
}]->(pt);

MATCH (par0:Paragraph {programName: 'TEST-PROGRAM', name: '000-CONTROL'}),
      (ext:ExternalRoutine {name: 'VTB415O'})
MERGE (par0)-[:DEPENDS_ON_EXTERNAL {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [130]
}]->(ext);

// ── Abstracción de Proceso ────────────────────────────────────────────────────

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (flow:ProcessFlow {programName: 'TEST-PROGRAM', name: 'FLUJO-PRINCIPAL'})
MERGE (prog)-[:ORCHESTRATES_PROCESS {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [100]
}]->(flow);

MATCH (flow:ProcessFlow {programName: 'TEST-PROGRAM', name: 'FLUJO-PRINCIPAL'}),
      (st0:ProcessState {
        programName: 'TEST-PROGRAM', flowName: 'FLUJO-PRINCIPAL', name: 'ESTADO-INICIAL'
      })
MERGE (flow)-[:HAS_STATE {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [100]
}]->(st0);

MATCH (flow:ProcessFlow {programName: 'TEST-PROGRAM', name: 'FLUJO-PRINCIPAL'}),
      (st1:ProcessState {
        programName: 'TEST-PROGRAM', flowName: 'FLUJO-PRINCIPAL', name: 'ESTADO-CAPTURA'
      })
MERGE (flow)-[:HAS_STATE {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [200]
}]->(st1);

MATCH (st0:ProcessState {
        programName: 'TEST-PROGRAM', flowName: 'FLUJO-PRINCIPAL', name: 'ESTADO-INICIAL'
      }),
      (st1:ProcessState {
        programName: 'TEST-PROGRAM', flowName: 'FLUJO-PRINCIPAL', name: 'ESTADO-CAPTURA'
      })
MERGE (st0)-[:TRANSITIONS_TO {
  triggerType:         'STATE_VARIABLE',
  triggerValue:        'WC-ESTADO=1',
  transitionCondition: 'Branch WHEN 1',
  evidenceFile:        'src/TEST-PROGRAM.cbl',
  evidenceLines:       [110, 111]
}]->(st1);

MATCH (st0:ProcessState {
        programName: 'TEST-PROGRAM', flowName: 'FLUJO-PRINCIPAL', name: 'ESTADO-INICIAL'
      }),
      (par0:Paragraph {programName: 'TEST-PROGRAM', name: '000-CONTROL'})
MERGE (st0)-[:STATE_ENTRY_PARAGRAPH {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [100]
}]->(par0);

MATCH (st1:ProcessState {
        programName: 'TEST-PROGRAM', flowName: 'FLUJO-PRINCIPAL', name: 'ESTADO-CAPTURA'
      }),
      (par1:Paragraph {programName: 'TEST-PROGRAM', name: '100-PROCESA'})
MERGE (st1)-[:STATE_ENTRY_PARAGRAPH {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [200]
}]->(par1);

// ── Orquestación JCL/PRC ──────────────────────────────────────────────────────

MATCH (proc:Procedure {name: 'TESTPROC'}),
      (step:ProcStep {procedureName: 'TESTPROC', stepName: 'PASO01'})
MERGE (proc)-[:HAS_STEP {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [10]
}]->(step);

MATCH (proc:Procedure {name: 'TESTPROC'}),
      (pvar:ProcVariable {procedureName: 'TESTPROC', name: 'INPARM', direction: 'IN'})
MERGE (proc)-[:DEFINES_VARIABLE {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [5]
}]->(pvar);

MATCH (proc:Procedure {name: 'TESTPROC'}),
      (dd1:ProcDD {procedureName: 'TESTPROC', ddName: 'DDIN'})
MERGE (proc)-[:DEFINES_DD {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [15]
}]->(dd1);

MATCH (proc:Procedure {name: 'TESTPROC'}),
      (dd2:ProcDD {procedureName: 'TESTPROC', ddName: 'DDOUT'})
MERGE (proc)-[:DEFINES_DD {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [20]
}]->(dd2);

MATCH (proc:Procedure {name: 'TESTPROC'}),
      (bj:BatchJob {name: 'TESTJOB1'})
MERGE (proc)-[:IMPACTS_JOB {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [1, 2]
}]->(bj);

MATCH (step:ProcStep {procedureName: 'TESTPROC', stepName: 'PASO01'}),
      (dd1:ProcDD {procedureName: 'TESTPROC', ddName: 'DDIN'})
MERGE (step)-[:USES_DD {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [15]
}]->(dd1);

MATCH (step:ProcStep {procedureName: 'TESTPROC', stepName: 'PASO01'}),
      (dd2:ProcDD {procedureName: 'TESTPROC', ddName: 'DDOUT'})
MERGE (step)-[:USES_DD {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [20]
}]->(dd2);

MATCH (step:ProcStep {procedureName: 'TESTPROC', stepName: 'PASO01'}),
      (ext:ExternalRoutine {name: 'VTB415O'})
MERGE (step)-[:EXECUTES_PROGRAM {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [10]
}]->(ext);

MATCH (step:ProcStep {procedureName: 'TESTPROC', stepName: 'PASO01'}),
      (sc:SchedulerCondition {
        scheduler: 'CASPREDF', name: 'COND-OK-PASO01', dateScope: 'STEP'
      })
MERGE (step)-[:EMITS_CONDITION {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [30]
}]->(sc);

MATCH (step:ProcStep {procedureName: 'TESTPROC', stepName: 'PASO01'}),
      (cc:ControlCardMember {library: 'SYS.CARDS', member: 'PARAM01'})
MERGE (step)-[:USES_CONTROL_CARD {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [25]
}]->(cc);

MATCH (dd1:ProcDD {procedureName: 'TESTPROC', ddName: 'DDIN'}),
      (ds:RuntimeDataset {dsn: 'SYS.TEST.INPUT.PARMS'})
MERGE (dd1)-[:RESOLVES_TO_DATASET {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [15]
}]->(ds);

MATCH (dd1:ProcDD {procedureName: 'TESTPROC', ddName: 'DDIN'}),
      (pvar:ProcVariable {procedureName: 'TESTPROC', name: 'INPARM', direction: 'IN'})
MERGE (dd1)-[:ROUTES_TO_VARIABLE {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [15]
}]->(pvar);

MATCH (dd2:ProcDD {procedureName: 'TESTPROC', ddName: 'DDOUT'}),
      (soc:SysoutChannel {code: 'TV16'})
MERGE (dd2)-[:TARGETS_SYSOUT_CHANNEL {
  evidenceFile:  'prc/TESTPROC.prc',
  evidenceLines: [20]
}]->(soc);

// ── Presentación CICS/BMS ─────────────────────────────────────────────────────

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (mps:BmsMapset {name: 'TESTMPS'})
MERGE (prog)-[:USES_MAPSET {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [50]
}]->(mps);

MATCH (prog:Program {name: 'TEST-PROGRAM'}),
      (bmap:BmsMap {mapsetName: 'TESTMPS', name: 'TESTMAP'})
MERGE (prog)-[:PRESENTS_MAP {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [400]
}]->(bmap);

MATCH (bmap:BmsMap {mapsetName: 'TESTMPS', name: 'TESTMAP'}),
      (prog:Program {name: 'TEST-PROGRAM'})
MERGE (bmap)-[:SUBMITS_INPUT_TO {
  evidenceFile:  'src/TEST-PROGRAM.cbl',
  evidenceLines: [350]
}]->(prog);

MATCH (mps:BmsMapset {name: 'TESTMPS'}),
      (bmap:BmsMap {mapsetName: 'TESTMPS', name: 'TESTMAP'})
MERGE (mps)-[:HAS_MAP {
  evidenceFile:  'bms/TESTMPS.bms',
  evidenceLines: [10]
}]->(bmap);

MATCH (bmap:BmsMap {mapsetName: 'TESTMPS', name: 'TESTMAP'}),
      (bfld:BmsField {mapsetName: 'TESTMPS', mapName: 'TESTMAP', name: 'CAMPO-CUENTA'})
MERGE (bmap)-[:HAS_FIELD {
  evidenceFile:  'bms/TESTMPS.bms',
  evidenceLines: [20]
}]->(bfld);

MATCH (bmap:BmsMap {mapsetName: 'TESTMPS', name: 'TESTMAP'}),
      (uil:UiLiteral {mapsetName: 'TESTMPS', mapName: 'TESTMAP', text: 'CUENTA:', line: 5})
MERGE (bmap)-[:DISPLAYS_LITERAL {
  evidenceFile:  'bms/TESTMPS.bms',
  evidenceLines: [15]
}]->(uil);

MATCH (bmap:BmsMap {mapsetName: 'TESTMPS', name: 'TESTMAP'}),
      (uifk:UiFunctionKey {name: 'PF2-CONFIRMAR'})
MERGE (bmap)-[:SUPPORTS_KEY {
  evidenceFile:  'bms/TESTMPS.bms',
  evidenceLines: [8]
}]->(uifk);

MATCH (uil:UiLiteral {mapsetName: 'TESTMPS', mapName: 'TESTMAP', text: 'CUENTA:', line: 5}),
      (bfld:BmsField {mapsetName: 'TESTMPS', mapName: 'TESTMAP', name: 'CAMPO-CUENTA'})
MERGE (uil)-[:LABELS_FIELD {
  evidenceFile:  'bms/TESTMPS.bms',
  evidenceLines: [15]
}]->(bfld);

MATCH (uifk:UiFunctionKey {name: 'PF2-CONFIRMAR'}),
      (func:Functionality {name: 'FUNC-COBERTURAS-CAMBIARIAS'})
MERGE (uifk)-[:TRIGGERS_FUNCTIONALITY {
  evidenceFile:  'bms/TESTMPS.bms',
  evidenceLines: [8]
}]->(func);

MATCH (uifk:UiFunctionKey {name: 'PF2-CONFIRMAR'}),
      (subfunc:SubFunctionality {
        functionalityName: 'FUNC-COBERTURAS-CAMBIARIAS',
        name:              'SUBFUNC-VALIDACION-CUENTAS'
      })
MERGE (uifk)-[:TRIGGERS_SUBFUNCTIONALITY {
  evidenceFile:  'bms/TESTMPS.bms',
  evidenceLines: [8]
}]->(subfunc);

MATCH (uifk:UiFunctionKey {name: 'PF2-CONFIRMAR'}),
      (par1:Paragraph {programName: 'TEST-PROGRAM', name: '100-PROCESA'})
MERGE (uifk)-[:TRIGGERS_PARAGRAPH {
  evidenceFile:  'bms/TESTMPS.bms',
  evidenceLines: [8]
}]->(par1);

MATCH (uifk:UiFunctionKey {name: 'PF2-CONFIRMAR'}),
      (st1:ProcessState {
        programName: 'TEST-PROGRAM', flowName: 'FLUJO-PRINCIPAL', name: 'ESTADO-CAPTURA'
      })
MERGE (uifk)-[:TRIGGERS_STATE {
  evidenceFile:  'bms/TESTMPS.bms',
  evidenceLines: [8]
}]->(st1);

// =============================================================================
// VERIFICACIÓN FINAL
// =============================================================================

MATCH (n)
WITH count(n) AS totalNodes
MATCH ()-[r]->()
RETURN totalNodes, count(r) AS totalRelationships,
       'Test graph seed completado correctamente.' AS status;
