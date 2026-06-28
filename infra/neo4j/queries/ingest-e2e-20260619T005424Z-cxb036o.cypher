// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T005424Z-cxb036o
// ============================================================================

MERGE (n:Copybook {name: 'SICMF334'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [48], ingestion: 'auto', layer: 'dependency', name: 'SICMF334', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [41], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', viewTag: 'dependency'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [54], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Inicializa el flujo operativo de CXB036O, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [57], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0300-REGRESA', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [68], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0300-REGRESA', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-9900-FIN', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [87], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-9900-FIN', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Cierra la ejecucion de CXB036O, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [53], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [73], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Inicializa el flujo operativo de CXB036O, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0200-PROCESO', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [75], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0200-PROCESO', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-CLAVE-EMISORA', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [72], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-CLAVE-EMISORA', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [90], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Inicializa el flujo operativo de CXB036O, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0200-PROCESO', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [92], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0200-PROCESO', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [105], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Cierra la ejecucion de CXB036O, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-FECHA-EMISORA', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [89], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-FECHA-EMISORA', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [26], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CXB036O', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CXB036O', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [33], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'GOBACK', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [69], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'GOBACK', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [30], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [32], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [44], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [29], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [27], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB036O'})
SET n += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [36], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CXB036O', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', summary: 'Orquesta una fase funcional de CXB036O, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CXB036O'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CXB036O', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o', sourceFile: 'src/CXB036O.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '000-0300-REGRESA', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '000-9900-FIN', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '000-CONTROL', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '005-0200-PROCESO', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '005-CLAVE-EMISORA', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '010-0200-PROCESO', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '010-9900-FIN', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: '010-FECHA-EMISORA', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'AUTHOR', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'CXB036O', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'GOBACK', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'IBM-4381', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'LINKAGE', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB036O'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'CXB036O'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB036O'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [41], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Program {name: 'CXB036O'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [41], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'CXB036O'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CXB036O'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CXB036O.cbl', evidenceLines: [41], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005424Z-cxb036o'};

