// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004734Z-cxb046d
// ============================================================================

MERGE (n:Copybook {name: 'DOPERCOB'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [130], ingestion: 'auto', layer: 'dependency', name: 'DOPERCOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [143], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DTIPCAMB'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [137], ingestion: 'auto', layer: 'dependency', name: 'DTIPCAMB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [475], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [93], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [446], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [100], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC231'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [116], ingestion: 'auto', layer: 'dependency', name: 'SIC231', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [165], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [153], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [107], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [123], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'OF'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195], ingestion: 'auto', layer: 'data-access', name: 'OF', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERCOB'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [370, 371, 372, 373, 374, 375, 376, 377, 378], ingestion: 'auto', layer: 'data-access', name: 'OPERCOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [173, 174, 175, 176, 177, 178, 179, 180], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'TIPCAMB'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [389, 390, 391, 392, 393, 394, 395, 396], ingestion: 'auto', layer: 'data-access', name: 'TIPCAMB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [155], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Inicializa el flujo operativo de CXB046D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-TERMINA', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [167], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-TERMINA', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Cierra la ejecucion de CXB046D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [214], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Inicializa el flujo operativo de CXB046D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [275], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-CALCULA-TIPO-CAMBIO', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [289], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-CALCULA-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [318], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR-PARAM', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CXB046D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-CURSOR-OPERCOB', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [343], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-CURSOR-OPERCOB', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CXB046D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-UPDATE-CURSOR-OPERCOB', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [369], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-UPDATE-CURSOR-OPERCOB', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [388], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CXB046D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900-FINALIZA', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [417], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900-FINALIZA', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Cierra la ejecucion de CXB046D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [452], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Gestiona contingencias en CXB046D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [462], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [17], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CXB046D', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CXB046D', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DECLRA-CURSRS', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [172], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DECLRA-CURSRS', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [27], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [24], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [21], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [23], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [20], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCSA-TIPO-CAMBIO', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [202], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCSA-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [18], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'})
SET n += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [29], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CXB046D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', summary: 'Orquesta una fase funcional de CXB046D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CXB046D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CXB046D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d', sourceFile: 'src/CXB046D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '000-INICIO', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '000-TERMINA', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '020-PROCESO', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '030-CALCULA-TIPO-CAMBIO', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '510-LEE-CURSOR-OPERCOB', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [343], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '520-UPDATE-CURSOR-OPERCOB', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '900-FINALIZA', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [17], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'CXB046D', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'DECLRA-CURSRS', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'FILE', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'PROCSA-TIPO-CAMBIO', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CXB046D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [232, 240, 259, 267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '030-CALCULA-TIPO-CAMBIO', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-OPERCOB', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '520-UPDATE-CURSOR-OPERCOB', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '900-FINALIZA', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [428, 439, 446], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CXB046D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [475], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [475], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [446], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [173, 174, 175, 176, 177, 178, 179, 180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [389, 390, 391, 392, 393, 394, 395, 396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:DBTable {name: 'OF'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Program {name: 'CXB046D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [370, 371, 372, 373, 374, 375, 376, 377, 378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CXB046D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [232, 240, 259, 267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '030-CALCULA-TIPO-CAMBIO', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-OPERCOB', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '520-UPDATE-CURSOR-OPERCOB', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '900-FINALIZA', programName: 'CXB046D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [428, 439, 446], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CXB046D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [475], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB046D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB046D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004734Z-cxb046d'};

