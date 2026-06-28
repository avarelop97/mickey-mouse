// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004722Z-cob040d
// ============================================================================

MERGE (n:Copybook {name: 'DEMICOB'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [140], ingestion: 'auto', layer: 'dependency', name: 'DEMICOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERCOB'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [133], ingestion: 'auto', layer: 'dependency', name: 'DOPERCOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [390], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [90], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [119], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [416], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [83], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [173], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [148], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [106], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [126], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'EMICOB'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [362, 363, 364, 365, 366, 367, 368, 369, 370], ingestion: 'auto', layer: 'data-access', name: 'EMICOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERCOB'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [155, 156, 157, 158, 159, 160, 161, 162], ingestion: 'auto', layer: 'data-access', name: 'OPERCOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [166], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Inicializa el flujo operativo de COB040D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [175], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Inicializa el flujo operativo de COB040D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [206], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ACUMULA-COSTOS', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [232], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ACUMULA-COSTOS', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-PONDERA-ACUMULADOS', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [249], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-PONDERA-ACUMULADOS', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '045-VERIFICA-DIVISOR', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [261], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '045-VERIFICA-DIVISOR', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-ACTUALIZA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [281], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-ACTUALIZA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Persiste actualizaciones de negocio en COB040D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-INICIALIZA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [299], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-INICIALIZA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Inicializa el flujo operativo de COB040D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-SELECCIONA-OPERCOB', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [310], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-SELECCIONA-OPERCOB', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [331], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-SELECCIONA-EMICOB', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACT-EMICOB', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [361], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACT-EMICOB', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [397], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Gestiona contingencias en COB040D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [407], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'A020-COSTO-REC-VTA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [305], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'A020-COSTO-REC-VTA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB040D', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB040D', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [18], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [26], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [22], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [21], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [19], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [27], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'COB040D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'COB040D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d', sourceFile: 'src/COB040D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '000-INICIO', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '020-PROCESO', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '030-ACUMULA-COSTOS', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '040-PONDERA-ACUMULADOS', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '045-VERIFICA-DIVISOR', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '050-ACTUALIZA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '060-INICIALIZA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '500-SELECCIONA-OPERCOB', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '600-ACT-EMICOB', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'A020-COSTO-REC-VTA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'COB040D', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'FILE', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'COB040D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: '600-ACT-EMICOB', programName: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [377, 390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB040D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [332, 333, 334, 335, 336, 337, 338, 339, 340, 341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [155, 156, 157, 158, 159, 160, 161, 162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Program {name: 'COB040D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [362, 363, 364, 365, 366, 367, 368, 369, 370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'COB040D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: '600-ACT-EMICOB', programName: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [377, 390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB040D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004722Z-cob040d'};

