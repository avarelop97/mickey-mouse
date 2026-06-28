// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004738Z-ecb007m
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [82], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [78], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBEP007'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [113], ingestion: 'auto', layer: 'dependency', name: 'ECBEP007', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [94], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC001'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [70], ingestion: 'auto', layer: 'dependency', name: 'SIC001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [358], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [86], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [74], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [90], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 317, 318, 319, 320, 321, 322, 323, 324, 325], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [118], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [134], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [141], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [181], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-VERIFICA-EVENTO-ACTUAL', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [140], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-VERIFICA-EVENTO-ACTUAL', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Persiste actualizaciones de negocio en ECB007M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [187], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [214], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-VERIFICA-EVENTOS-PREVIOS', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [186], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-VERIFICA-EVENTOS-PREVIOS', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [220], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [231], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-CARGA-EVENTOS', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [219], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-CARGA-EVENTOS', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [237], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [248], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-CARGA-MENSAJES', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [236], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-CARGA-MENSAJES', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [254], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [279], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-EVENTO-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [253], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-EVENTO-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [285], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [310], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERT-CTLPROC', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [284], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERT-CTLPROC', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Persiste actualizaciones de negocio en ECB007M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [316], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [335], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-UPDATE-CTLPROC', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [315], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [339], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [354], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-COMMIT', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [338], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-COMMIT', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [362], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Inicializa el flujo operativo de ECB007M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [368], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Cierra la ejecucion de ECB007M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [361], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Gestiona contingencias en ECB007M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [51], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB007M', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB007M', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [60], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [57], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [55], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [56], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [108], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [54], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [52], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'})
SET n += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [62], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB007M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', summary: 'Orquesta una fase funcional de ECB007M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB007M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB007M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m', sourceFile: 'src/ECB007M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '000-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '010-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '010-VERIFICA-EVENTO-ACTUAL', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '020-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '020-VERIFICA-EVENTOS-PREVIOS', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '030-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '030-CARGA-EVENTOS', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '040-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '040-CARGA-MENSAJES', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '500-LEE-EVENTO-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '600-INSERT-CTLPROC', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '610-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '610-UPDATE-CTLPROC', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '800-COMMIT', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'ECB007M', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'FILE', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB007M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ECB007M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [255, 256, 257, 258, 259, 260, 261, 262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Program {name: 'ECB007M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 317, 318, 319, 320, 321, 322, 323, 324, 325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB007M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ECB007M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB007M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB007M.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004738Z-ecb007m'};

