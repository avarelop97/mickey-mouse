// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004806Z-ecb290m
// ============================================================================

MERGE (n:Copybook {name: 'DCONCEPT'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [293], ingestion: 'auto', layer: 'dependency', name: 'DCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCUENTA'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [281], ingestion: 'auto', layer: 'dependency', name: 'DCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDREPER'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [285], ingestion: 'auto', layer: 'dependency', name: 'DEDREPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDVALCA'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [289], ingestion: 'auto', layer: 'dependency', name: 'DEDVALCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [277], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [638], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [643], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [50], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [623], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [68], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [74], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE029'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [648], ingestion: 'auto', layer: 'dependency', name: 'SICCE029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICNC011'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [62], ingestion: 'auto', layer: 'dependency', name: 'SICNC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [56], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [273], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CONCEPT'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [531, 532, 533, 534, 535, 536, 537], ingestion: 'auto', layer: 'data-access', name: 'CONCEPT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CUENTA'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [395, 396, 397, 398, 399, 400, 401, 402, 403, 404], ingestion: 'auto', layer: 'data-access', name: 'CUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDREPER'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [334, 335, 336, 337, 338, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365], ingestion: 'auto', layer: 'data-access', name: 'EDREPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDVALCA'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365], ingestion: 'auto', layer: 'data-access', name: 'EDVALCA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [563, 564, 565, 566, 567, 568, 569], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [304], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [320], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Inicializa el flujo operativo de ECB290M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-LEE-FECHA-CIERRE', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [333], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-LEE-FECHA-CIERRE', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB290M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-DECLARA-CURSOR-CTA', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [349], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-DECLARA-CURSOR-CTA', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-ABRE-CURSOR-CTA', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [367], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-ABRE-CURSOR-CTA', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-LEE-CURSOR-CTA', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [377], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-LEE-CURSOR-CTA', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB290M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-PROCESO', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [446], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-PROCESO', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310-GENERA-REPORTE', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [454], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310-GENERA-REPORTE', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '311-IMPRIME-ENCA', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [488], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '311-IMPRIME-ENCA', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '312-IMPRIME-DETALLE', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [501], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '312-IMPRIME-DETALLE', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '313-LEE-CONCEPT', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [530], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '313-LEE-CONCEPT', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB290M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '314-LEE-PARAM', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [547], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '314-LEE-PARAM', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB290M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '315-IMPRIME-TOTAL', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [576], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '315-IMPRIME-TOTAL', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '350-DECLARA-CURSOR-CTA2', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [394], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '350-DECLARA-CURSOR-CTA2', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '355-CIERRA-CURSOR-CTA', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [589], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '355-CIERRA-CURSOR-CTA', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Cierra la ejecucion de ECB290M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-ABRE-CURSOR-CTA2', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [406], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-ABRE-CURSOR-CTA2', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '450-LEE-CURSOR-CTA2', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [416], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '450-LEE-CURSOR-CTA2', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB290M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '455-CIERRA-CURSOR-CTA2', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [434], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '455-CIERRA-CURSOR-CTA2', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Cierra la ejecucion de ECB290M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-TERMINA', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [601], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-TERMINA', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Cierra la ejecucion de ECB290M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [628], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Gestiona contingencias en ECB290M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [20], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [11], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB290M', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB290M', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [34], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [27], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [24], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [26], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [9], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [296], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [23], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [21], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'})
SET n += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [42], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB290M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', summary: 'Orquesta una fase funcional de ECB290M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB290M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB290M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m', sourceFile: 'src/ECB290M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '100-INICIO', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '110-LEE-FECHA-CIERRE', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '150-DECLARA-CURSOR-CTA', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '200-ABRE-CURSOR-CTA', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '250-LEE-CURSOR-CTA', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '300-PROCESO', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [446], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '310-GENERA-REPORTE', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '311-IMPRIME-ENCA', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '312-IMPRIME-DETALLE', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [501], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '313-LEE-CONCEPT', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '314-LEE-PARAM', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '315-IMPRIME-TOTAL', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [576], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '350-DECLARA-CURSOR-CTA2', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '355-CIERRA-CURSOR-CTA', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '400-ABRE-CURSOR-CTA2', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '450-LEE-CURSOR-CTA2', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '455-CIERRA-CURSOR-CTA2', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '500-TERMINA', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [601], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'ECB290M', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'FILE', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'ECB290M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'ECB290M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'ECB290M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '110-LEE-FECHA-CIERRE', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '200-ABRE-CURSOR-CTA', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '250-LEE-CURSOR-CTA', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '313-LEE-CONCEPT', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '314-LEE-PARAM', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [572], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '355-CIERRA-CURSOR-CTA', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [595], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '400-ABRE-CURSOR-CTA2', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '450-LEE-CURSOR-CTA2', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '455-CIERRA-CURSOR-CTA2', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '500-TERMINA', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB290M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB290M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [643], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB290M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [643], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:DBTable {name: 'CONCEPT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [531, 532, 533, 534, 535, 536, 537], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [395, 396, 397, 398, 399, 400, 401, 402, 403, 404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:DBTable {name: 'EDREPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [334, 335, 336, 337, 338, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Program {name: 'ECB290M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [563, 564, 565, 566, 567, 568, 569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'ECB290M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'ECB290M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'ECB290M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '110-LEE-FECHA-CIERRE', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '200-ABRE-CURSOR-CTA', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '250-LEE-CURSOR-CTA', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '313-LEE-CONCEPT', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '314-LEE-PARAM', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [572], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '355-CIERRA-CURSOR-CTA', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [595], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '400-ABRE-CURSOR-CTA2', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '450-LEE-CURSOR-CTA2', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '455-CIERRA-CURSOR-CTA2', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '500-TERMINA', programName: 'ECB290M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB290M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB290M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [643], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB290M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB290M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB290M.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004806Z-ecb290m'};

