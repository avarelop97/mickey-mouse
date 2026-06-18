// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260618T205753Z-cib125d
// ============================================================================

MERGE (n:Copybook {name: 'DCUENTA'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [116], ingestion: 'auto', layer: 'dependency', name: 'DCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPECORI'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [104], ingestion: 'auto', layer: 'dependency', name: 'DOPECORI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERA'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [112], ingestion: 'auto', layer: 'dependency', name: 'DOPERA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [108], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [519], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [76], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [535], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [62], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [90], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [83], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [528], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [69], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 339, 340, 341, 342, 343, 344, 345, 361, 362, 363, 364, 365, 366, 367], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERA'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421], ingestion: 'auto', layer: 'data-access', name: 'OPERA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 444, 445, 446, 447, 448, 449, 450, 451, 452, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [124], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Orquesta una fase funcional de CIB125D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-PROCESA-INFORMACION', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [147], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Orquesta una fase funcional de CIB125D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROC-OPECORI-OPERA', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [155], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROC-OPECORI-OPERA', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Orquesta una fase funcional de CIB125D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-FECHA-DIA-OPERACION', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [211], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-FECHA-DIA-OPERACION', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Orquesta una fase funcional de CIB125D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEFINE-CURSOR-FUTUROS', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [238], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEFINE-CURSOR-FUTUROS', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Cierra la ejecucion de CIB125D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-FUTUROS', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [287], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-FUTUROS', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB125D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-BUSCA-OPER-TASA', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [338], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-BUSCA-OPER-TASA', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB125D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '535-BUSCA-OPER-INPC', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [360], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '535-BUSCA-OPER-INPC', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB125D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-INSERTA-OPERA', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [382], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-INSERTA-OPERA', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Persiste actualizaciones de negocio en CIB125D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-TASA-PARAMETRO', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [443], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-TASA-PARAMETRO', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Orquesta una fase funcional de CIB125D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-INPC-PARAMETRO', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [473], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-INPC-PARAMETRO', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Orquesta una fase funcional de CIB125D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [509], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Cierra la ejecucion de CIB125D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB125D'})
SET n += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [525], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB125D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', summary: 'Gestiona contingencias en CIB125D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB125D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB125D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d', sourceFile: 'src/CIB125D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '010-PROCESA-INFORMACION', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '020-PROC-OPECORI-OPERA', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '500-FECHA-DIA-OPERACION', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '510-DEFINE-CURSOR-FUTUROS', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '520-LEE-FUTUROS', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '530-BUSCA-OPER-TASA', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '535-BUSCA-OPER-INPC', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [360], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '540-INSERTA-OPERA', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '550-TASA-PARAMETRO', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '560-INPC-PARAMETRO', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB125D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [525], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB125D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '500-FECHA-DIA-OPERACION', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-FUTUROS', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '520-LEE-FUTUROS', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '530-BUSCA-OPER-TASA', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '535-BUSCA-OPER-INPC', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '540-INSERTA-OPERA', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '550-TASA-PARAMETRO', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '560-INPC-PARAMETRO', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '700-FIN', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB125D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB125D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [528], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [528], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 339, 340, 341, 342, 343, 344, 345, 361, 362, 363, 364, 365, 366, 367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [212, 213, 214, 215, 216, 217, 444, 445, 446, 447, 448, 449, 450, 451, 452, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Program {name: 'CIB125D'}), (b:DBTable {name: 'OPERA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB125D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '500-FECHA-DIA-OPERACION', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-FUTUROS', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '520-LEE-FUTUROS', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '530-BUSCA-OPER-TASA', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '535-BUSCA-OPER-INPC', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '540-INSERTA-OPERA', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '550-TASA-PARAMETRO', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '560-INPC-PARAMETRO', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '700-FIN', programName: 'CIB125D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB125D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB125D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB125D.cbl', evidenceLines: [528], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260618T205753Z-cib125d'};

