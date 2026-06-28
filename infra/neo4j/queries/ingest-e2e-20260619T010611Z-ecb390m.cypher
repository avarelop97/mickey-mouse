// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T010611Z-ecb390m
// ============================================================================

MERGE (n:Copybook {name: 'DAGPOCTA'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [457], ingestion: 'auto', layer: 'dependency', name: 'DAGPOCTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDDESOP'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [451], ingestion: 'auto', layer: 'dependency', name: 'DEDDESOP', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVED'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [445], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVED', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [439], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [883], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [234], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [228], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [433], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [860, 861, 862, 863, 864, 865], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [481], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-REP2', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [702], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-REP2', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-TOT-MES', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [682], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-TOT-MES', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [655], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-REGISTRO-E-IMPRIME', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [490], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Cierra la ejecucion de ECB390M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [39], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [498], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DESPLIEGA-FH-DE-PROCESO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [49], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [43], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FIN-ARCHIVO-ECB390I', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [473], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FIN-ARCHIVO-ECB390I', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Cierra la ejecucion de ECB390M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE1', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [801], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE1', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE2', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [830], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE2', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [42], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LEE-REGISTRO-ECB390I', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [525], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LEE-REGISTRO-ECB390I', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB390M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MUEVE-E-IMPRIME-TOT-GRALS', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [776], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MUEVE-E-IMPRIME-TOT-GRALS', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-D1', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [642], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-D1', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTRO-FECHA', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [561], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTRO-FECHA', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [533], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-MES', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [547], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-MES', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REPO-R2-CONSLDDO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [493], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REPO-R2-CONSLDDO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [464], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMA-TOTALES-INSTRUMENTO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [745], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMA-TOTALES-INSTRUMENTO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMARIZA-TOTALES-DEL-MES', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [756], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMARIZA-TOTALES-DEL-MES', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [859], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOMA-FECHA-PARAMETRO-4', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-CONSLDDO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [731], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-CONSLDDO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-INSTRMNTO', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [751], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-INSTRMNTO', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'})
SET n += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [73], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB390M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', summary: 'Orquesta una fase funcional de ECB390M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB390M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB390M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m', sourceFile: 'src/ECB390M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-REP2', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-TOT-MES', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [682], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [655], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [498], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'FILE', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'FIN-ARCHIVO-ECB390I', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE1', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [801], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE2', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [830], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'LEE-REGISTRO-ECB390I', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [525], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'MUEVE-E-IMPRIME-TOT-GRALS', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [776], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'PROCESA-D1', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'PROCESA-REGISTRO-FECHA', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [533], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-MES', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'REPO-R2-CONSLDDO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'SUMA-TOTALES-INSTRUMENTO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [745], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'SUMARIZA-TOTALES-DEL-MES', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [756], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'TOTLS-CONSLDDO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [731], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'TOTLS-INSTRMNTO', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [883], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [883], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Program {name: 'ECB390M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [860, 861, 862, 863, 864, 865], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB390M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [883], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB390M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB390M.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010611Z-ecb390m'};

