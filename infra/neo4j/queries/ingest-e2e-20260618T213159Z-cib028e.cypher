// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T213159Z-cib028e
// ============================================================================

MERGE (n:Copybook {name: 'DEMICOB'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [277], ingestion: 'auto', layer: 'dependency', name: 'DEMICOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERCOB'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [270], ingestion: 'auto', layer: 'dependency', name: 'DOPERCOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [629], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [84], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [256], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE028'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [658], ingestion: 'auto', layer: 'dependency', name: 'SICCE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [665], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [77], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [310], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [286], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [103], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [91], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [263], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'EMICOB'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [517, 518, 519, 520, 521, 522, 523, 524, 525, 526], ingestion: 'auto', layer: 'data-access', name: 'EMICOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERCOB'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [289, 290, 291, 292, 293, 294, 295, 296, 297, 298], ingestion: 'auto', layer: 'data-access', name: 'OPERCOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [302], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Inicializa el flujo operativo de CIB028E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [312], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Inicializa el flujo operativo de CIB028E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [356], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-PROCESA-IEMICOB', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [361], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-PROCESA-IEMICOB', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PREGUNTA-ITIPOPE', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [404], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PREGUNTA-ITIPOPE', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-PROCESA-DETALLE', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [425], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-PROCESA-DETALLE', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-POSICION-COMPRAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [458], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-POSICION-COMPRAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-POSICION-VENTAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [470], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-POSICION-VENTAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-MUEVE-EMICOB', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [485], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-MUEVE-EMICOB', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-SELECCIONA-OPERCOB', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [496], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-SELECCIONA-OPERCOB', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [516], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-SELECCIONA-EMICOB', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ENCABEZADO', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [546], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ENCABEZADO', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [555], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-ENCABEZADO-COMPRAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [558], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-ENCABEZADO-COMPRAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-ENCABEZADO-VENTAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [563], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-ENCABEZADO-VENTAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOTALES-COMPRAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [568], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOTALES-COMPRAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '740-TOTALES-VENTAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [576], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '740-TOTALES-VENTAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-TOTALES-SALDOS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [582], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-TOTALES-SALDOS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-FINALIZA', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [587], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-FINALIZA', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Cierra la ejecucion de CIB028E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [636], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Gestiona contingencias en CIB028E, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [650], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB028E'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB028E', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e', sourceFile: 'src/CIB028E.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '000-INICIO', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '020-PROCESO', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '025-PROCESA-IEMICOB', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '030-PREGUNTA-ITIPOPE', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '040-PROCESA-DETALLE', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '050-POSICION-COMPRAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '055-POSICION-VENTAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '060-MUEVE-EMICOB', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [485], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '510-SELECCIONA-OPERCOB', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '700-ENCABEZADO', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [546], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [555], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '710-ENCABEZADO-COMPRAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '720-ENCABEZADO-VENTAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [563], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '730-TOTALES-COMPRAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '740-TOTALES-VENTAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [576], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '750-TOTALES-SALDOS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '800-FINALIZA', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB028E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '800-FINALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [624, 629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [658], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [658], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [517, 518, 519, 520, 521, 522, 523, 524, 525, 526], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Program {name: 'CIB028E'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [289, 290, 291, 292, 293, 294, 295, 296, 297, 298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB028E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '800-FINALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [624, 629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [658], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T213159Z-cib028e'};

