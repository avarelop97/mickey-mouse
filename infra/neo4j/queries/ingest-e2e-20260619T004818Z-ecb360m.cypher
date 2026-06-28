// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004818Z-ecb360m
// ============================================================================

MERGE (n:Copybook {name: 'DAGPOCTA'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [179], ingestion: 'auto', layer: 'dependency', name: 'DAGPOCTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDDESOP'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [173], ingestion: 'auto', layer: 'dependency', name: 'DEDDESOP', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVED'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [167], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVED', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [161], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [519], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [142], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [514], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [149], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [146], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [505], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [155], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'EDMOVED'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245], ingestion: 'auto', layer: 'data-access', name: 'EDMOVED', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [262, 263, 264, 265, 266, 267], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-RUTINA-PRINCIPAL', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [186], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-RUTINA-PRINCIPAL', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [209], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Inicializa el flujo operativo de ECB360M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-ABRE-ARCHIVOS', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [222], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [228], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-DECLARA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [261], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-DECLARA-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [283], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '130-ABRE-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '140-PROCESA-REGISTROS-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [303], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '140-PROCESA-REGISTROS-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [321], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-CIERRA-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Cierra la ejecucion de ECB360M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [339], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-ABRE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '170-PROCESA-REGISTROS-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [359], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '170-PROCESA-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '175-REGISTROS-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [369], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '175-REGISTROS-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [407], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '180-CIERRA-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Cierra la ejecucion de ECB360M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '190-CIERRA-ARCHIVOS', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [425], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '190-CIERRA-ARCHIVOS', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Cierra la ejecucion de ECB360M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-SORT-ARCHIVOS', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [431], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-SORT-ARCHIVOS', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [440], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR-PARAM', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB360M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [466], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-CURSOR-EDMOVED', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB360M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [502], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Gestiona contingencias en ECB360M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [508], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COMP-3', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [103], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COMP-3', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [30], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [39], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [34], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [33], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB360M'})
SET n += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [83], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB360M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', summary: 'Orquesta una fase funcional de ECB360M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB360M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB360M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m', sourceFile: 'src/ECB360M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '000-RUTINA-PRINCIPAL', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '100-ABRE-ARCHIVOS', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '140-PROCESA-REGISTROS-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '170-PROCESA-REGISTROS-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '175-REGISTROS-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '190-CIERRA-ARCHIVOS', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '200-SORT-ARCHIVOS', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'COMP-3', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'FILE', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB360M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB360M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [514], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [514], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:DBTable {name: 'EDMOVED'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Program {name: 'ECB360M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [262, 263, 264, 265, 266, 267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '110-DECLARA-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '120-DECLARA-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '130-ABRE-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '150-CIERRA-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '160-ABRE-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '180-CIERRA-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EDMOVED', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'ECB360M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'ECB360M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [514], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DAGPOCTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DEDDESOP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

MATCH (a:Paragraph {name: 'COMP-3', programName: 'ECB360M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB360M.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004818Z-ecb360m'};

