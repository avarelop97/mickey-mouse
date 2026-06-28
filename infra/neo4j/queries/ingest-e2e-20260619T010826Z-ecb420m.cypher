// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T010826Z-ecb420m
// ============================================================================

MERGE (n:Paragraph {name: '000-0000-INICIO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [159], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0000-INICIO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Inicializa el flujo operativo de ECB420M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [170], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Inicializa el flujo operativo de ECB420M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [176], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-ENCABEZADO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [185], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-ENCABEZADO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-PROCESO-LISTA', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [203], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-PROCESO-LISTA', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-CARGA-ARREGLO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [226], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-CARGA-ARREGLO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-LEE-ARCHIVO-CTAHOJA', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [218], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-LEE-ARCHIVO-CTAHOJA', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB420M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '255-LEE-REPO-R1-LISTA', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [232], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '255-LEE-REPO-R1-LISTA', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB420M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-TERMINA', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [239], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-TERMINA', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Cierra la ejecucion de ECB420M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-0100-INICIO', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [248], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-0100-INICIO', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Inicializa el flujo operativo de ECB420M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-9999-FIN', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [255], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-9999-FIN', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Cierra la ejecucion de ECB420M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-CIFRAS', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [247], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-CIFRAS', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [258], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [22], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [43], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [27], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [26], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB420M'})
SET n += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [96], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB420M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', summary: 'Orquesta una fase funcional de ECB420M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB420M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB420M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m', sourceFile: 'src/ECB420M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '000-0000-INICIO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '100-INICIO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '110-ABRE-ARCHIVOS', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '120-ENCABEZADO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '200-PROCESO-LISTA', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '250-CARGA-ARREGLO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '250-LEE-ARCHIVO-CTAHOJA', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '255-LEE-REPO-R1-LISTA', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '300-TERMINA', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '750-0100-INICIO', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '750-9999-FIN', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '750-CIFRAS', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'FILE', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

MATCH (a:Program {name: 'ECB420M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB420M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB420M.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010826Z-ecb420m'};

