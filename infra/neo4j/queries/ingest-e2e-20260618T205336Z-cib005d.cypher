// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T205336Z-cib005d
// ============================================================================

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [502], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1117], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [478], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [490], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE028'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1137], ingestion: 'auto', layer: 'dependency', name: 'SICCE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1130], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [484], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA0'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [108], ingestion: 'auto', layer: 'dependency', name: 'SICPATA0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA1'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [112], ingestion: 'auto', layer: 'dependency', name: 'SICPATA1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [496], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [471], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1123], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [464], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1023, 1024, 1025, 1026], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [513], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [612], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-ABRE-CURSR', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-DECLARA-CURSORES', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [588], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-DECLARA-CURSORES', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-CALCULOS', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [638], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-CALCULOS', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-MUEVE-A-IMPRESION', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [816], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-MUEVE-A-IMPRESION', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-IMPRIME', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [958], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-IMPRIME', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1017], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACTUALIZA-PARAM-TA0', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Persiste actualizaciones de negocio en CIB005D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1037], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-DATOS-TA0', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB005D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1056], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-DATOS-TA1', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB005D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-MUEVE-DATOS-TA0', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1072], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-MUEVE-DATOS-TA0', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-MUEVE-DATOS-TA1', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1075], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-MUEVE-DATOS-TA1', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1086], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-CIERRA-CURSORES', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Cierra la ejecucion de CIB005D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-TERMINA', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1109], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-TERMINA', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Cierra la ejecucion de CIB005D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1121], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', summary: 'Gestiona contingencias en CIB005D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB005D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB005D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d', sourceFile: 'src/CIB005D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [513], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [612], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '005-DECLARA-CURSORES', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '010-CALCULOS', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '020-MUEVE-A-IMPRESION', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [816], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '030-IMPRIME', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [958], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1017], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1037], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1056], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '510-MUEVE-DATOS-TA0', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1072], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '510-MUEVE-DATOS-TA1', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1075], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1086], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '710-TERMINA', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [621, 632], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1049], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1068], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1094, 1103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [589, 590, 591, 592, 593, 594, 595, 596, 598, 599, 600, 601, 602, 603, 604, 605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Program {name: 'CIB005D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1023, 1024, 1025, 1026], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [621, 632], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1049], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1068], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1094, 1103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205336Z-cib005d'};

