// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d
// ============================================================================

MERGE (n:Copybook {name: 'DCTAMARC'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [228], ingestion: 'auto', layer: 'dependency', name: 'DCTAMARC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [242], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCUENTA'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [249], ingestion: 'auto', layer: 'dependency', name: 'DCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEMICOB'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [140], ingestion: 'auto', layer: 'dependency', name: 'DEMICOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPECORI'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [235], ingestion: 'auto', layer: 'dependency', name: 'DOPECORI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERCOB'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [133], ingestion: 'auto', layer: 'dependency', name: 'DOPERCOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [111], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPERJUR'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [256], ingestion: 'auto', layer: 'dependency', name: 'DPERJUR', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [766], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [211], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [729], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [218], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC231'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [84], ingestion: 'auto', layer: 'dependency', name: 'SIC231', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [119], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [434], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [90], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [273], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [263], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICMF334'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'SICMF334', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPAP73'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [122], ingestion: 'auto', layer: 'dependency', name: 'SICPAP73', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA0'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [38], ingestion: 'auto', layer: 'dependency', name: 'SICPATA0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA1'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [42], ingestion: 'auto', layer: 'dependency', name: 'SICPATA1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [106], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICRF330'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [56], ingestion: 'auto', layer: 'dependency', name: 'SICRF330', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [92], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [54], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [192], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [221], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EMICOB'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [362, 363, 364, 365, 366, 367, 368, 369, 370], ingestion: 'auto', layer: 'data-access', name: 'EMICOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OF'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [121, 122, 123, 124, 125, 126, 127], ingestion: 'auto', layer: 'data-access', name: 'OF', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 307], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERCOB'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [155, 156, 157, 158, 159, 160, 161, 162], ingestion: 'auto', layer: 'data-access', name: 'OPERCOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [372, 373, 374, 375, 376, 377, 378], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', viewTag: 'data-access'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB034D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB034D', nodeType: 'business-function', objective: 'Capacidad funcional principal de COB034D.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB037E'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que al final de cada periodo contable, poner en ceros el importe del periodo en el registro de acumulados contables.. Pertenece a: CASA DE BOLSA PROBURSA S.A. 24/SEP/90. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB037E', nodeType: 'business-function', objective: 'AL FINAL DE CADA PERIODO CONTABLE, PONER EN CEROS EL IMPORTE DEL PERIODO EN EL REGISTRO DE ACUMULADOS CONTABLES.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB038D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB038D', nodeType: 'business-function', objective: 'Capacidad funcional principal de COB038D.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB039D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que convertir las operaciones aisladas (que no estan inventariadas ni asignadas) en emisiones fecha de ultima modificacion: 08/nov/90 modifico: tecnosys (hector lozano zerme¦o). Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB039D', nodeType: 'business-function', objective: 'CONVERTIR LAS OPERACIONES AISLADAS (QUE NO ESTAN INVENTARIADAS NI ASIGNADAS) EN EMISIONES FECHA DE ULTIMA MODIFICACION: 08/NOV/90 MODIFICO: TECNOSYS (HECTOR LOZANO ZERME¦O)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB040D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que reflejar los costos estimados de recuperacion almacenados en cada operacion asignada en la emision.. Pertenece a: CASA DE BOLSA PROBURSA S.A. 03/OCT/90. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB040D', nodeType: 'business-function', objective: 'REFLEJAR LOS COSTOS ESTIMADOS DE RECUPERACION ALMACENADOS EN CADA OPERACION ASIGNADA EN LA EMISION.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB055D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB055D', nodeType: 'business-function', objective: 'Capacidad funcional principal de COB055D.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB056D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB056D', nodeType: 'business-function', objective: 'Capacidad funcional principal de COB056D.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB100E'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que cambia los saldos de las ta0 y ta1 de titulos. Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB100E', nodeType: 'business-function', objective: 'CAMBIA LOS SALDOS DE LAS TA0 Y TA1 DE TITULOS', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB153D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que actualizacion a futuros de tasas e indices.. Pertenece a: PROBURSA, S.A. DE C.V. FEB/96..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB153D', nodeType: 'business-function', objective: 'ACTUALIZACION A FUTUROS DE TASAS E INDICES.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB156D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROBURSA, S.A. DE C.V. MAR/96..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB156D', nodeType: 'business-function', objective: 'Capacidad funcional principal de COB156D.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'functional'};

MERGE (n:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [226], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [240], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [271], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-TASAS-PONDERADAS', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [239], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-TASAS-PONDERADAS', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [275], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [281], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-DESLIZAMIENTO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [274], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-DESLIZAMIENTO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [284], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [290], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-FECHA-DE-HOY', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [283], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-FECHA-DE-HOY', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [293], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [318], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-COSTO-RECUPERACION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [292], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-COSTO-RECUPERACION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [322], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [336], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-ABRE-CURSOR-PARAM', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [321], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-ABRE-CURSOR-PARAM', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [340], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [354], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ABRE-CURSOR-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [339], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ABRE-CURSOR-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [358], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [384], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-PROCESA-REGISTRO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [357], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-PROCESA-REGISTRO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [388], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [420], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-COSTOS-PROMEDIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [387], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-COSTOS-PROMEDIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '045-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [424], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '045-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '045-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [499], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '045-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '045-COSTO-RECUPERACION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [423], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '045-COSTO-RECUPERACION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [504], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [561], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-COSTO-OPORTUNIDAD', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [503], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-COSTO-OPORTUNIDAD', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [565], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [595], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-TRAE-TASA-RECUPERACION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [564], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-TRAE-TASA-RECUPERACION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [599], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [631], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-TRAE-TASA-OPORTUNIDAD', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [598], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-TRAE-TASA-OPORTUNIDAD', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [635], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [674], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-ACTUALIZA-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [634], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-ACTUALIZA-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Persiste actualizaciones de negocio en COB034D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [678], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [724], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-AISLADAS-NO-ASIGNADAS', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [677], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-AISLADAS-NO-ASIGNADAS', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [728], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [755], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-DIAS-SIG-HABIL', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [727], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-DIAS-SIG-HABIL', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [759], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [784], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-COSTO-RECUPERACION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [758], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-COSTO-RECUPERACION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [788], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [804], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [787], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR-PARAM', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB034D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [808], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [835], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-PARAM', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [807], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-PARAM', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB034D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [839], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [859], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-LEE-CURSOR-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [838], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-LEE-CURSOR-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB034D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [863], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [892], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-EMICOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [862], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-EMICOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB034D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [896], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [936], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [895], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Persiste actualizaciones de negocio en COB034D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [918], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-ACTUALIZA-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [917], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-ACTUALIZA-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Persiste actualizaciones de negocio en COB034D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [946], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [977], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [945], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Gestiona contingencias en COB034D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [983], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [982], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB034D', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB034D', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [27], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [46], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [34], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [31], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [33], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [30], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [28], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [47], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [140], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Inicializa el flujo operativo de COB037E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [149], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Inicializa el flujo operativo de COB037E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [152], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-SELECCIONA-PARAM', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [168], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-SELECCIONA-PARAM', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACT-PARAM', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [197], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACT-PARAM', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [230], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Gestiona contingencias en COB037E, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [239], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB037E', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB037E', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [18], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [26], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [22], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [21], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [19], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'})
SET n += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [27], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB037E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', summary: 'Orquesta una fase funcional de COB037E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [102], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [122], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [127], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-ACTUA-OP-DEL-DIA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [120], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-ACTUA-OP-DEL-DIA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-FECHOY', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [131], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-FECHOY', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0200-FECHABIL', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [138], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0200-FECHABIL', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0300-EMISORA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [153], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0300-EMISORA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [176], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ACTUA-EMISION-LIQUIDA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [130], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ACTUA-EMISION-LIQUIDA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [180], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [183], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ELIMI-NOASIG-NOINVENT', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [179], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ELIMI-NOASIG-NOINVENT', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [186], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [204], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-OP-DEL-DIA-ASIGNADAS', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [185], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-OP-DEL-DIA-ASIGNADAS', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [208], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [225], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-OP-DEL-DIA-INVENTARIADAS', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [207], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-OP-DEL-DIA-INVENTARIADAS', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [229], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [247], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-OP-DEL-DIA-NASI-NINV', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [228], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-OP-DEL-DIA-NASI-NINV', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [251], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [269], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-OPERACIONES-QUE-LIQUIDAN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [250], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-OPERACIONES-QUE-LIQUIDAN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [273], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [291], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-MARCA-BAJA-OP-LMANANA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [272], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-MARCA-BAJA-OP-LMANANA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '660-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [295], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '660-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '660-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [313], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '660-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '660-VIGENTES-ASIGNADAS', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [294], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '660-VIGENTES-ASIGNADAS', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '670-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [317], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '670-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '670-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [334], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '670-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '670-VIGENTES-INVENTARIADAS', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [316], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '670-VIGENTES-INVENTARIADAS', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '680-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [338], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '680-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '680-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [351], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '680-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '680-ELIMI-OP-LMANANA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [337], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '680-ELIMI-OP-LMANANA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '690-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [355], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '690-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '690-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [371], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '690-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '690-ELIMI-NOASIG-NOINVENT', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [354], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '690-ELIMI-NOASIG-NOINVENT', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '695-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [375], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '695-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '695-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [394], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '695-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '695-RESET-COSTOS-PROMEDIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [374], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '695-RESET-COSTOS-PROMEDIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [405], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [411], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [404], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Gestiona contingencias en COB038D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [418], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [417], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB038D', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB038D', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [25], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [44], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [32], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [29], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [31], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [28], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [26], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [45], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [109], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-DECLARA-OPERCOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [120], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-DECLARA-OPERCOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [148], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Inicializa el flujo operativo de COB039D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-ACCESA-EMICOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [220], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-ACCESA-EMICOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ACTUALIZA-EMICOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [244], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ACTUALIZA-EMICOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Persiste actualizaciones de negocio en COB039D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-CALCULOS-VTAS', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [264], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-CALCULOS-VTAS', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-CALCULOS-CPAS', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [280], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-CALCULOS-CPAS', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-INSERTA-EMICOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [296], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-INSERTA-EMICOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Persiste actualizaciones de negocio en COB039D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-ACTUALIZA-OPERCOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [336], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-ACTUALIZA-OPERCOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Persiste actualizaciones de negocio en COB039D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERCOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [353], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERCOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB039D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [377], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Cierra la ejecucion de COB039D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '850-COMMIT-GRAL', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [391], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '850-COMMIT-GRAL', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [411], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Gestiona contingencias en COB039D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB039D', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB039D', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [24], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [34], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [31], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [28], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [30], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [103], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [27], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [25], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [36], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [166], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Inicializa el flujo operativo de COB040D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [175], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Inicializa el flujo operativo de COB040D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [206], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ACUMULA-COSTOS', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [232], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ACUMULA-COSTOS', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-PONDERA-ACUMULADOS', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [249], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-PONDERA-ACUMULADOS', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '045-VERIFICA-DIVISOR', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [261], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '045-VERIFICA-DIVISOR', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-ACTUALIZA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [281], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-ACTUALIZA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Persiste actualizaciones de negocio en COB040D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-INICIALIZA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [299], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-INICIALIZA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Inicializa el flujo operativo de COB040D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-SELECCIONA-OPERCOB', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [310], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-SELECCIONA-OPERCOB', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [331], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-SELECCIONA-EMICOB', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACT-EMICOB', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [361], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACT-EMICOB', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [397], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Gestiona contingencias en COB040D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [407], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'A020-COSTO-REC-VTA', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [305], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'A020-COSTO-REC-VTA', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB040D', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB040D', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [18], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [26], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [22], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [21], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [19], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'})
SET n += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [27], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB040D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', summary: 'Orquesta una fase funcional de COB040D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-FECHA-HORA', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [90], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-FECHA-HORA', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [96], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-INSERTA-CTLPROC', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Persiste actualizaciones de negocio en COB055D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [154], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Inicializa el flujo operativo de COB055D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [160], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Cierra la ejecucion de COB055D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [153], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Gestiona contingencias en COB055D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [164], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Inicializa el flujo operativo de COB055D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [167], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Cierra la ejecucion de COB055D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [163], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [5], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB055D', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [4], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB055D', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [19], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [29], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [26], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [23], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [25], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [22], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [3], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [20], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'})
SET n += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [31], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB055D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', summary: 'Orquesta una fase funcional de COB055D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-FECHA-HORA', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [90], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-FECHA-HORA', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [96], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-INSERTA-CTLPROC', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Persiste actualizaciones de negocio en COB056D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [154], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Inicializa el flujo operativo de COB056D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [160], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Cierra la ejecucion de COB056D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [153], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Gestiona contingencias en COB056D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [164], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Inicializa el flujo operativo de COB056D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [167], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Cierra la ejecucion de COB056D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [163], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [5], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB056D', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [4], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB056D', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [19], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [29], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [26], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [23], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [25], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [22], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [3], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [20], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'})
SET n += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [31], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB056D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', summary: 'Orquesta una fase funcional de COB056D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [79], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-SALDOS-TA0', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [127], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-SALDOS-TA0', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-SALDOS-TA1', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [136], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-SALDOS-TA1', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-PARAM', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [146], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-PARAM', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB100E y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-PARAM', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [163], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-PARAM', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Persiste actualizaciones de negocio en COB100E, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-TERMINA', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [177], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-TERMINA', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Cierra la ejecucion de COB100E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [190], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Gestiona contingencias en COB100E, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB100E', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB100E', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [18], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [25], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [22], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [24], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [21], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [19], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'})
SET n += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [28], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB100E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', summary: 'Orquesta una fase funcional de COB100E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-010-CONTROL-GENERAL', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [116], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-010-CONTROL-GENERAL', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [135], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Inicializa el flujo operativo de COB153D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-ABRE-CURSOR', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [170], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-ABRE-CURSOR', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-PROCESO', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [183], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-PROCESO', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250-CALCULA-CDIASVEN', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [196], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250-CALCULA-CDIASVEN', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300-CERRAR-CURSOR', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [252], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300-CERRAR-CURSOR', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-OPECORI', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [268], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-OPECORI', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB153D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [298], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Persiste actualizaciones de negocio en COB153D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-CUENTA-REGISTROS', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [325], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-CUENTA-REGISTROS', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-BORRA', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [350], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-BORRA', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-BUSCA-FECHA-HOY', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [370], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-BUSCA-FECHA-HOY', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB153D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [399], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Inicializa el flujo operativo de COB153D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [407], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Cierra la ejecucion de COB153D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [398], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Gestiona contingencias en COB153D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [414], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [6], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB153D', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [5], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB153D', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [18], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [10], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [26], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [22], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [8], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [21], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [4], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [19], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'})
SET n += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [28], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB153D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', summary: 'Orquesta una fase funcional de COB153D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [265], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '001-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [280], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '001-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '001-9900-FIN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [341], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '001-9900-FIN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '001-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [279], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '001-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '002-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [348], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '002-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '002-9900-FIN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [352], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '002-9900-FIN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '002-PROCESO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [347], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '002-PROCESO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '003-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [359], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '003-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '003-9900-FIN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [375], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '003-9900-FIN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '003-TERMINA', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [358], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '003-TERMINA', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [382], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [389], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-INICIALIZA', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [381], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-INICIALIZA', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [396], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [406], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESA-FUTUROS', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [395], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESA-FUTUROS', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [413], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [523], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ARMA-REGISTRO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [412], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ARMA-REGISTRO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [530], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [542], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ARMA-REGISTRO-GTIA', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [529], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ARMA-REGISTRO-GTIA', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [549], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [562], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-GRABA-REGISTRO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [548], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-GRABA-REGISTRO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Persiste actualizaciones de negocio en COB156D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [569], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-9900', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [592], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-9900', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-GRABA-TASAS', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [568], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-GRABA-TASAS', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Persiste actualizaciones de negocio en COB156D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [599], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-9900', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [621], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-9900', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-GRABA-INDICES', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [598], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-GRABA-INDICES', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Persiste actualizaciones de negocio en COB156D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [628], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [675], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-OPECORI', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [627], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-OPECORI', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB156D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [682], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [700], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-CHECA-CTLPROC', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [681], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-CHECA-CTLPROC', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [705], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-9900-TERMINA', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [722], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-9900-TERMINA', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-ACTUALIZA-CTLPROC', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [704], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-ACTUALIZA-CTLPROC', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Persiste actualizaciones de negocio en COB156D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [736], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Inicializa el flujo operativo de COB156D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [744], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [735], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Gestiona contingencias en COB156D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIA', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [751], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIA', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [760], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Cierra la ejecucion de COB156D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [750], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ARCH-A2-INDICES', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [385], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ARCH-A2-INDICES', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB156D', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB156D', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [18], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [11], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [33], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [25], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [22], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [24], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [9], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [21], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'S000-EDO-A2', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [388], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'S000-EDO-A2', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [19], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'})
SET n += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [87], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB156D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', summary: 'Orquesta una fase funcional de COB156D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'COB034D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'COB034D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB037E'})
SET n += {description: 'Programa COBOL que al final de cada periodo contable, poner en ceros el importe del periodo en el registro de acumulados contables.. Pertenece a: CASA DE BOLSA PROBURSA S.A. 24/SEP/90. /.', ingestion: 'auto', layer: 'program', name: 'COB037E', nodeType: 'program', objective: 'AL FINAL DE CADA PERIODO CONTABLE, PONER EN CEROS EL IMPORTE DEL PERIODO EN EL REGISTRO DE ACUMULADOS CONTABLES.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', system: 'CASA DE BOLSA PROBURSA S.A. 24/SEP/90. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB038D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'COB038D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB039D'})
SET n += {description: 'Programa COBOL que convertir las operaciones aisladas (que no estan inventariadas ni asignadas) en emisiones fecha de ultima modificacion: 08/nov/90 modifico: tecnosys (hector lozano zerme¦o). Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'program', name: 'COB039D', nodeType: 'program', objective: 'CONVERTIR LAS OPERACIONES AISLADAS (QUE NO ESTAN INVENTARIADAS NI ASIGNADAS) EN EMISIONES FECHA DE ULTIMA MODIFICACION: 08/NOV/90 MODIFICO: TECNOSYS (HECTOR LOZANO ZERME¦O)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', system: 'CASA DE BOLSA PROBURSA, SA DE CV.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB040D'})
SET n += {description: 'Programa COBOL que reflejar los costos estimados de recuperacion almacenados en cada operacion asignada en la emision.. Pertenece a: CASA DE BOLSA PROBURSA S.A. 03/OCT/90. /.', ingestion: 'auto', layer: 'program', name: 'COB040D', nodeType: 'program', objective: 'REFLEJAR LOS COSTOS ESTIMADOS DE RECUPERACION ALMACENADOS EN CADA OPERACION ASIGNADA EN LA EMISION.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', system: 'CASA DE BOLSA PROBURSA S.A. 03/OCT/90. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB055D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'COB055D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB056D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'COB056D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB100E'})
SET n += {description: 'Programa COBOL que cambia los saldos de las ta0 y ta1 de titulos. Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'program', name: 'COB100E', nodeType: 'program', objective: 'CAMBIA LOS SALDOS DE LAS TA0 Y TA1 DE TITULOS', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', system: 'CASA DE BOLSA PROBURSA, SA DE CV.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB153D'})
SET n += {description: 'Programa COBOL que actualizacion a futuros de tasas e indices.. Pertenece a: PROBURSA, S.A. DE C.V. FEB/96..', ingestion: 'auto', layer: 'program', name: 'COB153D', nodeType: 'program', objective: 'ACTUALIZACION A FUTUROS DE TASAS E INDICES.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', system: 'PROBURSA, S.A. DE C.V. FEB/96.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB156D'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROBURSA, S.A. DE C.V. MAR/96..', ingestion: 'auto', layer: 'program', name: 'COB156D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', system: 'PROBURSA, S.A. DE C.V. MAR/96.', viewTag: 'cobol-program'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB034D', name: 'COB034D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB034D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB034D', ingestion: 'auto', layer: 'functional', name: 'COB034D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB034D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB037E', name: 'COB037E_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB037E para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB037E', ingestion: 'auto', layer: 'functional', name: 'COB037E_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB037E.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB038D', name: 'COB038D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB038D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB038D', ingestion: 'auto', layer: 'functional', name: 'COB038D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB038D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB039D', name: 'COB039D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB039D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB039D', ingestion: 'auto', layer: 'functional', name: 'COB039D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB039D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB040D', name: 'COB040D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB040D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB040D', ingestion: 'auto', layer: 'functional', name: 'COB040D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB040D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB055D', name: 'COB055D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB055D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB055D', ingestion: 'auto', layer: 'functional', name: 'COB055D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB055D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB056D', name: 'COB056D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB056D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB056D', ingestion: 'auto', layer: 'functional', name: 'COB056D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB056D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB100E', name: 'COB100E_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB100E para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB100E', ingestion: 'auto', layer: 'functional', name: 'COB100E_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB100E.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB153D', name: 'COB153D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB153D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB153D', ingestion: 'auto', layer: 'functional', name: 'COB153D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB153D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB156D', name: 'COB156D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB156D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB156D', ingestion: 'auto', layer: 'functional', name: 'COB156D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d', sourceFile: 'src/COB156D.cbl', viewTag: 'functional'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '005-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '005-TASAS-PONDERADAS', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '010-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '010-DESLIZAMIENTO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '015-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '015-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '015-FECHA-DE-HOY', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '020-COSTO-RECUPERACION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '025-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '025-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '025-ABRE-CURSOR-PARAM', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '030-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '030-ABRE-CURSOR-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '035-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '035-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '035-PROCESA-REGISTRO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '040-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '040-COSTOS-PROMEDIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '045-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '045-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '045-COSTO-RECUPERACION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '050-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '050-COSTO-OPORTUNIDAD', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '055-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '055-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [595], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '055-TRAE-TASA-RECUPERACION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [564], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '060-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [631], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '060-TRAE-TASA-OPORTUNIDAD', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [598], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '065-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '065-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [674], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '065-ACTUALIZA-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [634], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '070-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '070-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '070-AISLADAS-NO-ASIGNADAS', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '075-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [728], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '075-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [755], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '075-DIAS-SIG-HABIL', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '080-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '080-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '080-COSTO-RECUPERACION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [758], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '500-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [787], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '510-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '510-LEE-PARAM', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '515-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [839], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '515-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '515-LEE-CURSOR-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [838], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [863], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '520-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [892], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '520-LEE-EMICOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [862], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [896], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '600-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [936], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '600-ACTUALIZA-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [918], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '610-ACTUALIZA-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [917], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [946], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [977], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [983], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [982], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'COB034D', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'FILE', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '000-INICIO', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '020-PROCESO', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '500-SELECCIONA-PARAM', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '600-ACT-PARAM', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'COB037E', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'FILE', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '020-ACTUA-OP-DEL-DIA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-0100-FECHOY', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-0200-FECHABIL', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-0300-EMISORA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-ACTUA-EMISION-LIQUIDA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '040-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '040-ELIMI-NOASIG-NOINVENT', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '600-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '600-OP-DEL-DIA-ASIGNADAS', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '610-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '610-OP-DEL-DIA-INVENTARIADAS', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '630-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '630-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '630-OP-DEL-DIA-NASI-NINV', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '640-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '640-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '640-OPERACIONES-QUE-LIQUIDAN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '650-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '650-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '650-MARCA-BAJA-OP-LMANANA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '660-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '660-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '660-VIGENTES-ASIGNADAS', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '670-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '670-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '670-VIGENTES-INVENTARIADAS', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '680-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '680-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '680-ELIMI-OP-LMANANA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '690-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [355], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '690-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '690-ELIMI-NOASIG-NOINVENT', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '695-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '695-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '695-RESET-COSTOS-PROMEDIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'COB038D', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'FILE', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '000-CONTROL', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '005-DECLARA-OPERCOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '010-INICIO', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '020-ACCESA-EMICOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '030-ACTUALIZA-EMICOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '040-CALCULOS-VTAS', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '050-CALCULOS-CPAS', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '060-INSERTA-EMICOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '070-ACTUALIZA-OPERCOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '510-LEE-OPERCOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '700-FIN', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '850-COMMIT-GRAL', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'COB039D', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'FILE', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'LINKAGE', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '000-INICIO', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '020-PROCESO', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '030-ACUMULA-COSTOS', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '040-PONDERA-ACUMULADOS', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '045-VERIFICA-DIVISOR', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '050-ACTUALIZA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '060-INICIALIZA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '500-SELECCIONA-OPERCOB', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '600-ACT-EMICOB', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'A020-COSTO-REC-VTA', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'COB040D', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'FILE', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: '000-0100-FECHA-HORA', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'COB055D', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'FILE', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '000-0100-FECHA-HORA', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [164], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'COB056D', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'FILE', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '000-CONTROL', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '010-SALDOS-TA0', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '020-SALDOS-TA1', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '500-LEE-PARAM', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '600-ACTUALIZA-PARAM', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '710-TERMINA', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'COB100E', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '000-010-CONTROL-GENERAL', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '100-INICIO', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '110-ABRE-CURSOR', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '200-PROCESO', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '250-CALCULA-CDIASVEN', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '300-CERRAR-CURSOR', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '500-LEE-OPECORI', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '600-ACTUALIZA', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '650-CUENTA-REGISTROS', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '700-BORRA', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '750-BUSCA-FECHA-HOY', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'COB153D', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'FILE', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '001-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '001-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '001-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '002-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '002-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '002-PROCESO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '003-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '003-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '003-TERMINA', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '005-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '005-INICIALIZA', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '020-PROCESA-FUTUROS', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '030-9900', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '030-ARMA-REGISTRO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '040-9900', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [542], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '040-ARMA-REGISTRO-GTIA', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [549], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '050-9900', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [562], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '050-GRABA-REGISTRO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [548], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '100-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '100-9900', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '100-GRABA-TASAS', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '200-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '200-9900', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '200-GRABA-INDICES', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [598], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '500-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '500-LEE-OPECORI', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [682], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '600-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '600-CHECA-CTLPROC', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '620-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '620-9900-TERMINA', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [722], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '620-ACTUALIZA-CTLPROC', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [704], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [736], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [744], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '990-0100-INICIA', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [760], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [750], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'ARCH-A2-INDICES', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'COB156D', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'FILE', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'S000-EDO-A2', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB034D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB034D', name: 'COB034D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB037E'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB037E', name: 'COB037E_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB038D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB038D', name: 'COB038D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB039D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB039D', name: 'COB039D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB040D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB040D', name: 'COB040D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB055D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB055D', name: 'COB055D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB056D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB056D', name: 'COB056D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB100E'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB100E', name: 'COB100E_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB153D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB153D', name: 'COB153D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB156D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB156D', name: 'COB156D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB034D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '020-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '025-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '065-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [644, 658, 672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '070-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [690, 705, 721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [825], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [912], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-9900-FIN', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [943], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB034D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'COB037E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '500-SELECCIONA-PARAM', programName: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-ACT-PARAM', programName: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [210, 223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB037E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB038D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '660-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '670-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '680-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '690-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '695-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '695-9900-FIN', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB038D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '005-DECLARA-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [132, 141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '020-ACCESA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '030-ACTUALIZA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '060-INSERTA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '070-ACTUALIZA-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '510-LEE-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '700-FIN', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '850-COMMIT-GRAL', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [398, 405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB039D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'COB040D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-ACT-EMICOB', programName: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [377, 390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB040D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB055D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [133, 139, 150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB055D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB055D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SICRF330'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [133, 139, 150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB056D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICRF330'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'COB100E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB100E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB100E'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-010-CONTROL-GENERAL', programName: 'COB153D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '110-ABRE-CURSOR', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '300-CERRAR-CURSOR', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '500-LEE-OPECORI', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '650-CUENTA-REGISTROS', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '700-BORRA', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '750-BUSCA-FECHA-HOY', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [384, 391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB153D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'COB156D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '001-0100-INICIO', programName: 'COB156D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [312, 321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'COB156D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [658, 669], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB156D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [698], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '620-9900-TERMINA', programName: 'COB156D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB156D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DPERJUR'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Functionality {name: 'FUNCTIONALITY_COB034D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Functionality {name: 'FUNCTIONALITY_COB037E'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Functionality {name: 'FUNCTIONALITY_COB038D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Functionality {name: 'FUNCTIONALITY_COB039D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Functionality {name: 'FUNCTIONALITY_COB040D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Functionality {name: 'FUNCTIONALITY_COB055D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Functionality {name: 'FUNCTIONALITY_COB056D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Functionality {name: 'FUNCTIONALITY_COB100E'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Functionality {name: 'FUNCTIONALITY_COB153D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Functionality {name: 'FUNCTIONALITY_COB156D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [943], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'SICRF330'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICRF330'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'DPERJUR'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [169, 170, 171, 172, 173, 174, 175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [340, 341, 342, 343, 344, 345, 357, 358, 359, 360, 361, 362, 363, 364, 365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [121, 122, 123, 124, 125, 126, 127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [332, 333, 334, 335, 336, 337, 338, 339, 340, 341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [155, 156, 157, 158, 159, 160, 161, 162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [147, 148, 149, 150, 151, 152, 153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 327, 328, 329, 330, 331, 332, 333, 334, 352, 353, 354, 355, 356, 357, 358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [372, 373, 374, 375, 376, 377, 378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [683, 684, 685, 686, 687, 688, 689, 690, 691], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB034D', name: 'COB034D_PROCESSING'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [983], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB037E', name: 'COB037E_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB037E'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB038D', name: 'COB038D_PROCESSING'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB039D', name: 'COB039D_PROCESSING'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB039D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB040D', name: 'COB040D_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB040D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB055D', name: 'COB055D_PROCESSING'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB055D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB056D', name: 'COB056D_PROCESSING'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB056D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB100E', name: 'COB100E_PROCESSING'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB100E'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB153D', name: 'COB153D_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB153D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB156D', name: 'COB156D_PROCESSING'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB156D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [760], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'OF'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB037E'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [198, 199, 200, 201, 202, 203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [340, 341, 342, 343, 344, 345, 357, 358, 359, 360, 361, 362, 363, 364, 365, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB038D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [245, 246, 247, 248, 249, 250, 251, 252, 253, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'OF'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [121, 122, 123, 124, 125, 126, 127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [338, 339, 340, 341, 342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB040D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [362, 363, 364, 365, 366, 367, 368, 369, 370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB055D'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB056D'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB100E'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [164, 165, 166, 167, 168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB153D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 352, 353, 354, 355, 356, 357, 358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Program {name: 'COB156D'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB034D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '020-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '025-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '065-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [644, 658, 672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '070-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [690, 705, 721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [825], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [912], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-9900-FIN', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [943], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB034D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'COB037E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '500-SELECCIONA-PARAM', programName: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-ACT-PARAM', programName: 'COB037E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [210, 223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB037E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [89], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB037E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB037E.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB038D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '660-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '670-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '680-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '690-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '695-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '695-9900-FIN', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB038D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '005-DECLARA-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [132, 141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '020-ACCESA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '030-ACTUALIZA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '060-INSERTA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '070-ACTUALIZA-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '510-LEE-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '700-FIN', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '850-COMMIT-GRAL', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [398, 405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB039D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'COB040D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-ACT-EMICOB', programName: 'COB040D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [377, 390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB040D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB040D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB040D.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB055D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [133, 139, 150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB055D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB055D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SICRF330'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB055D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB055D.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [133, 139, 150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0200-INSERTA-CTLPROC', programName: 'COB056D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB056D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICRF330'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB056D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB056D.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'COB100E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [184], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB100E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB100E'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB100E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB100E.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-010-CONTROL-GENERAL', programName: 'COB153D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '110-ABRE-CURSOR', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '300-CERRAR-CURSOR', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '500-LEE-OPECORI', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '650-CUENTA-REGISTROS', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '700-BORRA', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '750-BUSCA-FECHA-HOY', programName: 'COB153D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [384, 391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'COB153D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB153D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB153D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'COB156D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '001-0100-INICIO', programName: 'COB156D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [312, 321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'COB156D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [658, 669], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB156D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [698], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '620-9900-TERMINA', programName: 'COB156D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB156D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'DPERJUR'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB156D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB156D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205553Z-cob034d-cob037e-cob038d-cob039d-cob040d-cob055d-cob056d-cob100e-cob153d-cob156d'};

