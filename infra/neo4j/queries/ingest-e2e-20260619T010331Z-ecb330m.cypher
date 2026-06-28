// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T010331Z-ecb330m
// ============================================================================

MERGE (n:Copybook {name: 'DAGPOCON'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [257], ingestion: 'auto', layer: 'dependency', name: 'DAGPOCON', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCARTERA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [251], ingestion: 'auto', layer: 'dependency', name: 'DCARTERA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCONCEPT'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [267], ingestion: 'auto', layer: 'dependency', name: 'DCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [282], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCUENTA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [241], ingestion: 'auto', layer: 'dependency', name: 'DCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDVALCA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [277], ingestion: 'auto', layer: 'dependency', name: 'DEDVALCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DGPOCONC'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [262], ingestion: 'auto', layer: 'dependency', name: 'DGPOCONC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [246], ingestion: 'auto', layer: 'dependency', name: 'DOPERA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [287], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSEPRULT'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [272], ingestion: 'auto', layer: 'dependency', name: 'DSEPRULT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [978], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [971], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [112], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [132], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [138], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [937], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [122], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [230], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIEPAP05'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [119], ingestion: 'auto', layer: 'dependency', name: 'SIEPAP05', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIETATF6'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [144], ingestion: 'auto', layer: 'dependency', name: 'SIETATF6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [125], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CARTERA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396], ingestion: 'auto', layer: 'data-access', name: 'CARTERA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDVALCA'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447], ingestion: 'auto', layer: 'data-access', name: 'EDVALCA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [796, 797, 798, 799, 800, 801, 816, 817, 818, 819, 820, 821, 822, 837, 838, 839, 840, 841, 842, 843, 844], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'SEPRULT'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [861, 862, 863, 864, 865, 866, 867, 868, 869], ingestion: 'auto', layer: 'data-access', name: 'SEPRULT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [305], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [316], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [304], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [320], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [332], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-CHECA-PROCESO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [319], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-CHECA-PROCESO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [353], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [371], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [352], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [338], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [463], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-ABRE-CURSOR-1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [379], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-ABRE-CURSOR-1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-ABRE-CURSOR-2', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [421], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-ABRE-CURSOR-2', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-CHECA-FIN-MES', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [337], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-CHECA-FIN-MES', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [422], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [467], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [479], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-PRINCIPAL', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [466], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-PRINCIPAL', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [484], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [510], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROCESA-CURSOR', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [483], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROCESA-CURSOR', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [515], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [519], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-TERMINA', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [514], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-TERMINA', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [596], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [646], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-CONSTRUYE-DETA-1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [523], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-CONSTRUYE-DETA-1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-CONSTRUYE-DETA-2', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [595], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-CONSTRUYE-DETA-2', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [662], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [650], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210-TOTAL-EMI', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [649], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210-TOTAL-EMI', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220-100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [666], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220-100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [675], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220-CORTE-TPO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [665], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220-CORTE-TPO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230-100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [679], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230-100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [687], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230-CORTE-GPO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [678], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230-CORTE-GPO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '240-100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [691], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '240-100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '240-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [699], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '240-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '240-CORTE-CVE', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [690], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '240-CORTE-CVE', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [786], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [746], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CUR-1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [706], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CUR-1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CUR-2', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [745], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CUR-2', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [836], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-LEE-PARAM', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [835], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-LEE-PARAM', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-LEE-PARAM-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [853], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-LEE-PARAM-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [794], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-999-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [808], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-999-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-P05', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [793], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-P05', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [815], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-999-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [829], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-999-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-TF6', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [814], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-TF6', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [860], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-PARAM-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [881], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-PARAM-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-SEPRULT', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [859], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-SEPRULT', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB330M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [888], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [903], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ENCA-R1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [887], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ENCA-R1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [907], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [909], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-CIERRA-ARCHIVO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [906], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-CIERRA-ARCHIVO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [930], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-CIERRA-CURSOR-1', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [914], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-CIERRA-CURSOR-1', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-CIERRA-CURSOR-2', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [925], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-CIERRA-CURSOR-2', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [926], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0000-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [941], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0000-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [952], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [940], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Gestiona contingencias en ECB330M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [956], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Inicializa el flujo operativo de ECB330M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [964], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Cierra la ejecucion de ECB330M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [955], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [3], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [15], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [5], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [20], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [19], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [291], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REMARKS', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [6], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REMARKS', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'})
SET n += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [34], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB330M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', summary: 'Orquesta una fase funcional de ECB330M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB330M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB330M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m', sourceFile: 'src/ECB330M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '000-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '005-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '005-CHECA-PROCESO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '010-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [463], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-ABRE-CURSOR-1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-ABRE-CURSOR-2', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-CHECA-FIN-MES', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '015-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '050-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '050-PRINCIPAL', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '060-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '060-PROCESA-CURSOR', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [483], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '160-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '160-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '160-TERMINA', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [514], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '200-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [596], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '200-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '200-CONSTRUYE-DETA-1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '200-CONSTRUYE-DETA-2', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [595], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '210-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '210-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '210-TOTAL-EMI', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '220-100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '220-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '220-CORTE-TPO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '230-100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '230-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '230-CORTE-GPO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '240-100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [691], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '240-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '240-CORTE-CVE', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [786], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '500-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [746], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '500-LEE-CUR-1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [706], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '500-LEE-CUR-2', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [745], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '505-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [836], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '505-LEE-PARAM', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '505-LEE-PARAM-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [794], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '510-999-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '510-LEE-P05', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [793], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '520-999-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [829], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '520-LEE-TF6', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [860], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '550-LEE-PARAM-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '550-LEE-SEPRULT', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [888], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [903], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '600-ENCA-R1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [887], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [907], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '800-CIERRA-ARCHIVO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [906], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '810-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [930], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '810-CIERRA-CURSOR-1', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [914], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '810-CIERRA-CURSOR-2', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [925], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '810-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [926], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '980-0000-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [941], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [940], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [956], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [964], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [955], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [15], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'FILE', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'REMARKS', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [402, 407, 453, 458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [851], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [825], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '810-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [978], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [971], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DAGPOCON'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DGPOCONC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DSEPRULT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIEPAP05'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DAGPOCON'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DGPOCONC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'DSEPRULT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [978], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [971], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIEPAP05'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:DBTable {name: 'CARTERA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [796, 797, 798, 799, 800, 801, 816, 817, 818, 819, 820, 821, 822, 837, 838, 839, 840, 841, 842, 843, 844], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Program {name: 'ECB330M'}), (b:DBTable {name: 'SEPRULT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [861, 862, 863, 864, 865, 866, 867, 868, 869], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [402, 407, 453, 458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [851], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [825], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '810-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [978], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB330M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [971], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DAGPOCON'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DGPOCONC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'DSEPRULT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIEPAP05'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB330M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB330M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010331Z-ecb330m'};

