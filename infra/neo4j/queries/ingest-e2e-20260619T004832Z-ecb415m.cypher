// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004832Z-ecb415m
// ============================================================================

MERGE (n:Paragraph {name: '000-0000-INICIO', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [143], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0000-INICIO', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Inicializa el flujo operativo de ECB415M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [149], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Inicializa el flujo operativo de ECB415M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [154], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-PROCESO', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [162], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-PROCESO', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-LEE-ARCHIVO-FISICAS', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [207], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-LEE-ARCHIVO-FISICAS', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB415M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '255-LEE-REPORTE-ECBANCF', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [215], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '255-LEE-REPORTE-ECBANCF', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB415M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-TERMINA', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [222], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-TERMINA', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Cierra la ejecucion de ECB415M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [230], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [22], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [43], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [27], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [26], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB415M'})
SET n += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [102], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB415M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', summary: 'Orquesta una fase funcional de ECB415M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB415M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB415M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m', sourceFile: 'src/ECB415M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '000-0000-INICIO', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '100-INICIO', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '200-PROCESO', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '250-LEE-ARCHIVO-FISICAS', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '255-LEE-REPORTE-ECBANCF', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '300-TERMINA', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'FILE', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

MATCH (a:Program {name: 'ECB415M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB415M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB415M.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004832Z-ecb415m'};

