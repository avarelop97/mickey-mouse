// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004822Z-ecb385m
// ============================================================================

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [455], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [953], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [235], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [948], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [242], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [229], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [239], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [934], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [449], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [908, 909, 910, 911, 912, 913], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [931], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Gestiona contingencias en ECB385M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [937], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [479], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-REP2', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [720], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-REP2', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-E-IMPRIME-TOT-MES', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [700], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-E-IMPRIME-TOT-MES', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [673], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARMA-REGISTRO-E-IMPRIME', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [488], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Cierra la ejecucion de ECB385M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [30], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [496], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DESPLIEGA-FH-DE-PROCESO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [40], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [34], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FIN-ARCHIVO-ECB385I', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [471], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FIN-ARCHIVO-ECB385I', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Cierra la ejecucion de ECB385M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE1', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [849], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE1', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE2', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [878], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IMPRIME-ENCABEZADOS-REPORTE2', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [33], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LEE-REGISTRO-ECB385I', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [524], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LEE-REGISTRO-ECB385I', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB385M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MUEVE-E-IMPRIME-TOT-GRALS', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [824], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MUEVE-E-IMPRIME-TOT-GRALS', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-D1', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [660], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-D1', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTRO-FECHA', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [562], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTRO-FECHA', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [532], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REGISTROS-MES', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [547], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REGISTROS-MES', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REPO-R2-CONSLDDO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [491], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REPO-R2-CONSLDDO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [462], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMA-TOTALES-INSTRUMENTO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [779], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMA-TOTALES-INSTRUMENTO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SUMARIZA-TOTALES-DEL-MES', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [790], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SUMARIZA-TOTALES-DEL-MES', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [907], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOMA-FECHA-PARAMETRO-4', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-CONSLDDO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [745], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-CONSLDDO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-CONSLDO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [763], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-CONSLDO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'TOTLS-INSTRMNTO', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [785], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'TOTLS-INSTRMNTO', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'})
SET n += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [64], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB385M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', summary: 'Orquesta una fase funcional de ECB385M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB385M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB385M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m', sourceFile: 'src/ECB385M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [931], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-REP2', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [720], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'ARMA-E-IMPRIME-TOT-MES', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'ARMA-REGISTRO-E-IMPRIME', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'CIERRA-ARCHIVOS', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'FILE', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'FIN-ARCHIVO-ECB385I', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE1', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [849], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'IMPRIME-ENCABEZADOS-REPORTE2', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [878], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'LEE-REGISTRO-ECB385I', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'MUEVE-E-IMPRIME-TOT-GRALS', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'PROCESA-D1', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'PROCESA-REGISTRO-FECHA', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [562], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-EDMOVED', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [532], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'PROCESA-REGISTROS-MES', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'REPO-R2-CONSLDDO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [491], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'RUTINA-PRINCIPAL', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'SUMA-TOTALES-INSTRUMENTO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [779], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'SUMARIZA-TOTALES-DEL-MES', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [790], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [907], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'TOTLS-CONSLDDO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [745], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'TOTLS-CONSLDO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [763], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'TOTLS-INSTRMNTO', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [785], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB385M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [953], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [497], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [924], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [953], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Program {name: 'ECB385M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [908, 909, 910, 911, 912, 913], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB385M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [953], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'DESPLIEGA-FH-DE-PROCESO', programName: 'ECB385M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [497], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'TOMA-FECHA-PARAMETRO-4', programName: 'ECB385M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [924], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB385M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB385M.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004822Z-ecb385m'};

