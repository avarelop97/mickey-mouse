// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T205338Z-cib013m
// ============================================================================

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [523], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1136], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [495], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [509], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE028'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1156], ingestion: 'auto', layer: 'dependency', name: 'SICCE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1149], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [502], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA0'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [118], ingestion: 'auto', layer: 'dependency', name: 'SICPATA0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA1'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [122], ingestion: 'auto', layer: 'dependency', name: 'SICPATA1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [516], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [488], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1142], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [481], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [998, 999, 1000, 1001, 1002, 1031, 1032, 1033, 1034], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [535], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [619], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-ABRE-CURSR', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-DECLARA-CURSOR', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [595], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-DECLARA-CURSOR', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-CALCULOS', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [646], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-CALCULOS', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-MUEVE-A-IMPRESION', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [804], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-MUEVE-A-IMPRESION', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-IMPRIME', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [936], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-IMPRIME', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [994], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACTUALIZA-PARAM-TA0', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Persiste actualizaciones de negocio en CIB013M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-ACTUALIZA-PARAM-TA1', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1016], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-ACTUALIZA-PARAM-TA1', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Persiste actualizaciones de negocio en CIB013M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1047], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-DATOS-TA0', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB013M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1066], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-DATOS-TA1', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB013M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-MUEVE-DATOS-TA0', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1083], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-MUEVE-DATOS-TA0', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-MUEVE-DATOS-TA1', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1087], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-MUEVE-DATOS-TA1', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-ACT-SDO-MESANT', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1095], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-ACT-SDO-MESANT', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1105], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-CIERRA-CURSORES', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Cierra la ejecucion de CIB013M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-TERMINA', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1128], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-TERMINA', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Cierra la ejecucion de CIB013M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1140], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', summary: 'Gestiona contingencias en CIB013M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB013M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB013M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m', sourceFile: 'src/CIB013M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [619], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '005-DECLARA-CURSOR', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [595], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '010-CALCULOS', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '020-MUEVE-A-IMPRESION', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '030-IMPRIME', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [936], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [994], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '050-ACTUALIZA-PARAM-TA1', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1016], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1066], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '510-MUEVE-DATOS-TA0', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1083], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '510-MUEVE-DATOS-TA1', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1087], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '550-ACT-SDO-MESANT', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1095], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '710-TERMINA', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [628, 639], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1009], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '050-ACTUALIZA-PARAM-TA1', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1041], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1059], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1079], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1113, 1122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [495], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [596, 597, 598, 599, 600, 601, 602, 603, 605, 606, 607, 608, 609, 610, 611, 612], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Program {name: 'CIB013M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [998, 999, 1000, 1001, 1002, 1031, 1032, 1033, 1034], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [628, 639], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1009], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '050-ACTUALIZA-PARAM-TA1', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1041], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1059], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1079], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1113, 1122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205338Z-cib013m'};

