// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [283], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEMICOB'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [255], ingestion: 'auto', layer: 'dependency', name: 'DEMICOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERCOB'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [248], ingestion: 'auto', layer: 'dependency', name: 'DOPERCOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [290], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DTIPCAMB'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [297], ingestion: 'auto', layer: 'dependency', name: 'DTIPCAMB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [1004], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [998], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [255], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [276], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC001'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [201], ingestion: 'auto', layer: 'dependency', name: 'SIC001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [713], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [147], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC231'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [171], ingestion: 'auto', layer: 'dependency', name: 'SIC231', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [234], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE028'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [755], ingestion: 'auto', layer: 'dependency', name: 'SICCE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [748], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [140], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [306], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [265], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICMF334'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [162], ingestion: 'auto', layer: 'dependency', name: 'SICMF334', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPAP70'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [304], ingestion: 'auto', layer: 'dependency', name: 'SICPAP70', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA0'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [413], ingestion: 'auto', layer: 'dependency', name: 'SICPATA0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA1'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [419], ingestion: 'auto', layer: 'dependency', name: 'SICPATA1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA5'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [76], ingestion: 'auto', layer: 'dependency', name: 'SICPATA5', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [181], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [154], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [241], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [992], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [241], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1689, 1690, 1691, 1692, 1693, 1694, 1695], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EMICOB'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [658, 659, 660, 661, 662, 663, 664, 665, 666, 667], ingestion: 'auto', layer: 'data-access', name: 'EMICOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERCOB'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [270, 271, 272, 273, 274, 275, 276, 277, 278, 279], ingestion: 'auto', layer: 'data-access', name: 'OPERCOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [918, 919, 920, 921, 922, 923], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'TIPCAMB'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [872, 873, 874, 875, 876, 877, 878, 879], ingestion: 'auto', layer: 'data-access', name: 'TIPCAMB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'data-access'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB005D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que genera un reporte con los asientos contables, obtiene primas y deslizamientos devengados del dia (compras y ventas). fecha de ultima modificacion: 08/ene/91 modifico: probursa (rosa alicia gomez palma) fecha ultima modificacion.: 13 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB005D', nodeType: 'business-function', objective: 'GENERA UN REPORTE CON LOS ASIENTOS CONTABLES, OBTIENE PRIMAS Y DESLIZAMIENTOS DEVENGADOS DEL DIA (COMPRAS Y VENTAS). FECHA DE ULTIMA MODIFICACION: 08/ENE/91 MODIFICO: PROBURSA (ROSA ALICIA GOMEZ PALMA) FECHA ULTIMA MODIFICACION.: 13 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB009D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que generar la poliza de diario de ventas de operaciones de coberturas cambiarias. fecha ultima modificacion.: 11 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA S.A. 13/SEP/90. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB009D', nodeType: 'business-function', objective: 'GENERAR LA POLIZA DE DIARIO DE VENTAS DE OPERACIONES DE COBERTURAS CAMBIARIAS. FECHA ULTIMA MODIFICACION.: 11 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB010D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que generar la poliza de diario de ventas de operaciones de coberturas cambiarias. fecha ultima modificacion.: 11 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA S.A. 21/SEP/90. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB010D', nodeType: 'business-function', objective: 'GENERAR LA POLIZA DE DIARIO DE VENTAS DE OPERACIONES DE COBERTURAS CAMBIARIAS. FECHA ULTIMA MODIFICACION.: 11 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB012D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que generar la poliza de diario de ventas de operaciones de coberturas cambiarias. fecha ultima modificacion.: 11 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA S.A. 24/SEP/90. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB012D', nodeType: 'business-function', objective: 'GENERAR LA POLIZA DE DIARIO DE VENTAS DE OPERACIONES DE COBERTURAS CAMBIARIAS. FECHA ULTIMA MODIFICACION.: 11 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB013M'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que genera un reporte con los asientos contables, obtiene primas y deslizamientos devengados del dia (compras y ventas). fecha de ultima modificacion: 15/ene/91 modifico: probursa (carlos a. gutierrez g.) fecha ultima modificacion.: 13 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB013M', nodeType: 'business-function', objective: 'GENERA UN REPORTE CON LOS ASIENTOS CONTABLES, OBTIENE PRIMAS Y DESLIZAMIENTOS DEVENGADOS DEL DIA (COMPRAS Y VENTAS). FECHA DE ULTIMA MODIFICACION: 15/ENE/91 MODIFICO: PROBURSA (CARLOS A. GUTIERREZ G.) FECHA ULTIMA MODIFICACION.: 13 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB017D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB017D', nodeType: 'business-function', objective: 'Capacidad funcional principal de CIB017D.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB026B'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que mostrar al area de coberturas cambiarias la posicion generada por las operaciones del dia. fecha ultima modificacion: probursa (carlos a. gutierrez g) modifico: 15/ene/91 fecha ultima modificacion.: 13 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola) motivo....................: obtener dos reportes en lugar lugar de uno, de acuerdo al tipo de dolar: reporte para dolar libre reporte para dolar controlado. ultima modificacion: ddemesis (ing. ricardo rubio pacheco) fecha modificacion : 03 / abril / 92 razon de cambio : aumentar columnas al reporte y cambiar la informacion de posicion. Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB026B', nodeType: 'business-function', objective: 'MOSTRAR AL AREA DE COBERTURAS CAMBIARIAS LA POSICION GENERADA POR LAS OPERACIONES DEL DIA. FECHA ULTIMA MODIFICACION: PROBURSA (CARLOS A. GUTIERREZ G) MODIFICO: 15/ENE/91 FECHA ULTIMA MODIFICACION.: 13 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA) MOTIVO....................: OBTENER DOS REPORTES EN LUGAR LUGAR DE UNO, DE ACUERDO AL TIPO DE DOLAR: REPORTE PARA DOLAR LIBRE REPORTE PARA DOLAR CONTROLADO. ULTIMA MODIFICACION: DDEMESIS (ING. RICARDO RUBIO PACHECO) FECHA MODIFICACION : 03 / ABRIL / 92 RAZON DE CAMBIO : AUMENTAR COLUMNAS AL REPORTE Y CAMBIAR LA INFORMACION DE POSICION', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB028E'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que mostrar las emisoras que se encuentran asignadas indicando los saldos por emisora.. Pertenece a: CASA DE BOLSA PROBURSA S.A. 26/SEP/90. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB028E', nodeType: 'business-function', objective: 'MOSTRAR LAS EMISORAS QUE SE ENCUENTRAN ASIGNADAS INDICANDO LOS SALDOS POR EMISORA.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB030E'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que genera un reporte para el area de coberturas cambiarias, mostrando las operaciones que se encuentran libres de asignacion ( descubier- tas ), originadas por el vencimiento de las emisiones con las que se encontraban asigna- das.. Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB030E', nodeType: 'business-function', objective: 'GENERA UN REPORTE PARA EL AREA DE COBERTURAS CAMBIARIAS, MOSTRANDO LAS OPERACIONES QUE SE ENCUENTRAN LIBRES DE ASIGNACION ( DESCUBIER- TAS ), ORIGINADAS POR EL VENCIMIENTO DE LAS EMISIONES CON LAS QUE SE ENCONTRABAN ASIGNA- DAS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB035E'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROBURSA, S.A. DE C.V. 02/OCT/90. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB035E', nodeType: 'business-function', objective: 'Capacidad funcional principal de CIB035E.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'functional'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [513], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [612], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-ABRE-CURSR', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-DECLARA-CURSORES', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [588], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-DECLARA-CURSORES', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-CALCULOS', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [638], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-CALCULOS', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-MUEVE-A-IMPRESION', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [816], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-MUEVE-A-IMPRESION', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-IMPRIME', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [958], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-IMPRIME', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1017], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACTUALIZA-PARAM-TA0', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Persiste actualizaciones de negocio en CIB005D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1037], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-DATOS-TA0', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB005D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1056], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-DATOS-TA1', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB005D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-MUEVE-DATOS-TA0', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1072], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-MUEVE-DATOS-TA0', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-MUEVE-DATOS-TA1', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1075], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-MUEVE-DATOS-TA1', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1086], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-CIERRA-CURSORES', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Cierra la ejecucion de CIB005D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-TERMINA', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1109], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-TERMINA', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Cierra la ejecucion de CIB005D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1121], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Gestiona contingencias en CIB005D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CALCLA-SALDO-COMPRAS', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [705], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CALCLA-SALDO-COMPRAS', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CALCLA-SALDO-VENTAS', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [760], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CALCLA-SALDO-VENTAS', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB005D', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB005D', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [29], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [44], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [36], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'GENERA-REPORTE', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [571], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'GENERA-REPORTE', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [33], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INCLZA-ACMLDOS', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [547], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INCLZA-ACMLDOS', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [35], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [507], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [32], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [531], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REPORTE', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROLGO-PROCESO', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [523], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROLGO-PROCESO', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [30], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W000-DOLAR', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [541], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W000-DOLAR', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W000-SALDO-04', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [756], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W000-SALDO-04', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W000-SALDO-10', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [810], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W000-SALDO-10', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'})
SET n += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [55], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB005D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', summary: 'Orquesta una fase funcional de CIB005D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [338], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Inicializa el flujo operativo de CIB009D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [349], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Inicializa el flujo operativo de CIB009D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [389], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESO-DESGLOZADO', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [411], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESO-DESGLOZADO', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACUMULA-TOTALES', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [554], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACUMULA-TOTALES', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-VERIFICA-SALDO', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [575], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-VERIFICA-SALDO', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-IMPRIME-REGISTRO', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [594], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-IMPRIME-REGISTRO', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-VACIA-TABLA', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [609], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-VACIA-TABLA', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [634], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-SELECCIONA-PARAM', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ENCABEZADO', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [663], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ENCABEZADO', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-IMPRIME-TOTALES', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [678], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-IMPRIME-TOTALES', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-IMPRIME-CTAS-SIN-MVTOS', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [713], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-IMPRIME-CTAS-SIN-MVTOS', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [728], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Gestiona contingencias en CIB009D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [739], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB009D', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB009D', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [23], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [36], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [27], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [26], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [375], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REPORTE', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-SALDO', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [524], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-SALDO', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [24], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'})
SET n += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [43], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB009D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', summary: 'Orquesta una fase funcional de CIB009D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [338], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Inicializa el flujo operativo de CIB010D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [349], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Inicializa el flujo operativo de CIB010D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [390], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESO-DESGLOZADO', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [412], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESO-DESGLOZADO', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACUMULA-TOTALES', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [554], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACUMULA-TOTALES', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-VERIFICA-SALDO', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [575], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-VERIFICA-SALDO', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-IMPRIME-REGISTRO', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [594], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-IMPRIME-REGISTRO', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-VACIA-TABLA', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [609], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-VACIA-TABLA', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [634], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-SELECCIONA-PARAM', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ENCABEZADO', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [663], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ENCABEZADO', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-IMPRIME-TOTALES', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [678], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-IMPRIME-TOTALES', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-IMPRIME-CTAS-SIN-MVTOS', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [714], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-IMPRIME-CTAS-SIN-MVTOS', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [729], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Gestiona contingencias en CIB010D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [739], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB010D', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB010D', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [23], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [36], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [27], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [26], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [375], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REPORTE', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [24], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'VALIDA-SALDOS', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [525], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'VALIDA-SALDOS', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'})
SET n += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [43], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB010D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', summary: 'Orquesta una fase funcional de CIB010D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [338], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Inicializa el flujo operativo de CIB012D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [349], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Inicializa el flujo operativo de CIB012D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [390], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESO-DESGLOZADO', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [410], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESO-DESGLOZADO', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACUMULA-TOTALES', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [432], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACUMULA-TOTALES', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-VERIFICA-SALDO', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [457], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-VERIFICA-SALDO', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-IMPRIME-REGISTRO', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [472], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-IMPRIME-REGISTRO', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-VACIA-TABLA', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [479], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-VACIA-TABLA', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [504], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-SELECCIONA-PARAM', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ENCABEZADO', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [533], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ENCABEZADO', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-IMPRIME-TOTALES', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [548], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-IMPRIME-TOTALES', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-IMPRIME-CTAS-SIN-MVTOS', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [583], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-IMPRIME-CTAS-SIN-MVTOS', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [599], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Gestiona contingencias en CIB012D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [609], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB012D', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB012D', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [23], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [36], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [27], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [26], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [375], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCESA-REPORTE', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [24], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'})
SET n += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [43], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB012D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', summary: 'Orquesta una fase funcional de CIB012D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [535], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [619], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-ABRE-CURSR', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-DECLARA-CURSOR', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [595], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-DECLARA-CURSOR', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-CALCULOS', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [646], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-CALCULOS', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-MUEVE-A-IMPRESION', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [804], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-MUEVE-A-IMPRESION', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-IMPRIME', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [936], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-IMPRIME', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [994], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACTUALIZA-PARAM-TA0', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Persiste actualizaciones de negocio en CIB013M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-ACTUALIZA-PARAM-TA1', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1016], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-ACTUALIZA-PARAM-TA1', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Persiste actualizaciones de negocio en CIB013M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1047], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-DATOS-TA0', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB013M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1066], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-DATOS-TA1', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB013M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-MUEVE-DATOS-TA0', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1083], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-MUEVE-DATOS-TA0', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-MUEVE-DATOS-TA1', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1087], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-MUEVE-DATOS-TA1', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-ACT-SDO-MESANT', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1095], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-ACT-SDO-MESANT', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1105], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-CIERRA-CURSORES', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Cierra la ejecucion de CIB013M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-TERMINA', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1128], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-TERMINA', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Cierra la ejecucion de CIB013M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1140], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Gestiona contingencias en CIB013M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB013M', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB013M', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [28], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [43], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [35], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'GENERA-REPORTE', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [569], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'GENERA-REPORTE', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [32], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [34], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [529], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [31], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCSA-REPRTE-DOLR-CONTRLDO', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [549], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCSA-REPRTE-DOLR-CONTRLDO', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROCSA-REPRTE-DOLR-LIBRE', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [559], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROCSA-REPRTE-DOLR-LIBRE', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [29], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'})
SET n += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [54], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB013M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', summary: 'Orquesta una fase funcional de CIB013M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [535], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-PROCESA-COMPRAS', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [551], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-PROCESA-COMPRAS', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0300-PROCESA-VENTAS', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [558], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0300-PROCESA-VENTAS', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0400-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [572], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0400-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [576], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0050-ABRE-CURSOR', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-LIMPIA-ACUMULADORES', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [589], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-LIMPIA-ACUMULADORES', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0200-VENCE-HOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [615], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0200-VENCE-HOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0300-VENCE-MANANA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [641], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0300-VENCE-MANANA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0400-OPERACION', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [647], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0400-OPERACION', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0450-ABRE-ARCHIVO-OPHOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [652], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0450-ABRE-ARCHIVO-OPHOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0500-OPERA-HOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [689], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0500-OPERA-HOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0600-IMPRIME-TOTALES', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [702], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0600-IMPRIME-TOTALES', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [704], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [575], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-FECHOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [708], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-FECHOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0200-FECHABIL-MANANA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [713], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0200-FECHABIL-MANANA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [727], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-FECHA-HOY-MANANA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [707], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-FECHA-HOY-MANANA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-INICIALIZA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [534], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0200-FECHABIL-AYER', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [734], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0200-FECHABIL-AYER', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [748], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-FECHA-HOY-AYER', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [730], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-FECHA-HOY-AYER', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [752], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0200-SUMA-VENCE-HOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [754], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0200-SUMA-VENCE-HOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [768], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-VENCE-HOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [751], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-VENCE-HOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [772], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0200-SUMA-VENCE-MANANA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [774], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0200-SUMA-VENCE-MANANA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0300-SUMA-VENCE-HOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [760], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0300-SUMA-VENCE-HOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0300-SUMA-VENCE-MANANA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [780], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0300-SUMA-VENCE-MANANA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [788], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-VENCE-MANANA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [771], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-VENCE-MANANA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0200-SUMA-OPERACION', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [793], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0200-SUMA-OPERACION', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0300-SUMA-OPERACION', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [799], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0300-SUMA-OPERACION', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [807], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-OPERACION', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [791], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-OPERACION', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0200-SUMA-OPERA-HOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [812], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0200-SUMA-OPERA-HOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0300-SUMA-OPERA-HOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [818], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0300-SUMA-OPERA-HOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [826], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-OPERA-HOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [810], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-OPERA-HOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-SUMA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [830], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-SUMA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0200-ARMA-TOTALES', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [849], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0200-ARMA-TOTALES', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0300-IMPRIME', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [929], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0300-IMPRIME', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [946], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-IMPRIME-TOTALES', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [829], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-IMPRIME-TOTALES', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-0100-ARMA-PARCIAL', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [950], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-0100-ARMA-PARCIAL', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-0200-IMPRIME', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1028], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-0200-IMPRIME', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1040], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-IMPRIME-PARCIAL', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [949], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-IMPRIME-PARCIAL', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1044], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1185], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-ARMA-DETALLE', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1043], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-ARMA-DETALLE', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1189], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1200], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-IMPRIME-DETALLE', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1188], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-IMPRIME-DETALLE', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1204], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1213], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-GUARDA-ACUMULADORES', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1203], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-GUARDA-ACUMULADORES', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0000-ACTUALIZA-TA1', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1217], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0000-ACTUALIZA-TA1', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Persiste actualizaciones de negocio en CIB017D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0100-SALDO-01', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1222], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0100-SALDO-01', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0100-SALDO-07', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1335], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0100-SALDO-07', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0200-SALDO-02', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1227], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0200-SALDO-02', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0200-SALDO-08', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1340], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0200-SALDO-08', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0300-SALDO-03', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1232], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0300-SALDO-03', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0300-SALDO-09', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1345], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0300-SALDO-09', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0400-SALDO-04', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1278], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0400-SALDO-04', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0500-SALDO-05', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1325], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0500-SALDO-05', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0600-SALDO-06', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1330], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0600-SALDO-06', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-1000-SALDO-10', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1391], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-1000-SALDO-10', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-1100-SALDO-11', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1436], executionOrder: 9100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-1100-SALDO-11', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-1200-SALDO-12', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1441], executionOrder: 9200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-1200-SALDO-12', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1446], executionOrder: 9300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-ACTUALIZA-PARAM', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1216], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-ACTUALIZA-PARAM', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Persiste actualizaciones de negocio en CIB017D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-CHECA-CTLPROC', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1686], executionOrder: 12000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-CHECA-CTLPROC', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-CHECA-CTLPROC1', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1688], executionOrder: 12100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-CHECA-CTLPROC1', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1705], executionOrder: 12200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1450], executionOrder: 9500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1473], executionOrder: 9600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-ESCRIBE-PARAM', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1449], executionOrder: 9400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-ESCRIBE-PARAM', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1480], executionOrder: 9800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1503], executionOrder: 9900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-PARAM', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1479], executionOrder: 9700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-PARAM', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB017D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1510], executionOrder: 10100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1536], executionOrder: 10200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1509], executionOrder: 10000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERCOB', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB017D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1540], executionOrder: 10400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1566], executionOrder: 10500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-OPERCOB-OPERA-HOY', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1539], executionOrder: 10300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-OPERCOB-OPERA-HOY', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB017D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1571], executionOrder: 10700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1595], executionOrder: 10800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1570], executionOrder: 10600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB017D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1600], executionOrder: 11000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1612], executionOrder: 11100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-SALDOS', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1599], executionOrder: 10900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-SALDOS', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Persiste actualizaciones de negocio en CIB017D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1616], executionOrder: 11300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1643], executionOrder: 11400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ESC-ENCA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1615], executionOrder: 11200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ESC-ENCA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1654], executionOrder: 11600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Inicializa el flujo operativo de CIB017D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1675], executionOrder: 11700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1653], executionOrder: 11500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Gestiona contingencias en CIB017D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1682], executionOrder: 11900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Cierra la ejecucion de CIB017D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1681], executionOrder: 11800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'A070-PPOR-DEVENGAR', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [687], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'A070-PPOR-DEVENGAR', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [486], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ABRE-ARCHIVOS', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB017D', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB017D', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [48], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [492], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DECLRA-CURSR', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [65], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [55], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [52], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [54], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [51], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBTN-FECHA-PROCSO', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [524], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBTN-FECHA-PROCSO', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [49], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'})
SET n += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [81], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB017D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', summary: 'Orquesta una fase funcional de CIB017D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-FECHA-HOY', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [337], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-FECHA-HOY', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '006-PROCSA-REPRTE', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [357], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '006-PROCSA-REPRTE', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '008-POSICION-AYER', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [392], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '008-POSICION-AYER', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-PROCESO', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [420], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-PROCESO', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-ESCRIBE-DATO', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [426], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-ESCRIBE-DATO', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '018-TOTAL', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [654], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '018-TOTAL', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-CORTA-HOJA', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [687], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-CORTA-HOJA', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-CONTROLA-TITULOS', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [693], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-CONTROLA-TITULOS', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-IMPRIME-PLAZO', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [708], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-IMPRIME-PLAZO', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-IMPRIME-RENGLON', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [718], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-IMPRIME-RENGLON', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-IMPRIME-TOTAL', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [746], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-IMPRIME-TOTAL', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-IMPRIME-TOTAL1', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [766], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-IMPRIME-TOTAL1', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-INCLZA-TOTLS', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [371], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-INCLZA-TOTLS', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '501-DECLRA-CURSR', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [772], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '501-DECLRA-CURSR', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-ABRE-CURSR', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [796], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-ABRE-CURSR', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '503-PROCSA-TIPO-DOLR', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [379], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '503-PROCSA-TIPO-DOLR', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [811], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERCOB', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB026B y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-TIPO-CAMBIO', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [865], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB026B y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-CIERRA-CURSOR', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [901], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-CIERRA-CURSOR', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Cierra la ejecucion de CIB026B, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-GRABA-POSICION', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [915], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-GRABA-POSICION', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Persiste actualizaciones de negocio en CIB026B, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-TERMINA', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [977], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-TERMINA', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Cierra la ejecucion de CIB026B, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [989], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Gestiona contingencias en CIB026B, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'A990-CIF-CTL', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [375], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'A990-CIF-CTL', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CHECA-DECREMENTO', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [940], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CHECA-DECREMENTO', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB026B', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB026B', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [45], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DH-FECHA-INICIAL', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [353], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DH-FECHA-INICIAL', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Inicializa el flujo operativo de CIB026B, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [60], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [52], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [49], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [51], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [48], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [46], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'})
SET n += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [71], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB026B', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', summary: 'Orquesta una fase funcional de CIB026B, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [302], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Inicializa el flujo operativo de CIB028E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [312], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Inicializa el flujo operativo de CIB028E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [356], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-PROCESA-IEMICOB', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [361], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-PROCESA-IEMICOB', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PREGUNTA-ITIPOPE', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [404], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PREGUNTA-ITIPOPE', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-PROCESA-DETALLE', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [425], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-PROCESA-DETALLE', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-POSICION-COMPRAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [458], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-POSICION-COMPRAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-POSICION-VENTAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [470], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-POSICION-VENTAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-MUEVE-EMICOB', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [485], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-MUEVE-EMICOB', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-SELECCIONA-OPERCOB', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [496], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-SELECCIONA-OPERCOB', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [516], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-SELECCIONA-EMICOB', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ENCABEZADO', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [546], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ENCABEZADO', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [555], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-ENCABEZADO-COMPRAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [558], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-ENCABEZADO-COMPRAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-ENCABEZADO-VENTAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [563], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-ENCABEZADO-VENTAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOTALES-COMPRAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [568], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOTALES-COMPRAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '740-TOTALES-VENTAS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [576], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '740-TOTALES-VENTAS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-TOTALES-SALDOS', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [582], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-TOTALES-SALDOS', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-FINALIZA', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [587], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-FINALIZA', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Cierra la ejecucion de CIB028E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [636], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Gestiona contingencias en CIB028E, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [650], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB028E', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB028E', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [17], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [30], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [23], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [21], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [22], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [20], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [18], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'})
SET n += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [37], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB028E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', summary: 'Orquesta una fase funcional de CIB028E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [240], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Inicializa el flujo operativo de CIB030E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [286], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Inicializa el flujo operativo de CIB030E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [326], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-PLAZO-1', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [348], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-PLAZO-1', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PLAZO-2', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [381], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PLAZO-2', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-PLAZO-3', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [416], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-PLAZO-3', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ARMA-DETALLE', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [448], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ARMA-DETALLE', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [504], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERCOB', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB030E y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ESC-ENCA', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [526], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ESC-ENCA', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [548], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Gestiona contingencias en CIB030E, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [567], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB030E', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB030E', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [21], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [35], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [28], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [25], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [27], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [24], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [22], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'})
SET n += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [45], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB030E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', summary: 'Orquesta una fase funcional de CIB030E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-INICIO', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [283], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-INICIO', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Inicializa el flujo operativo de CIB035E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIALIZA-1', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [312], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIALIZA-1', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Inicializa el flujo operativo de CIB035E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO-1', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [343], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO-1', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-DIAS-POR-CUBRIR', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [364], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-DIAS-POR-CUBRIR', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-CLASIFICACION', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [404], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-CLASIFICACION', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-INICIALIZA-2', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [414], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-INICIALIZA-2', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Inicializa el flujo operativo de CIB035E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROCESO-2', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [450], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROCESO-2', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-CORTE', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [461], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-CORTE', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-REGISTRO', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [495], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-REGISTRO', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-ARMA', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [517], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-ARMA', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-IMPRIME', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [544], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-IMPRIME', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-ENCA', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [555], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-ENCA', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR-OPERCOB', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [576], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR-OPERCOB', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB035E y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-CURSOR-EMICOB', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [602], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-CURSOR-EMICOB', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB035E y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-TEMPORAL', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [633], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-TEMPORAL', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB035E y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-UPDATE-CURSOR-EMICOB', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [657], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-UPDATE-CURSOR-EMICOB', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900-FINALIZA-1', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [679], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900-FINALIZA-1', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Cierra la ejecucion de CIB035E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '910-FINALIZA-2', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [698], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '910-FINALIZA-2', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Cierra la ejecucion de CIB035E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [719], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Gestiona contingencias en CIB035E, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [733], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB035E', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB035E', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [18], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [37], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [25], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [22], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [24], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [21], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [19], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'})
SET n += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [83], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB035E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', summary: 'Orquesta una fase funcional de CIB035E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB005D'})
SET n += {description: 'Programa COBOL que genera un reporte con los asientos contables, obtiene primas y deslizamientos devengados del dia (compras y ventas). fecha de ultima modificacion: 08/ene/91 modifico: probursa (rosa alicia gomez palma) fecha ultima modificacion.: 13 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'program', name: 'CIB005D', nodeType: 'program', objective: 'GENERA UN REPORTE CON LOS ASIENTOS CONTABLES, OBTIENE PRIMAS Y DESLIZAMIENTOS DEVENGADOS DEL DIA (COMPRAS Y VENTAS). FECHA DE ULTIMA MODIFICACION: 08/ENE/91 MODIFICO: PROBURSA (ROSA ALICIA GOMEZ PALMA) FECHA ULTIMA MODIFICACION.: 13 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', system: 'CASA DE BOLSA PROBURSA, SA DE CV.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB009D'})
SET n += {description: 'Programa COBOL que generar la poliza de diario de ventas de operaciones de coberturas cambiarias. fecha ultima modificacion.: 11 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA S.A. 13/SEP/90. /.', ingestion: 'auto', layer: 'program', name: 'CIB009D', nodeType: 'program', objective: 'GENERAR LA POLIZA DE DIARIO DE VENTAS DE OPERACIONES DE COBERTURAS CAMBIARIAS. FECHA ULTIMA MODIFICACION.: 11 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', system: 'CASA DE BOLSA PROBURSA S.A. 13/SEP/90. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB010D'})
SET n += {description: 'Programa COBOL que generar la poliza de diario de ventas de operaciones de coberturas cambiarias. fecha ultima modificacion.: 11 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA S.A. 21/SEP/90. /.', ingestion: 'auto', layer: 'program', name: 'CIB010D', nodeType: 'program', objective: 'GENERAR LA POLIZA DE DIARIO DE VENTAS DE OPERACIONES DE COBERTURAS CAMBIARIAS. FECHA ULTIMA MODIFICACION.: 11 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', system: 'CASA DE BOLSA PROBURSA S.A. 21/SEP/90. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB012D'})
SET n += {description: 'Programa COBOL que generar la poliza de diario de ventas de operaciones de coberturas cambiarias. fecha ultima modificacion.: 11 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA S.A. 24/SEP/90. /.', ingestion: 'auto', layer: 'program', name: 'CIB012D', nodeType: 'program', objective: 'GENERAR LA POLIZA DE DIARIO DE VENTAS DE OPERACIONES DE COBERTURAS CAMBIARIAS. FECHA ULTIMA MODIFICACION.: 11 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', system: 'CASA DE BOLSA PROBURSA S.A. 24/SEP/90. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB013M'})
SET n += {description: 'Programa COBOL que genera un reporte con los asientos contables, obtiene primas y deslizamientos devengados del dia (compras y ventas). fecha de ultima modificacion: 15/ene/91 modifico: probursa (carlos a. gutierrez g.) fecha ultima modificacion.: 13 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola). Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'program', name: 'CIB013M', nodeType: 'program', objective: 'GENERA UN REPORTE CON LOS ASIENTOS CONTABLES, OBTIENE PRIMAS Y DESLIZAMIENTOS DEVENGADOS DEL DIA (COMPRAS Y VENTAS). FECHA DE ULTIMA MODIFICACION: 15/ENE/91 MODIFICO: PROBURSA (CARLOS A. GUTIERREZ G.) FECHA ULTIMA MODIFICACION.: 13 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', system: 'CASA DE BOLSA PROBURSA, SA DE CV.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB017D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'CIB017D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB026B'})
SET n += {description: 'Programa COBOL que mostrar al area de coberturas cambiarias la posicion generada por las operaciones del dia. fecha ultima modificacion: probursa (carlos a. gutierrez g) modifico: 15/ene/91 fecha ultima modificacion.: 13 de septiembre de 1991. modificado por............: tecnosys (enrique garcia gaxiola) motivo....................: obtener dos reportes en lugar lugar de uno, de acuerdo al tipo de dolar: reporte para dolar libre reporte para dolar controlado. ultima modificacion: ddemesis (ing. ricardo rubio pacheco) fecha modificacion : 03 / abril / 92 razon de cambio : aumentar columnas al reporte y cambiar la informacion de posicion. Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'program', name: 'CIB026B', nodeType: 'program', objective: 'MOSTRAR AL AREA DE COBERTURAS CAMBIARIAS LA POSICION GENERADA POR LAS OPERACIONES DEL DIA. FECHA ULTIMA MODIFICACION: PROBURSA (CARLOS A. GUTIERREZ G) MODIFICO: 15/ENE/91 FECHA ULTIMA MODIFICACION.: 13 DE SEPTIEMBRE DE 1991. MODIFICADO POR............: TECNOSYS (ENRIQUE GARCIA GAXIOLA) MOTIVO....................: OBTENER DOS REPORTES EN LUGAR LUGAR DE UNO, DE ACUERDO AL TIPO DE DOLAR: REPORTE PARA DOLAR LIBRE REPORTE PARA DOLAR CONTROLADO. ULTIMA MODIFICACION: DDEMESIS (ING. RICARDO RUBIO PACHECO) FECHA MODIFICACION : 03 / ABRIL / 92 RAZON DE CAMBIO : AUMENTAR COLUMNAS AL REPORTE Y CAMBIAR LA INFORMACION DE POSICION', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', system: 'CASA DE BOLSA PROBURSA, SA DE CV.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB028E'})
SET n += {description: 'Programa COBOL que mostrar las emisoras que se encuentran asignadas indicando los saldos por emisora.. Pertenece a: CASA DE BOLSA PROBURSA S.A. 26/SEP/90. /.', ingestion: 'auto', layer: 'program', name: 'CIB028E', nodeType: 'program', objective: 'MOSTRAR LAS EMISORAS QUE SE ENCUENTRAN ASIGNADAS INDICANDO LOS SALDOS POR EMISORA.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', system: 'CASA DE BOLSA PROBURSA S.A. 26/SEP/90. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB030E'})
SET n += {description: 'Programa COBOL que genera un reporte para el area de coberturas cambiarias, mostrando las operaciones que se encuentran libres de asignacion ( descubier- tas ), originadas por el vencimiento de las emisiones con las que se encontraban asigna- das.. Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'program', name: 'CIB030E', nodeType: 'program', objective: 'GENERA UN REPORTE PARA EL AREA DE COBERTURAS CAMBIARIAS, MOSTRANDO LAS OPERACIONES QUE SE ENCUENTRAN LIBRES DE ASIGNACION ( DESCUBIER- TAS ), ORIGINADAS POR EL VENCIMIENTO DE LAS EMISIONES CON LAS QUE SE ENCONTRABAN ASIGNA- DAS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', system: 'CASA DE BOLSA PROBURSA, SA DE CV.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB035E'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROBURSA, S.A. DE C.V. 02/OCT/90. /.', ingestion: 'auto', layer: 'program', name: 'CIB035E', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', system: 'PROBURSA, S.A. DE C.V. 02/OCT/90. /', viewTag: 'cobol-program'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB005D', name: 'CIB005D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB005D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB005D', ingestion: 'auto', layer: 'functional', name: 'CIB005D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB005D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB009D', name: 'CIB009D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB009D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB009D', ingestion: 'auto', layer: 'functional', name: 'CIB009D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB009D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB010D', name: 'CIB010D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB010D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB010D', ingestion: 'auto', layer: 'functional', name: 'CIB010D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB010D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB012D', name: 'CIB012D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB012D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB012D', ingestion: 'auto', layer: 'functional', name: 'CIB012D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB012D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB013M', name: 'CIB013M_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB013M para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB013M', ingestion: 'auto', layer: 'functional', name: 'CIB013M_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB013M.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB017D', name: 'CIB017D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB017D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB017D', ingestion: 'auto', layer: 'functional', name: 'CIB017D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB017D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB026B', name: 'CIB026B_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB026B para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB026B', ingestion: 'auto', layer: 'functional', name: 'CIB026B_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB026B.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB028E', name: 'CIB028E_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB028E para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB028E', ingestion: 'auto', layer: 'functional', name: 'CIB028E_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB028E.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB030E', name: 'CIB030E_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB030E para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB030E', ingestion: 'auto', layer: 'functional', name: 'CIB030E_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB030E.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB035E', name: 'CIB035E_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB035E para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB035E', ingestion: 'auto', layer: 'functional', name: 'CIB035E_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e', sourceFile: 'src/CIB035E.cbl', viewTag: 'functional'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [513], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [612], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '005-DECLARA-CURSORES', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '010-CALCULOS', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '020-MUEVE-A-IMPRESION', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [816], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '030-IMPRIME', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [958], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1017], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1037], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1056], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '510-MUEVE-DATOS-TA0', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1072], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '510-MUEVE-DATOS-TA1', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1075], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1086], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '710-TERMINA', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'CALCLA-SALDO-COMPRAS', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'CALCLA-SALDO-VENTAS', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [760], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'CIB005D', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'FILE', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'GENERA-REPORTE', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'INCLZA-ACMLDOS', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'LINKAGE', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [531], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'PROLGO-PROCESO', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'W000-DOLAR', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'W000-SALDO-04', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [756], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'W000-SALDO-10', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [810], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '000-INICIO', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '020-PROCESO', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '030-PROCESO-DESGLOZADO', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '040-ACUMULA-TOTALES', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '050-VERIFICA-SALDO', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [575], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '060-IMPRIME-REGISTRO', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '070-VACIA-TABLA', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [634], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '700-ENCABEZADO', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [663], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '800-IMPRIME-TOTALES', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '810-IMPRIME-CTAS-SIN-MVTOS', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [713], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [728], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [739], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'CIB009D', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'FILE', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'PROCESA-SALDO', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '000-INICIO', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '020-PROCESO', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '030-PROCESO-DESGLOZADO', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '040-ACUMULA-TOTALES', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '050-VERIFICA-SALDO', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [575], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '060-IMPRIME-REGISTRO', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '070-VACIA-TABLA', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [634], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '700-ENCABEZADO', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [663], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '800-IMPRIME-TOTALES', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '810-IMPRIME-CTAS-SIN-MVTOS', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [739], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'CIB010D', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'FILE', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'VALIDA-SALDOS', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [525], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '000-INICIO', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '020-PROCESO', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '030-PROCESO-DESGLOZADO', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '040-ACUMULA-TOTALES', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '050-VERIFICA-SALDO', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '060-IMPRIME-REGISTRO', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [472], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '070-VACIA-TABLA', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '700-ENCABEZADO', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [533], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '800-IMPRIME-TOTALES', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [548], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '810-IMPRIME-CTAS-SIN-MVTOS', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [583], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'CIB012D', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'FILE', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [619], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '005-DECLARA-CURSOR', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [595], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '010-CALCULOS', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '020-MUEVE-A-IMPRESION', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '030-IMPRIME', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [936], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [994], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '050-ACTUALIZA-PARAM-TA1', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1016], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1066], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '510-MUEVE-DATOS-TA0', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1083], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '510-MUEVE-DATOS-TA1', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1087], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '550-ACT-SDO-MESANT', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1095], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '710-TERMINA', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'CIB013M', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'FILE', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'GENERA-REPORTE', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'LINKAGE', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'PROCSA-REPRTE-DOLR-CONTRLDO', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [549], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'PROCSA-REPRTE-DOLR-LIBRE', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '000-0200-PROCESA-COMPRAS', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [551], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '000-0300-PROCESA-VENTAS', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '000-0400-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [572], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [576], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-0100-LIMPIA-ACUMULADORES', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-0200-VENCE-HOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-0300-VENCE-MANANA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [641], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-0400-OPERACION', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-0450-ABRE-ARCHIVO-OPHOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-0500-OPERA-HOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [689], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-0600-IMPRIME-TOTALES', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [704], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [575], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '010-0100-FECHOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '010-0200-FECHABIL-MANANA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [713], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '010-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '010-FECHA-HOY-MANANA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [707], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '0100-INICIALIZA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [534], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '015-0200-FECHABIL-AYER', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [734], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '015-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [748], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '015-FECHA-HOY-AYER', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [730], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [752], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '020-0200-SUMA-VENCE-HOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [768], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '020-VENCE-HOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [772], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '030-0200-SUMA-VENCE-MANANA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [774], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '030-0300-SUMA-VENCE-HOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [760], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '030-0300-SUMA-VENCE-MANANA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [780], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '030-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '030-VENCE-MANANA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [771], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '040-0200-SUMA-OPERACION', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [793], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '040-0300-SUMA-OPERACION', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '040-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '040-OPERACION', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [791], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '050-0200-SUMA-OPERA-HOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [812], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '050-0300-SUMA-OPERA-HOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [818], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '050-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [826], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '050-OPERA-HOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [810], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '060-0100-SUMA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [830], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '060-0200-ARMA-TOTALES', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [849], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '060-0300-IMPRIME', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [929], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '060-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [946], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '060-IMPRIME-TOTALES', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [829], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '065-0100-ARMA-PARCIAL', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [950], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '065-0200-IMPRIME', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1028], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '065-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1040], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '065-IMPRIME-PARCIAL', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [949], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '070-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1044], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '070-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '070-ARMA-DETALLE', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1043], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '080-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '080-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '080-IMPRIME-DETALLE', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '090-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '090-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '090-GUARDA-ACUMULADORES', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0000-ACTUALIZA-TA1', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0100-SALDO-01', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0100-SALDO-07', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0200-SALDO-02', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0200-SALDO-08', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0300-SALDO-03', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0300-SALDO-09', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1345], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0400-SALDO-04', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0500-SALDO-05', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-0600-SALDO-06', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-1000-SALDO-10', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-1100-SALDO-11', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1436], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-1200-SALDO-12', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1441], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1446], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '100-ACTUALIZA-PARAM', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '1000-CHECA-CTLPROC', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1686], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '1000-CHECA-CTLPROC1', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1688], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '1000-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '110-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '110-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '110-ESCRIBE-PARAM', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1480], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '500-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '500-LEE-PARAM', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '510-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1536], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1540], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '520-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1566], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '520-LEE-OPERCOB-OPERA-HOY', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '550-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1595], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1570], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1600], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '600-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1612], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '600-ACTUALIZA-SALDOS', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1616], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '700-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1643], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '700-ESC-ENCA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1653], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1682], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'A070-PPOR-DEVENGAR', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'ABRE-ARCHIVOS', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'CIB017D', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [492], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'FILE', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'OBTN-FECHA-PROCSO', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '005-FECHA-HOY', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '006-PROCSA-REPRTE', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '008-POSICION-AYER', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '010-PROCESO', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '015-ESCRIBE-DATO', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '018-TOTAL', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '020-CORTA-HOJA', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '030-CONTROLA-TITULOS', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [693], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '040-IMPRIME-PLAZO', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '050-IMPRIME-RENGLON', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [718], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '060-IMPRIME-TOTAL', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [746], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '065-IMPRIME-TOTAL1', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '400-INCLZA-TOTLS', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '501-DECLRA-CURSR', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [772], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '502-ABRE-CURSR', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [796], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '503-PROCSA-TIPO-DOLR', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [811], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '520-LEE-TIPO-CAMBIO', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [865], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '700-CIERRA-CURSOR', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [901], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '800-GRABA-POSICION', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '810-TERMINA', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [977], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'A990-CIF-CTL', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'CHECA-DECREMENTO', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [940], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'CIB026B', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'DH-FECHA-INICIAL', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'FILE', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '000-INICIO', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '020-PROCESO', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '025-PROCESA-IEMICOB', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '030-PREGUNTA-ITIPOPE', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '040-PROCESA-DETALLE', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '050-POSICION-COMPRAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '055-POSICION-VENTAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '060-MUEVE-EMICOB', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [485], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '510-SELECCIONA-OPERCOB', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '520-SELECCIONA-EMICOB', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '700-ENCABEZADO', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [546], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [555], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '710-ENCABEZADO-COMPRAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '720-ENCABEZADO-VENTAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [563], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '730-TOTALES-COMPRAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '740-TOTALES-VENTAS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [576], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '750-TOTALES-SALDOS', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '800-FINALIZA', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'CIB028E', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [17], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'FILE', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '010-INICIALIZA', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '020-PROCESO', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '025-PLAZO-1', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '030-PLAZO-2', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '035-PLAZO-3', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '040-ARMA-DETALLE', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [448], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '700-ESC-ENCA', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [526], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [548], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'CIB030E', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'FILE', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '000-INICIO', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '010-INICIALIZA-1', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '020-PROCESO-1', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [343], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '030-DIAS-POR-CUBRIR', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '040-CLASIFICACION', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '050-INICIALIZA-2', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '060-PROCESO-2', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '070-CORTE', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '080-REGISTRO', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [495], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '090-ARMA', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [517], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '100-IMPRIME', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '400-ENCA', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [555], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '500-LEE-CURSOR-OPERCOB', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [576], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '510-LEE-CURSOR-EMICOB', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '520-LEE-TEMPORAL', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [633], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '530-UPDATE-CURSOR-EMICOB', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [657], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '900-FINALIZA-1', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '910-FINALIZA-2', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [698], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [719], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'CIB035E', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [18], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'FILE', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB005D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB005D', name: 'CIB005D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB009D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB009D', name: 'CIB009D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB010D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB010D', name: 'CIB010D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB012D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB012D', name: 'CIB012D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB013M'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB013M', name: 'CIB013M_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB017D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB017D', name: 'CIB017D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB026B'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB026B', name: 'CIB026B_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB028E'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB028E', name: 'CIB028E_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB030E'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB030E', name: 'CIB030E_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB035E'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB035E', name: 'CIB035E_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [621, 632], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1049], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1068], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1094, 1103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB009D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB009D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB009D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB009D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB009D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB009D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB009D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICPATA5'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB010D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB010D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB010D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB010D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB010D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB010D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB010D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICPATA5'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB012D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB012D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB012D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB012D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [517], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB012D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB012D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB012D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICPATA5'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [628, 639], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1009], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '050-ACTUALIZA-PARAM-TA1', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1041], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1059], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1079], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1113, 1122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [495], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB017D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '005-0450-ABRE-ARCHIVO-OPHOY', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [661, 673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '1000-CHECA-CTLPROC1', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '1000-FIN', programName: 'CIB017D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1718], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '1000-FIN', programName: 'CIB017D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1711], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1492], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1531], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1584], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1610], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [448], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '008-POSICION-AYER', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [404, 414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '030-CONTROLA-TITULOS', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [696], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '501-DECLRA-CURSR', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [791], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '502-ABRE-CURSR', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [806], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '520-LEE-TIPO-CAMBIO', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [884], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSOR', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [910], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '800-GRABA-POSICION', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [928, 938], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '810-TERMINA', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB026B'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [992], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SICPAP70'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB028E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '800-FINALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [624, 629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [658], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'CIB030E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'CIB030E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB030E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB030E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB030E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [521], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-ESC-ENCA', programName: 'CIB030E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB030E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [580], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB030E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB035E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA-1', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '030-DIAS-POR-CUBRIR', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [371, 380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '050-INICIALIZA-2', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '050-INICIALIZA-2', programName: 'CIB035E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '500-LEE-CURSOR-OPERCOB', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [590], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EMICOB', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [619, 627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '520-LEE-TEMPORAL', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '530-UPDATE-CURSOR-EMICOB', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '900-FINALIZA-1', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '910-FINALIZA-2', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [713], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB035E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [755], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB035E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [748], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB005D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB009D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB010D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB012D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Functionality {name: 'FUNCTIONALITY_CIB013M'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB017D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Functionality {name: 'FUNCTIONALITY_CIB026B'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Functionality {name: 'FUNCTIONALITY_CIB028E'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Functionality {name: 'FUNCTIONALITY_CIB030E'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Functionality {name: 'FUNCTIONALITY_CIB035E'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICPATA5'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICPATA5'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICPATA5'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [495], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1718], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1711], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [448], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SICPAP70'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [992], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [658], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [580], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [713], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [755], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [748], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [589, 590, 591, 592, 593, 594, 595, 596, 598, 599, 600, 601, 602, 603, 604, 605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB009D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [635, 636, 637, 638, 639, 640, 641], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB010D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [635, 636, 637, 638, 639, 640, 641], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB012D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [505, 506, 507, 508, 509, 510, 511], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [596, 597, 598, 599, 600, 601, 602, 603, 605, 606, 607, 608, 609, 610, 611, 612], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1689, 1690, 1691, 1692, 1693, 1694, 1695], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1481, 1482, 1483, 1484, 1485, 1486, 1487], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1572, 1573, 1574, 1575, 1576, 1577, 1578, 1579], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [393, 394, 395, 396, 397, 398, 399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [872, 873, 874, 875, 876, 877, 878, 879], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [517, 518, 519, 520, 521, 522, 523, 524, 525, 526], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB028E'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [289, 290, 291, 292, 293, 294, 295, 296, 297, 298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB030E'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [242, 243, 244, 245, 246, 247, 248, 249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [603, 604, 605, 606, 607, 608, 609, 610, 611, 612], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [270, 271, 272, 273, 274, 275, 276, 277, 278, 279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB005D', name: 'CIB005D_PROCESSING'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB005D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB009D', name: 'CIB009D_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB009D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [739], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB010D', name: 'CIB010D_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB010D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [739], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB012D', name: 'CIB012D_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB012D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB013M', name: 'CIB013M_PROCESSING'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB013M'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB017D', name: 'CIB017D_PROCESSING'}), (b:Paragraph {name: '1000-FIN', programName: 'CIB017D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB026B', name: 'CIB026B_PROCESSING'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB026B'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB028E', name: 'CIB028E_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB030E', name: 'CIB030E_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB030E'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB035E', name: 'CIB035E_PROCESSING'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB035E'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB005D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1023, 1024, 1025, 1026], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB013M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [998, 999, 1000, 1001, 1002, 1031, 1032, 1033, 1034], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB017D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1601, 1602, 1603, 1604, 1605, 1606], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB026B'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [918, 919, 920, 921, 922, 923], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Program {name: 'CIB035E'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [658, 659, 660, 661, 662, 663, 664, 665, 666, 667], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [621, 632], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1049], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1068], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1094, 1103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'CIB005D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB005D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB005D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB005D.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB009D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB009D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB009D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB009D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB009D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB009D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB009D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICPATA5'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB009D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB009D.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB010D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB010D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB010D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB010D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB010D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB010D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB010D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICPATA5'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB010D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB010D.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB012D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB012D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB012D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-SELECCIONA-PARAM', programName: 'CIB012D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [517], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB012D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB012D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'PROCESA-REPORTE', programName: 'CIB012D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICPATA5'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB012D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB012D.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '005-ABRE-CURSR', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [628, 639], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '040-ACTUALIZA-PARAM-TA0', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1009], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '050-ACTUALIZA-PARAM-TA1', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1041], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA0', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1059], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-DATOS-TA1', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1079], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSORES', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1113, 1122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '710-TERMINA', programName: 'CIB013M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB013M'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [1142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [495], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB013M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB013M.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB017D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '005-0450-ABRE-ARCHIVO-OPHOY', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [661, 673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '1000-CHECA-CTLPROC1', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '1000-FIN', programName: 'CIB017D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1718], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '1000-FIN', programName: 'CIB017D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1711], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1492], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1531], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1584], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1610], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB017D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [1650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICPATA0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICPATA1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB017D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB017D.cbl', evidenceLines: [448], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '008-POSICION-AYER', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [404, 414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '030-CONTROLA-TITULOS', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [696], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '501-DECLRA-CURSR', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [791], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '502-ABRE-CURSR', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [806], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '520-LEE-TIPO-CAMBIO', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [884], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-CIERRA-CURSOR', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [910], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '800-GRABA-POSICION', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [928, 938], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '810-TERMINA', programName: 'CIB026B'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB026B'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [992], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SICPAP70'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB026B'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB026B.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB028E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '800-FINALIZA', programName: 'CIB028E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [624, 629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [658], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB028E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB028E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB028E.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'CIB030E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'CIB030E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB030E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA', programName: 'CIB030E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB030E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [521], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '700-ESC-ENCA', programName: 'CIB030E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB030E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [580], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB030E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB030E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB030E.cbl', evidenceLines: [198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '000-INICIO', programName: 'CIB035E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '010-INICIALIZA-1', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '030-DIAS-POR-CUBRIR', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [371, 380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '050-INICIALIZA-2', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '050-INICIALIZA-2', programName: 'CIB035E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '500-LEE-CURSOR-OPERCOB', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [590], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '510-LEE-CURSOR-EMICOB', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [619, 627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '520-LEE-TEMPORAL', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '530-UPDATE-CURSOR-EMICOB', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '900-FINALIZA-1', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '910-FINALIZA-2', programName: 'CIB035E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [713], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB035E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [755], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB035E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [748], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB035E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB035E.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205339Z-cib005d-cib009d-cib010d-cib012d-cib013m-cib017d-cib026b-cib028e-cib030e-cib035e'};

