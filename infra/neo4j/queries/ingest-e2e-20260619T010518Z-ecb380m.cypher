// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T010518Z-ecb380m
// ============================================================================

MERGE (n:Copybook {name: 'DAGPOCTA'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [169], ingestion: 'auto', layer: 'dependency', name: 'DAGPOCTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDDESOP'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [163], ingestion: 'auto', layer: 'dependency', name: 'DEDDESOP', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVED'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [157], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVED', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [151], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [455], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [138], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [145], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'EDMOVED'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235], ingestion: 'auto', layer: 'data-access', name: 'EDMOVED', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [248, 249, 250, 251, 252, 253], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-RUTINA-PRINCIPAL', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [176], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [199], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Inicializa el flujo operativo de ECB380M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-ABRE-ARCHIVOS', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [212], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [218], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-DECLARA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [247], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-DECLARA-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [265], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '130-ABRE-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '140-PROCESA-REGISTROS-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [281], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '140-PROCESA-REGISTROS-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [298], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-CIERRA-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Cierra la ejecucion de ECB380M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [312], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-ABRE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '170-PROCESA-REGISTROS-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [328], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '170-PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '175-REGISTROS-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [338], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '175-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [369], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '180-CIERRA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Cierra la ejecucion de ECB380M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '190-CIERRA-ARCHIVOS', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [383], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '190-CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Cierra la ejecucion de ECB380M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-SORT-ARCHIVOS', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [389], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-SORT-ARCHIVOS', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [399], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB380M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [421], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB380M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COMP-3', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [103], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COMP-3', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [30], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [39], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [34], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [33], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB380M'})
SET n += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [83], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB380M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', summary: 'Orquesta una fase funcional de ECB380M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB380M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB380M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m', sourceFile: 'src/ECB380M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '000-RUTINA-PRINCIPAL', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '100-ABRE-ARCHIVOS', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '140-PROCESA-REGISTROS-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '170-PROCESA-REGISTROS-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '175-REGISTROS-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '190-CIERRA-ARCHIVOS', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '200-SORT-ARCHIVOS', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'COMP-3', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'FILE', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB380M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:DBTable {name: 'EDMOVED'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Program {name: 'ECB380M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [248, 249, 250, 251, 252, 253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB380M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB380M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB380M.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010518Z-ecb380m'};

