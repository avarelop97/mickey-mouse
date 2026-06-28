// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T005518Z-ecb005m
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [59], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [55], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'EC2FP004'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [89], ingestion: 'auto', layer: 'dependency', name: 'EC2FP004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [71], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC001'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [47], ingestion: 'auto', layer: 'dependency', name: 'SIC001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [316], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [63], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [51], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [67], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [221, 222, 223, 224, 225, 226, 227, 228, 229, 230], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [159, 160, 161, 162, 163, 164], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [94], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [122], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [126], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [154], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-INICIALIZA', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [125], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-INICIALIZA', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [158], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [167], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [157], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-PARAMP04', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB005M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [171], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [180], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-LEE-FEVENTO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [170], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-LEE-FEVENTO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB005M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [184], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [216], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-FEC-CIERRE-ACT', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [183], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-FEC-CIERRE-ACT', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [220], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [248], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ACTUALIZA-CTLPROC', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [219], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ACTUALIZA-CTLPROC', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Persiste actualizaciones de negocio en ECB005M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [252], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [291], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-FEC-CIERRE-ANT', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [251], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-FEC-CIERRE-ANT', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [295], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [302], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-FEC-INICIO-PROC', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [294], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-FEC-INICIO-PROC', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [306], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [312], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-DIAS-PERIODO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [305], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-DIAS-PERIODO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [320], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Inicializa el flujo operativo de ECB005M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [326], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Cierra la ejecucion de ECB005M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [319], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Gestiona contingencias en ECB005M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [8], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [22], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [12], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB005M', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB005M', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [31], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [28], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [26], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [27], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [10], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [84], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [25], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [6], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'})
SET n += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [33], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB005M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', summary: 'Orquesta una fase funcional de ECB005M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB005M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB005M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m', sourceFile: 'src/ECB005M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '000-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '005-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '005-INICIALIZA', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '010-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '010-LEE-PARAMP04', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '015-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '015-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '015-LEE-FEVENTO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '020-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '020-FEC-CIERRE-ACT', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '030-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '030-ACTUALIZA-CTLPROC', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '040-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '040-FEC-CIERRE-ANT', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '050-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '050-FEC-INICIO-PROC', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '060-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '060-DIAS-PERIODO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [12], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'ECB005M', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'FILE', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: '020-0100-INICIO', programName: 'ECB005M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB005M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: '040-0100-INICIO', programName: 'ECB005M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: '060-9900-FIN', programName: 'ECB005M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ECB005M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [172, 173, 174, 175, 176, 177, 178, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [159, 160, 161, 162, 163, 164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Program {name: 'ECB005M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [221, 222, 223, 224, 225, 226, 227, 228, 229, 230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: '020-0100-INICIO', programName: 'ECB005M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB005M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: '040-0100-INICIO', programName: 'ECB005M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: '060-9900-FIN', programName: 'ECB005M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ECB005M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB005M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB005M.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005518Z-ecb005m'};

