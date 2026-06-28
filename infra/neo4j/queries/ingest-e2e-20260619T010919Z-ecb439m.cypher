// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T010919Z-ecb439m
// ============================================================================

MERGE (n:Copybook {name: 'DSVCTOCB'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [138], ingestion: 'auto', layer: 'dependency', name: 'DSVCTOCB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [250], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [131], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [121], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [125], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'SVCTOCB'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [204, 205, 206, 207, 208, 209], ingestion: 'auto', layer: 'data-access', name: 'SVCTOCB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [145], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Inicializa el flujo operativo de ECB439M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-PROCESO', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [155], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-PROCESO', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0300-TERMINA', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [159], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0300-TERMINA', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Cierra la ejecucion de ECB439M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-9900-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [166], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-9900-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Cierra la ejecucion de ECB439M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [144], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-LEE-CUENTAS', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [172], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-LEE-CUENTAS', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB439M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-LEE-CUENTAS-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [197], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-LEE-CUENTAS-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB439M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-LEE-SVCTOCB-IPOSP', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [203], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-LEE-SVCTOCB-IPOSP', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB439M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-LEE-SVCTOCB-IPOSP-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [220], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-LEE-SVCTOCB-IPOSP-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB439M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [228], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Inicializa el flujo operativo de ECB439M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [232], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Cierra la ejecucion de ECB439M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [227], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Gestiona contingencias en ECB439M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [236], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Inicializa el flujo operativo de ECB439M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [244], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Cierra la ejecucion de ECB439M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [235], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [16], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB439M', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB439M', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [35], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [23], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [20], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [22], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [19], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [17], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'})
SET n += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [90], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB439M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', summary: 'Orquesta una fase funcional de ECB439M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB439M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB439M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m', sourceFile: 'src/ECB439M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-0200-PROCESO', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-0300-TERMINA', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-9900-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '035-LEE-CUENTAS', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '035-LEE-CUENTAS-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '040-LEE-SVCTOCB-IPOSP', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '040-LEE-SVCTOCB-IPOSP-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [16], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'ECB439M', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'FILE', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [17], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB439M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'DSVCTOCB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'DSVCTOCB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Program {name: 'ECB439M'}), (b:DBTable {name: 'SVCTOCB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [204, 205, 206, 207, 208, 209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB439M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'DSVCTOCB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB439M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB439M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010919Z-ecb439m'};

