// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T005857Z-ecb220m
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [147], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDVALCA'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [141], ingestion: 'auto', layer: 'dependency', name: 'DEDVALCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [153], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'EC2FP004'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [100], ingestion: 'auto', layer: 'dependency', name: 'EC2FP004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBEP007'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [107], ingestion: 'auto', layer: 'dependency', name: 'ECBEP007', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [507], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [113], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [135], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [479], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [126], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [185], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [164], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [129], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [431, 432, 433, 434, 435, 436, 437, 438, 439], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDVALCA'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401], ingestion: 'auto', layer: 'data-access', name: 'EDVALCA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '010-OBTIENE-FECHAS-PROC', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [190], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-OBTIENE-FECHAS-PROC', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-VERIFICA-EVENTO', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [217], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-VERIFICA-EVENTO', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-INICIALIZA', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [228], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-INICIALIZA', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Inicializa el flujo operativo de ECB220M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ACUMULA-CARTERAS', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [243], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ACUMULA-CARTERAS', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-DECLARA-CURSOR', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [281], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-DECLARA-CURSOR', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-GRABA-EDVALCA', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [293], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-GRABA-EDVALCA', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Persiste actualizaciones de negocio en ECB220M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-ABRE-CURSOR-EDVALCA', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [335], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-ABRE-CURSOR-EDVALCA', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-EDVALCA', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [352], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-EDVALCA', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB220M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERTA-EDVALCA', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [381], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERTA-EDVALCA', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Persiste actualizaciones de negocio en ECB220M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-UPDATE-CTLPROC', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [429], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-PROCESO-FINAL', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [454], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-PROCESO-FINAL', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Cierra la ejecucion de ECB220M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900-CIERRA-CURSOR', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [463], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900-CIERRA-CURSOR', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Cierra la ejecucion de ECB220M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [483], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Inicializa el flujo operativo de ECB220M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [491], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Cierra la ejecucion de ECB220M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [482], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Gestiona contingencias en ECB220M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [495], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Inicializa el flujo operativo de ECB220M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [503], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Cierra la ejecucion de ECB220M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [494], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [6], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [20], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [11], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB220M', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [5], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB220M', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [28], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [26], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [24], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [25], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [9], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [23], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [4], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [21], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W045-EFECTIVO', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [329], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W045-EFECTIVO', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'})
SET n += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [29], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB220M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', summary: 'Orquesta una fase funcional de ECB220M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB220M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB220M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m', sourceFile: 'src/ECB220M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '010-OBTIENE-FECHAS-PROC', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '020-VERIFICA-EVENTO', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '025-INICIALIZA', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '030-ACUMULA-CARTERAS', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '035-DECLARA-CURSOR', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '050-GRABA-EDVALCA', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '510-ABRE-CURSOR-EDVALCA', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '520-LEE-EDVALCA', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '600-INSERTA-EDVALCA', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '610-UPDATE-CTLPROC', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '700-PROCESO-FINAL', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '900-CIERRA-CURSOR', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [463], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [483], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [491], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [495], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'ECB220M', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'FILE', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'W045-EFECTIVO', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '510-ABRE-CURSOR-EDVALCA', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '520-LEE-EDVALCA', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '600-INSERTA-EDVALCA', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '610-UPDATE-CTLPROC', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [448], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '900-CIERRA-CURSOR', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [472, 479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB220M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [284, 285, 286, 287, 288, 289, 290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [431, 432, 433, 434, 435, 436, 437, 438, 439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Program {name: 'ECB220M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '510-ABRE-CURSOR-EDVALCA', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '520-LEE-EDVALCA', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '600-INSERTA-EDVALCA', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '610-UPDATE-CTLPROC', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [448], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '900-CIERRA-CURSOR', programName: 'ECB220M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [472, 479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB220M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB220M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB220M.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005857Z-ecb220m'};

