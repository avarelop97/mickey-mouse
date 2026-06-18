// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T205351Z-cib065d
// ============================================================================

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [80], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DTIPCAMB'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [87], ingestion: 'auto', layer: 'dependency', name: 'DTIPCAMB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [245], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [74], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [232], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [67], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [60], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [239], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [53], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [103, 104, 105, 106, 107, 108], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'TIPCAMB'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206], ingestion: 'auto', layer: 'data-access', name: 'TIPCAMB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '005-FECHAS', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [102], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-FECHAS', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-TIPO-CAMBIO', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [128], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB065D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-OBTEN-TIPO-24', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [161], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-OBTEN-TIPO-24', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB065D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-GRABA-VALOR-48', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [194], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-GRABA-VALOR-48', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', summary: 'Persiste actualizaciones de negocio en CIB065D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-TERMINA', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [226], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-TERMINA', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', summary: 'Cierra la ejecucion de CIB065D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [237], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', summary: 'Gestiona contingencias en CIB065D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB065D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB065D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d', sourceFile: 'src/CIB065D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '005-FECHAS', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '010-LEE-TIPO-CAMBIO', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '020-OBTEN-TIPO-24', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '030-GRABA-VALOR-48', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '810-TERMINA', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '005-FECHAS', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [113, 123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '010-LEE-TIPO-CAMBIO', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '020-OBTEN-TIPO-24', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '030-GRABA-VALOR-48', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [211, 221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '810-TERMINA', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB065D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB065D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [103, 104, 105, 106, 107, 108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [136, 137, 138, 139, 140, 141, 142, 143, 168, 169, 170, 171, 172, 173, 174, 175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Program {name: 'CIB065D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '005-FECHAS', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [113, 123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '010-LEE-TIPO-CAMBIO', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '020-OBTEN-TIPO-24', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '030-GRABA-VALOR-48', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [211, 221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '810-TERMINA', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB065D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB065D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205351Z-cib065d'};

