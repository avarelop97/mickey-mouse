// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T005331Z-cob153d
// ============================================================================

MERGE (n:Copybook {name: 'DOPECORI'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [104], ingestion: 'auto', layer: 'dependency', name: 'DOPECORI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [111], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [391], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [76], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [434], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [90], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [128], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [69], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [83], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 352, 353, 354, 355, 356, 357, 358], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [372, 373, 374, 375, 376, 377, 378], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-010-CONTROL-GENERAL', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [116], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-010-CONTROL-GENERAL', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [135], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Inicializa el flujo operativo de COB153D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-ABRE-CURSOR', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [170], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-ABRE-CURSOR', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-PROCESO', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [183], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-PROCESO', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-CALCULA-CDIASVEN', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [196], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-CALCULA-CDIASVEN', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-CERRAR-CURSOR', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [252], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-CERRAR-CURSOR', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-OPECORI', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [268], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-OPECORI', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB153D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [298], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Persiste actualizaciones de negocio en COB153D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-CUENTA-REGISTROS', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [325], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-CUENTA-REGISTROS', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-BORRA', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [350], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-BORRA', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-BUSCA-FECHA-HOY', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [370], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-BUSCA-FECHA-HOY', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB153D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [399], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Inicializa el flujo operativo de COB153D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [407], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Cierra la ejecucion de COB153D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [398], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Gestiona contingencias en COB153D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [414], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [6], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB153D', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [5], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB153D', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [18], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [10], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [26], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [22], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [8], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [21], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [4], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [19], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [28], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'COB153D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'COB153D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d', sourceFile: 'src/COB153D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '000-010-CONTROL-GENERAL', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '100-INICIO', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '110-ABRE-CURSOR', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '200-PROCESO', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '250-CALCULA-CDIASVEN', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '300-CERRAR-CURSOR', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '500-LEE-OPECORI', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '600-ACTUALIZA', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '650-CUENTA-REGISTROS', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '700-BORRA', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '750-BUSCA-FECHA-HOY', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'COB153D', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'FILE', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '000-010-CONTROL-GENERAL', programName: 'COB153D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '110-ABRE-CURSOR', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '300-CERRAR-CURSOR', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '500-LEE-OPECORI', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '650-CUENTA-REGISTROS', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '700-BORRA', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '750-BUSCA-FECHA-HOY', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [384, 391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB153D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 327, 328, 329, 330, 331, 332, 333, 334, 352, 353, 354, 355, 356, 357, 358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [372, 373, 374, 375, 376, 377, 378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Program {name: 'COB153D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 352, 353, 354, 355, 356, 357, 358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '000-010-CONTROL-GENERAL', programName: 'COB153D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '110-ABRE-CURSOR', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '300-CERRAR-CURSOR', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '500-LEE-OPECORI', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '650-CUENTA-REGISTROS', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '700-BORRA', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '750-BUSCA-FECHA-HOY', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [384, 391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB153D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005331Z-cob153d'};

