// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004800Z-ecb255m
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [358], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDDEPRE'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [346], ingestion: 'auto', layer: 'dependency', name: 'DEDDEPRE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDIMPUE'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [350], ingestion: 'auto', layer: 'dependency', name: 'DEDIMPUE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDVALCA'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [342], ingestion: 'auto', layer: 'dependency', name: 'DEDVALCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [338], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DRISRSOC'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [354], ingestion: 'auto', layer: 'dependency', name: 'DRISRSOC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSEHIPRO'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [330], ingestion: 'auto', layer: 'dependency', name: 'DSEHIPRO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'EC2FP004'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [302], ingestion: 'auto', layer: 'dependency', name: 'EC2FP004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBCU001'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [290], ingestion: 'auto', layer: 'dependency', name: 'ECBCU001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBED002'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [294], ingestion: 'auto', layer: 'dependency', name: 'ECBED002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBEP007'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [362], ingestion: 'auto', layer: 'dependency', name: 'ECBEP007', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBPR003'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [298], ingestion: 'auto', layer: 'dependency', name: 'ECBPR003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1686], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [314], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [374], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC001'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [310], ingestion: 'auto', layer: 'dependency', name: 'SIC001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1648], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [366], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [437], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [306], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIE0251P'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1162], ingestion: 'auto', layer: 'dependency', name: 'SIE0251P', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIE0251R'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [334], ingestion: 'auto', layer: 'dependency', name: 'SIE0251R', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIEPAP04'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [326], ingestion: 'auto', layer: 'dependency', name: 'SIEPAP04', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIETATF6'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [322], ingestion: 'auto', layer: 'dependency', name: 'SIETATF6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [318], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [370], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1551, 1552, 1553, 1554, 1555, 1556, 1557, 1558, 1559], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDDEPRE'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1167, 1168, 1169, 1195, 1196, 1197, 1198, 1491, 1492, 1493, 1494, 1495, 1496, 1497, 1498, 1499, 1500, 1501, 1502], ingestion: 'auto', layer: 'data-access', name: 'EDDEPRE', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDIMPUE'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1179, 1180, 1181, 1182, 1208, 1209, 1210, 1211, 1521, 1522, 1523, 1524, 1525, 1526, 1527, 1528], ingestion: 'auto', layer: 'data-access', name: 'EDIMPUE', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDVALCA'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368], ingestion: 'auto', layer: 'data-access', name: 'EDVALCA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1225, 1226, 1227, 1228, 1229, 1230, 1231, 1290, 1291, 1292, 1293, 1294, 1295, 1296, 1471, 1472, 1473, 1474, 1475, 1476, 1477], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'RISRSOC'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406], ingestion: 'auto', layer: 'data-access', name: 'RISRSOC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [413], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [409], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-100-PROCESO-CONTROL', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [391], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [441], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [480], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-INICIALIZA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [440], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-INICIALIZA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [484], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [586], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-OBTIENE-FECHAS-PROC', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [483], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-OBTIENE-FECHAS-PROC', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [592], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-9900-EXIT', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [615], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-9900-EXIT', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-LEE-CTLPROC', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [591], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-LEE-CTLPROC', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [622], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [628], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-CARGA-EMISORAS', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [621], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-CARGA-EMISORAS', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [632], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [637], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-CARGA-TABLA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [631], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-CARGA-TABLA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '018-0100-CHECA-FIN-MES', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [644], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '018-0100-CHECA-FIN-MES', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '018-9900-EXIT', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [655], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '018-9900-EXIT', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '018-CHECA-FIN-MES', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [643], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '018-CHECA-FIN-MES', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [662], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [670], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-CARGA-TVALOR-ISR', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [661], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-CARGA-TVALOR-ISR', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '021-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [674], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '021-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '021-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [681], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '021-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '021-CARGA-TABLA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [673], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '021-CARGA-TABLA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '022-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [685], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '022-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '022-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [697], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '022-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '022-GRABA-ICONCIMP', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [684], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '022-GRABA-ICONCIMP', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Persiste actualizaciones de negocio en ECB255M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '023-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [700], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '023-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '023-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [704], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '023-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '023-COMPARA-ICONCIMP', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [699], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '023-COMPARA-ICONCIMP', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [708], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [734], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-CUENTA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [707], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-CUENTA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '032-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [738], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '032-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '032-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [772], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '032-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '032-PROCESA-RISRSOC', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [737], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '032-PROCESA-RISRSOC', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '033-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [776], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '033-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '033-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [784], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '033-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '033-OBTEN-ICONCIMP', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [775], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '033-OBTEN-ICONCIMP', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '034-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [788], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '034-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '034-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [793], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '034-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '034-PROCESA-EMISORA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [787], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '034-PROCESA-EMISORA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [797], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [815], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-PROCESA-MOVTOS', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [796], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-PROCESA-MOVTOS', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '036-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [822], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '036-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '036-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [854], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '036-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '036-OBTIENE-TOT-EDVALCA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [821], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '036-OBTIENE-TOT-EDVALCA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [857], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [879], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-OBTEN-RESUMEN-EF', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [856], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-OBTEN-RESUMEN-EF', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040A-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [882], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040A-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040A-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [900], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040A-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040A-GRABA-IMPUESTOS', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [881], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040A-GRABA-IMPUESTOS', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Persiste actualizaciones de negocio en ECB255M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '041-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [904], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '041-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '041-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [915], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '041-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '041-GRABA-ISR', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [903], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '041-GRABA-ISR', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Persiste actualizaciones de negocio en ECB255M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '042-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [919], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '042-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '042-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [986], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '042-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '042-PROCESA-EDMOVED', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [918], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '042-PROCESA-EDMOVED', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '044-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [990], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '044-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '044-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1026], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '044-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '044-LEE-MOVTOS', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1017], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '044-LEE-MOVTOS', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '044-PROCESA-FECHA-IGUAL', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [989], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '044-PROCESA-FECHA-IGUAL', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '046-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1030], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '046-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '046-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1053], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '046-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '046-ACUMULA-IMPUESTO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1029], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '046-ACUMULA-IMPUESTO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '048-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1057], executionOrder: 9100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '048-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '048-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1073], executionOrder: 9200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '048-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '048-BUSCA-EMISORA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1056], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '048-BUSCA-EMISORA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '049-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1076], executionOrder: 9400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '049-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '049-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1081], executionOrder: 9500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '049-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '049-ACUMULA-ISR', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1075], executionOrder: 9300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '049-ACUMULA-ISR', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '061-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1085], executionOrder: 9700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '061-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '061-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1096], executionOrder: 9800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '061-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '061-GRABA-ISR', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1084], executionOrder: 9600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '061-GRABA-ISR', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Persiste actualizaciones de negocio en ECB255M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '066-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1103], executionOrder: 10000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '066-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '066-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1127], executionOrder: 10100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '066-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '066-ACUMULA-IMPUESTO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1102], executionOrder: 9900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '066-ACUMULA-IMPUESTO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '068-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1131], executionOrder: 10300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '068-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '068-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1147], executionOrder: 10400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '068-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '068-BUSCA-EMISORA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1130], executionOrder: 10200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '068-BUSCA-EMISORA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '069-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1150], executionOrder: 10600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '069-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '069-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1155], executionOrder: 10700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '069-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '069-ACUMULA-ISR', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1149], executionOrder: 10500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '069-ACUMULA-ISR', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1166], executionOrder: 10900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1190], executionOrder: 11000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-INICIALIZA-TABLAS-DEF', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1165], executionOrder: 10800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-INICIALIZA-TABLAS-DEF', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '410-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1194], executionOrder: 11200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '410-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '410-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1219], executionOrder: 11300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '410-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '410-INICIALIZA-TABLAS-PREV', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1193], executionOrder: 11100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '410-INICIALIZA-TABLAS-PREV', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1223], executionOrder: 11500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1247], executionOrder: 11600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-CURSOR-PARAMTI0', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1222], executionOrder: 11400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-CURSOR-PARAMTI0', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '501-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1251], executionOrder: 11800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '501-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '501-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1270], executionOrder: 11900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '501-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '501-LEE-PARAMTI0', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1250], executionOrder: 11700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '501-LEE-PARAMTI0', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1274], executionOrder: 12100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1284], executionOrder: 12200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-CLOSE-PARAMTI0', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1273], executionOrder: 12000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-CLOSE-PARAMTI0', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '504-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1288], executionOrder: 12400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '504-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '504-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1312], executionOrder: 12500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '504-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '504-CURSOR-PARAMTF9', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1287], executionOrder: 12300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '504-CURSOR-PARAMTF9', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1316], executionOrder: 12700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1335], executionOrder: 12800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-LEE-PARAMTF9', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1315], executionOrder: 12600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-LEE-PARAMTF9', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '506-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1339], executionOrder: 13000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '506-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '506-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1349], executionOrder: 13100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '506-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '506-CLOSE-PARAMTF9', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1338], executionOrder: 12900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '506-CLOSE-PARAMTF9', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '509-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1353], executionOrder: 13300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '509-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '509-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1383], executionOrder: 13400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '509-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '509-LEE-EDVALCA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1352], executionOrder: 13200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '509-LEE-EDVALCA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1387], executionOrder: 13600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1422], executionOrder: 13700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-CURSOR-RISRSOC', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1386], executionOrder: 13500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-CURSOR-RISRSOC', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '511-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1426], executionOrder: 13900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '511-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '511-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1452], executionOrder: 14000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '511-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '511-LEE-RISRSOC', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1425], executionOrder: 13800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '511-LEE-RISRSOC', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '512-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1456], executionOrder: 14200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '512-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '512-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1466], executionOrder: 14300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '512-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '512-CLOSE-RISRSOC', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1455], executionOrder: 14100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '512-CLOSE-RISRSOC', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1470], executionOrder: 14500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-EXIT', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1486], executionOrder: 14600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-EXIT', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-PARAM', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1469], executionOrder: 14400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-PARAM', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1490], executionOrder: 14800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1515], executionOrder: 14900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERT-EDDEPRE', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1489], executionOrder: 14700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERT-EDDEPRE', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Persiste actualizaciones de negocio en ECB255M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '604-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1519], executionOrder: 15100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '604-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '604-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1543], executionOrder: 15200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '604-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '604-INSERT-EDIMPUE', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1518], executionOrder: 15000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '604-INSERT-EDIMPUE', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Persiste actualizaciones de negocio en ECB255M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1550], executionOrder: 15400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1571], executionOrder: 15500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-UPDATE-CTLPROC', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1549], executionOrder: 15300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1575], executionOrder: 15700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1594], executionOrder: 15900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-LEE-MOVTOS', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1574], executionOrder: 15600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-LEE-MOVTOS', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB255M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1598], executionOrder: 16100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1617], executionOrder: 16200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-ACTUALIZA-CTLPROC', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1597], executionOrder: 16000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-ACTUALIZA-CTLPROC', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Persiste actualizaciones de negocio en ECB255M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1621], executionOrder: 16400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1623], executionOrder: 16500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-CLOSE-ARCH', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1620], executionOrder: 16300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-CLOSE-ARCH', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1627], executionOrder: 16700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1642], executionOrder: 16800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-COMMIT', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1626], executionOrder: 16600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-COMMIT', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1654], executionOrder: 17000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1659], executionOrder: 17100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1653], executionOrder: 16900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Gestiona contingencias en ECB255M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1665], executionOrder: 17300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Inicializa el flujo operativo de ECB255M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1680], executionOrder: 17400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Cierra la ejecucion de ECB255M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1664], executionOrder: 17200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [8], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [51], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [12], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB255M', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB255M', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'END-READ', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1578], executionOrder: 15800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'END-READ', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [61], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [57], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [55], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [56], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [10], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [376], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [54], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [6], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [52], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-FCIERRE-ACT', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [500], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-FCIERRE-ACT', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-FCIERRE-ANT', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [509], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-FCIERRE-ANT', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W036-ICUENTA', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [829], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W036-ICUENTA', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W040-SDO-INI-PC', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [853], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W040-SDO-INI-PC', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'})
SET n += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [73], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB255M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', summary: 'Orquesta una fase funcional de ECB255M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB255M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB255M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m', sourceFile: 'src/ECB255M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [441], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '005-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [480], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '005-INICIALIZA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '010-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [586], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '010-OBTIENE-FECHAS-PROC', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [483], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '014-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '014-9900-EXIT', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '014-LEE-CTLPROC', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [591], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '015-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '015-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '015-CARGA-EMISORAS', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '016-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [632], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '016-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [637], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '016-CARGA-TABLA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [631], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '018-0100-CHECA-FIN-MES', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [644], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '018-9900-EXIT', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [655], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '018-CHECA-FIN-MES', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [643], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '020-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [670], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '020-CARGA-TVALOR-ISR', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [661], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '021-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [674], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '021-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '021-CARGA-TABLA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '022-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [685], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '022-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [697], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '022-GRABA-ICONCIMP', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [684], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '023-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '023-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [704], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '023-COMPARA-ICONCIMP', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '030-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [734], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '030-PROCESA-CUENTA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [707], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '032-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [738], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '032-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [772], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '032-PROCESA-RISRSOC', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [737], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '033-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [776], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '033-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '033-OBTEN-ICONCIMP', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [775], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '034-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '034-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [793], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '034-PROCESA-EMISORA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [787], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '035-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '035-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '035-PROCESA-MOVTOS', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [796], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '036-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [822], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '036-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '036-OBTIENE-TOT-EDVALCA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [821], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [857], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '040-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [879], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '040-OBTEN-RESUMEN-EF', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [856], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '040A-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '040A-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [900], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '040A-GRABA-IMPUESTOS', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '041-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [904], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '041-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '041-GRABA-ISR', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [903], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '042-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [919], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '042-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [986], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '042-PROCESA-EDMOVED', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [918], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '044-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [990], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '044-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1026], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '044-LEE-MOVTOS', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1017], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '044-PROCESA-FECHA-IGUAL', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '046-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1030], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '046-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1053], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '046-ACUMULA-IMPUESTO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1029], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '048-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1057], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '048-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1073], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '048-BUSCA-EMISORA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1056], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '049-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1076], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '049-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1081], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '049-ACUMULA-ISR', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1075], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '061-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1085], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '061-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1096], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '061-GRABA-ISR', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1084], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '066-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '066-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '066-ACUMULA-IMPUESTO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '068-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '068-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '068-BUSCA-EMISORA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '069-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '069-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '069-ACUMULA-ISR', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '400-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '400-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1190], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '400-INICIALIZA-TABLAS-DEF', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '410-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '410-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '410-INICIALIZA-TABLAS-PREV', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '500-CURSOR-PARAMTI0', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '501-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '501-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '501-LEE-PARAMTI0', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '502-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '502-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '502-CLOSE-PARAMTI0', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '504-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '504-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '504-CURSOR-PARAMTF9', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '505-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '505-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '505-LEE-PARAMTF9', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '506-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '506-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '506-CLOSE-PARAMTF9', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '509-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '509-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '509-LEE-EDVALCA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '510-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '510-CURSOR-RISRSOC', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '511-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '511-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '511-LEE-RISRSOC', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '512-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '512-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '512-CLOSE-RISRSOC', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '550-9900-EXIT', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '550-LEE-PARAM', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '600-INSERT-EDDEPRE', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1489], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '604-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '604-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '604-INSERT-EDIMPUE', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '620-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1550], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '620-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '620-UPDATE-CTLPROC', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1549], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1575], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '700-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '700-LEE-MOVTOS', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1574], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '710-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1598], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '710-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '710-ACTUALIZA-CTLPROC', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1597], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '750-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '750-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '750-CLOSE-ARCH', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1620], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '800-COMMIT', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1626], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1659], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1653], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1664], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [12], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'ECB255M', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'END-READ', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1578], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'FILE', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'W010-FCIERRE-ACT', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'W010-FCIERRE-ANT', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'W036-ICUENTA', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [829], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'W040-SDO-INI-PC', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [416, 432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB255M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [467, 478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '014-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [719], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '032-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '046-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1049], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '066-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '069-9900-FIN', programName: 'ECB255M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '400-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1175, 1188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '410-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1204, 1217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1236, 1245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '501-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '502-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '504-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1301, 1310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '506-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '509-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1396, 1411, 1420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '511-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '512-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '604-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1537], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '800-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB255M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1686], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'END-READ', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1591], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'W010-FCIERRE-ANT', programName: 'ECB255M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [559, 563], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DEDDEPRE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DEDIMPUE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DRISRSOC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'ECBCU001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'ECBED002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'ECBPR003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIE0251R'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'DEDDEPRE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'DEDIMPUE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'DRISRSOC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'ECBCU001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'ECBED002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'ECBPR003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1686], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SIE0251R'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [593, 594, 595, 596, 597, 598, 599, 600], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:DBTable {name: 'EDDEPRE'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1167, 1168, 1169, 1195, 1196, 1197, 1198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:DBTable {name: 'EDIMPUE'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1179, 1180, 1181, 1182, 1208, 1209, 1210, 1211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1354, 1355, 1356, 1357, 1358, 1359, 1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1225, 1226, 1227, 1228, 1229, 1230, 1231, 1290, 1291, 1292, 1293, 1294, 1295, 1296, 1471, 1472, 1473, 1474, 1475, 1476, 1477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:DBTable {name: 'RISRSOC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1551, 1552, 1553, 1554, 1555, 1556, 1557, 1558, 1559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:DBTable {name: 'EDDEPRE'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1167, 1168, 1169, 1195, 1196, 1197, 1198, 1491, 1492, 1493, 1494, 1495, 1496, 1497, 1498, 1499, 1500, 1501, 1502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Program {name: 'ECB255M'}), (b:DBTable {name: 'EDIMPUE'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1179, 1180, 1181, 1182, 1208, 1209, 1210, 1211, 1521, 1522, 1523, 1524, 1525, 1526, 1527, 1528], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [416, 432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB255M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [467, 478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '014-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [719], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '032-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '046-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1049], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '066-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '069-9900-FIN', programName: 'ECB255M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '400-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1175, 1188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '410-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1204, 1217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1236, 1245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '501-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '502-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '504-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1301, 1310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '506-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '509-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1396, 1411, 1420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '511-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '512-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '604-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1537], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '800-0100-INICIO', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB255M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1686], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'END-READ', programName: 'ECB255M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [1591], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'W010-FCIERRE-ANT', programName: 'ECB255M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [559, 563], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DEDDEPRE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DEDIMPUE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DRISRSOC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'ECBCU001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'ECBED002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'ECBPR003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [306], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIE0251R'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB255M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB255M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004800Z-ecb255m'};

