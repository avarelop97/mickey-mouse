// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004826Z-ecb395m
// ============================================================================

MERGE (n:Copybook {name: 'DEDDESOP'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [285], ingestion: 'auto', layer: 'dependency', name: 'DEDDESOP', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVED'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [279], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVED', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [273], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [585], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [158], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [152], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [267], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'EDMOVED'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352], ingestion: 'auto', layer: 'data-access', name: 'EDMOVED', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 562, 563, 564, 565, 566, 567], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [324], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ABRE-CURSOR-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [405], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ABRE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-TOT-GRAL', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [489], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-TOT-GRAL', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [500], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-REGISTRO-E-IMPRIME', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [330], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Cierra la ejecucion de ECB395M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIERRA-CURSOR-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [365], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIERRA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Cierra la ejecucion de ECB395M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [26], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DECLARA-CURSOR-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [336], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DECLARA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [379], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DESPLIEGA-FH-DE-PROCESO', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [34], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [30], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [541], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [29], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LEE-CURSOR-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [421], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LEE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB395M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MUEVE-E-IMPRIME-TOTALES', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [530], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MUEVE-E-IMPRIME-TOTALES', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-D1', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [476], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-D1', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [452], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [292], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMA-TOTALES-MENSUALES', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [519], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMA-TOTALES-MENSUALES', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [561], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOMA-FECHA-PARAMETRO-4', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'})
SET n += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [44], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB395M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', summary: 'Orquesta una fase funcional de ECB395M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB395M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB395M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m', sourceFile: 'src/ECB395M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'ABRE-CURSOR-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-TOT-GRAL', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [489], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'CIERRA-CURSOR-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'DECLARA-CURSOR-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'FILE', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'LEE-CURSOR-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'MUEVE-E-IMPRIME-TOTALES', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'PROCESA-D1', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [476], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'SUMA-TOTALES-MENSUALES', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:DBTable {name: 'EDMOVED'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Program {name: 'ECB395M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 562, 563, 564, 565, 566, 567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB395M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB395M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB395M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004826Z-ecb395m'};

