// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004720Z-cob037e
// ============================================================================

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [125], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [223], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [82], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [111], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [248], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [75], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [147], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [134], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA1'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [55], ingestion: 'auto', layer: 'dependency', name: 'SICPATA1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [98], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [89], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [118], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [198, 199, 200, 201, 202, 203], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [140], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Inicializa el flujo operativo de COB037E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [149], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Inicializa el flujo operativo de COB037E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [152], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-SELECCIONA-PARAM', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [168], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-SELECCIONA-PARAM', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACT-PARAM', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [197], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACT-PARAM', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [230], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Gestiona contingencias en COB037E, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [239], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB037E', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB037E', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [18], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [26], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [22], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [21], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [19], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [27], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'COB037E'})
SET n += {ingestion: 'auto', layer: 'program', name: 'COB037E', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e', sourceFile: 'src/COB037E.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '000-INICIO', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '020-PROCESO', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '500-SELECCIONA-PARAM', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '600-ACT-PARAM', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'COB037E', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'FILE', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'COB037E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: '500-SELECCIONA-PARAM', programName: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: '600-ACT-PARAM', programName: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [210, 223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB037E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [169, 170, 171, 172, 173, 174, 175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Program {name: 'COB037E'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [198, 199, 200, 201, 202, 203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'COB037E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: '500-SELECCIONA-PARAM', programName: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: '600-ACT-PARAM', programName: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [210, 223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB037E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004720Z-cob037e'};

