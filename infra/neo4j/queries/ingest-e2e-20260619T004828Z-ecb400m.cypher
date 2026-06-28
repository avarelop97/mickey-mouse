// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004828Z-ecb400m
// ============================================================================

MERGE (n:Copybook {name: 'DEDCONT'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [119], ingestion: 'auto', layer: 'dependency', name: 'DEDCONT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDCUENT'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [112], ingestion: 'auto', layer: 'dependency', name: 'DEDCUENT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [105], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [234], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [199], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [78], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [71], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [137], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [127], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [85], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'EDCONT'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [146, 147, 148, 149, 150, 151, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], ingestion: 'auto', layer: 'data-access', name: 'EDCONT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDCUENTA'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], ingestion: 'auto', layer: 'data-access', name: 'EDCUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [130], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-100-PROCESO-CONTROL', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-0100-INICIO', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [145], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-0100-INICIO', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Inicializa el flujo operativo de ECB400M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-9900-EXIT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [159], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-9900-EXIT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-DEL-EDCONT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [144], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-DEL-EDCONT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-0100-INICIO', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [168], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-0100-INICIO', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Inicializa el flujo operativo de ECB400M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-9900-EXIT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [192], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-9900-EXIT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-UPD-EDCONT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [167], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-UPD-EDCONT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [206], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Inicializa el flujo operativo de ECB400M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0200-SIGUE', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [210], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0200-SIGUE', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-EXIT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [214], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-EXIT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [205], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Gestiona contingencias en ECB400M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIA', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [221], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIA', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-EXIT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [226], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-EXIT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [220], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [16], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB400M', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB400M', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [32], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [23], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [20], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [22], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [19], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [17], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'})
SET n += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [35], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB400M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', summary: 'Orquesta una fase funcional de ECB400M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB400M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB400M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m', sourceFile: 'src/ECB400M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '620-0100-INICIO', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '620-9900-EXIT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '620-DEL-EDCONT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '630-0100-INICIO', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '630-9900-EXIT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '630-UPD-EDCONT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '980-0200-SIGUE', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '980-9900-EXIT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '990-0100-INICIA', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '990-9900-EXIT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [16], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'ECB400M', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'FILE', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [17], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB400M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '630-9900-EXIT', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '990-9900-EXIT', programName: 'ECB400M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:DBTable {name: 'EDCONT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [146, 147, 148, 149, 150, 151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:DBTable {name: 'EDCUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Program {name: 'ECB400M'}), (b:DBTable {name: 'EDCONT'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [146, 147, 148, 149, 150, 151, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB400M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '630-9900-EXIT', programName: 'ECB400M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: '990-9900-EXIT', programName: 'ECB400M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB400M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB400M.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004828Z-ecb400m'};

