// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T011348Z-zm1mg551
// ============================================================================

MERGE (n:Copybook {name: 'DFHAID'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [44], ingestion: 'auto', layer: 'dependency', name: 'DFHAID', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHBMSCA'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [48], ingestion: 'auto', layer: 'dependency', name: 'DFHBMSCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [74], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZAPERAPL'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [82], ingestion: 'auto', layer: 'dependency', name: 'ZAPERAPL', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMG5511'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [52], ingestion: 'auto', layer: 'dependency', name: 'ZMG5511', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWCOM11'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [198], ingestion: 'auto', layer: 'dependency', name: 'ZMWCOM11', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC002'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [500], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC003'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [506], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC004'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [512], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC005'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [518], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC006'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [524], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC006', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC008'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [530], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC008', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC009'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [544], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC010'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [152], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC010', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC011'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [156], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC012'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [160], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC012', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC013'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [164], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC013', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC014'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [168], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC014', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC015'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [538], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC015', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM0'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [488], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM1'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [494], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSG532'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [188], ingestion: 'auto', layer: 'dependency', name: 'ZMWSG532', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR009'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [173], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR432'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [183], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR432', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSZ403'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [178], ingestion: 'auto', layer: 'dependency', name: 'ZMWSZ403', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPARAM'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [78], ingestion: 'auto', layer: 'dependency', name: 'ZPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [307, 308, 309, 310, 311, 312, 313, 314, 315], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [222], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Inicializa el flujo operativo de ZM1MG551, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-LLENA-DATOS-MAPA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [265], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-LLENA-DATOS-MAPA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0002-BUSCA-AUTIRIZACION', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [306], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0002-BUSCA-AUTIRIZACION', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM1MG551 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [359], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [365], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ARMA-OPCIONES-PANTALLA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [412], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ARMA-OPCIONES-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [379], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [403], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8130-VALIDA-OPCION-CAPTURADA', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [324], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8130-VALIDA-OPCION-CAPTURADA', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [461], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'JUSTIFICA-OPCION', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [213], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'})
SET n += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [27], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MG551', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', summary: 'Orquesta una fase funcional de ZM1MG551, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM1MG551'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ZM1MG551', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551', sourceFile: 'src/ZM1MG551.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '0000-LLENA-DATOS-MAPA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '0002-BUSCA-AUTIRIZACION', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8110-ARMA-OPCIONES-PANTALLA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: '8130-VALIDA-OPCION-CAPTURADA', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '0002-BUSCA-AUTIRIZACION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZAPERAPL'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMG5511'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZAPERAPL'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMG5511'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Program {name: 'ZM1MG551'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [307, 308, 309, 310, 311, 312, 313, 314, 315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '0002-BUSCA-AUTIRIZACION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [320], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'JUSTIFICA-OPCION', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZAPERAPL'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMG5511'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MG551'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MG551.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T011348Z-zm1mg551'};

