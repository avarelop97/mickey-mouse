// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004851Z-zm1mf890
// ============================================================================

MERGE (n:Copybook {name: 'DFHAID'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [69], ingestion: 'auto', layer: 'dependency', name: 'DFHAID', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHBMSCA'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [73], ingestion: 'auto', layer: 'dependency', name: 'DFHBMSCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [124], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMF8901'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [77], ingestion: 'auto', layer: 'dependency', name: 'ZMF8901', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWCOM11'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [117], ingestion: 'auto', layer: 'dependency', name: 'ZMWCOM11', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC002'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [265], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC003'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [272], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC004'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [279], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC005'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [286], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC008'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [293], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC008', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC009'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [309], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC010'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [81], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC010', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC011'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [85], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC012'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [89], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC012', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC013'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [93], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC013', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC014'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [65], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC014', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC015'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [302], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC015', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM0'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [251], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM1'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [258], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSG532'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [113], ingestion: 'auto', layer: 'dependency', name: 'ZMWSG532', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR009'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [98], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR432'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [108], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR432', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSZ403'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [103], ingestion: 'auto', layer: 'dependency', name: 'ZMWSZ403', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPARAM'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [130], ingestion: 'auto', layer: 'dependency', name: 'ZPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'dependency'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [152], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Inicializa el flujo operativo de ZM1MF890, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [188], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [195], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [210], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [232], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [8], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [10], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [141], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'})
SET n += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [39], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MF890', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', summary: 'Orquesta una fase funcional de ZM1MF890, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM1MF890'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ZM1MF890', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890', sourceFile: 'src/ZM1MF890.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [236, 272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMF8901'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMF8901'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Program {name: 'ZM1MF890'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [236, 272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMF8901'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MF890'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MF890.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004851Z-zm1mf890'};

