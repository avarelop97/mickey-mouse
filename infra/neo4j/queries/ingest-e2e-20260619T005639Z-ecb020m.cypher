// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T005639Z-ecb020m
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [163], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCUENTA'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [145], ingestion: 'auto', layer: 'dependency', name: 'DCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVED'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [151], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVED', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVPR'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [157], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVPR', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [136], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSEHIPRO'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [141], ingestion: 'auto', layer: 'dependency', name: 'DSEHIPRO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBCU001'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [89], ingestion: 'auto', layer: 'dependency', name: 'ECBCU001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBED002'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [93], ingestion: 'auto', layer: 'dependency', name: 'ECBED002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBEP007'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [105], ingestion: 'auto', layer: 'dependency', name: 'ECBEP007', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBFP004'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [101], ingestion: 'auto', layer: 'dependency', name: 'ECBFP004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBPR003'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'ECBPR003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [177], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC001'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [113], ingestion: 'auto', layer: 'dependency', name: 'SIC001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [664], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [169], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [694], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [117], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [231], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [109], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIE0201P'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [397], ingestion: 'auto', layer: 'dependency', name: 'SIE0201P', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIE0201R'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [131], ingestion: 'auto', layer: 'dependency', name: 'SIE0201R', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIETATF6'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [126], ingestion: 'auto', layer: 'dependency', name: 'SIETATF6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [121], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [173], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [615, 616, 617, 618, 619, 620, 621, 622, 623], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CUENTA'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [402, 403, 404, 405, 406, 407, 408, 409], ingestion: 'auto', layer: 'data-access', name: 'CUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDMOVED'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [474, 475, 476, 477, 478, 479, 480, 481, 482, 483], ingestion: 'auto', layer: 'data-access', name: 'EDMOVED', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDMOVPR'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [550, 551, 552, 553, 554, 555, 556], ingestion: 'auto', layer: 'data-access', name: 'EDMOVPR', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [213], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [194], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [235], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [266], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-INICIALIZA', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [234], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-INICIALIZA', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [270], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [277], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-PROCESA-CUENTA', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [269], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-PROCESA-CUENTA', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [281], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [295], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-COMPARA-CUENTA', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [280], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-COMPARA-CUENTA', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [299], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [309], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-WRITE-CUENTA', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [298], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-WRITE-CUENTA', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Persiste actualizaciones de negocio en ECB020M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [313], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [328], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-PROCESA-EDMOVED', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [312], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-PROCESA-EDMOVED', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [332], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [352], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-WRITE-EDMOVED', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [331], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-WRITE-EDMOVED', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Persiste actualizaciones de negocio en ECB020M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [356], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [360], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-PROCESA-EDMOVPR', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [355], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-PROCESA-EDMOVPR', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '350-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [364], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '350-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '350-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [379], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '350-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '350-WRITE-EDMOVPR', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [363], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '350-WRITE-EDMOVPR', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Persiste actualizaciones de negocio en ECB020M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [383], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [390], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-ORDENA-ARCHIVO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [382], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-ORDENA-ARCHIVO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [429], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [460], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-CURSOR-CUENTA', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [400], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-CURSOR-CUENTA', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CUENTA', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [428], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CUENTA', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB020M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [503], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [535], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-CURSOR-EDMOVED', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [463], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-LEE-EDMOVED', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [502], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-LEE-EDMOVED', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB020M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [576], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [608], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-CURSOR-EDMOVPR', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [539], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-CURSOR-EDMOVPR', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-EDMOVPR', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [575], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-EDMOVPR', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB020M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [614], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [635], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-UPDATE-CTLPROC', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [613], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [639], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [649], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-ACTUALIZA-CTLPROC', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [638], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-ACTUALIZA-CTLPROC', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Persiste actualizaciones de negocio en ECB020M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [653], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [657], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-COMMIT', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [652], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-COMMIT', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [670], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [675], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [669], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Gestiona contingencias en ECB020M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [681], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Inicializa el flujo operativo de ECB020M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [688], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Cierra la ejecucion de ECB020M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [680], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [23], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB020M', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB020M', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [34], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [27], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [179], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [26], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [24], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'})
SET n += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [51], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB020M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', summary: 'Orquesta una fase funcional de ECB020M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB020M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB020M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m', sourceFile: 'src/ECB020M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '050-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '050-INICIALIZA', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '100-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '100-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '100-PROCESA-CUENTA', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '150-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '150-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '150-COMPARA-CUENTA', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '160-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '160-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '160-WRITE-CUENTA', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '200-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '200-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '200-PROCESA-EDMOVED', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '250-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '250-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '250-WRITE-EDMOVED', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '300-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '300-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [360], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '300-PROCESA-EDMOVPR', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [355], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '350-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '350-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '350-WRITE-EDMOVPR', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '400-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '400-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '400-ORDENA-ARCHIVO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [460], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '500-CURSOR-CUENTA', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '500-LEE-CUENTA', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '505-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '505-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '505-CURSOR-EDMOVED', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [463], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '505-LEE-EDMOVED', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [576], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '510-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '510-CURSOR-EDMOVPR', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '510-LEE-EDMOVPR', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [575], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '620-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '620-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '620-UPDATE-CTLPROC', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [613], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '710-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [639], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '710-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '710-ACTUALIZA-CTLPROC', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [653], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [657], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '800-COMMIT', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [670], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [669], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [688], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'ECB020M', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'FILE', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIE0201P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [216, 227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB020M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '050-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIE0201P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '400-9900-FIN', programName: 'ECB020M'}), (b:Copybook {name: 'SIE0201P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [414, 423, 442, 453], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [472, 488, 497, 521, 532], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [548, 561, 570, 594, 605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [633], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [664], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB020M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [694], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DEDMOVPR'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBCU001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBED002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBFP004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBPR003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIE0201R'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'DEDMOVPR'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'ECBCU001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'ECBED002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'ECBFP004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'ECBPR003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [664], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [694], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SIE0201P'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SIE0201R'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [402, 403, 404, 405, 406, 407, 408, 409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:DBTable {name: 'EDMOVED'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [474, 475, 476, 477, 478, 479, 480, 481, 482, 483], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:DBTable {name: 'EDMOVPR'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [550, 551, 552, 553, 554, 555, 556], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Program {name: 'ECB020M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [615, 616, 617, 618, 619, 620, 621, 622, 623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIE0201P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [216, 227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB020M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '050-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIE0201P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '400-9900-FIN', programName: 'ECB020M'}), (b:Copybook {name: 'SIE0201P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [414, 423, 442, 453], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [472, 488, 497, 521, 532], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [548, 561, 570, 594, 605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [633], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB020M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [664], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB020M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [694], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DEDMOVPR'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBCU001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBED002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBFP004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'ECBPR003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIE0201R'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB020M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB020M.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005639Z-ecb020m'};

