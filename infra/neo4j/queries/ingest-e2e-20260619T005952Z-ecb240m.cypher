// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T005952Z-ecb240m
// ============================================================================

MERGE (n:Copybook {name: 'DCATMOV'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [278], ingestion: 'auto', layer: 'dependency', name: 'DCATMOV', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCATOPER'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [267], ingestion: 'auto', layer: 'dependency', name: 'DCATOPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCONCEPT'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [263], ingestion: 'auto', layer: 'dependency', name: 'DCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [312], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DDEFOPER'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [284], ingestion: 'auto', layer: 'dependency', name: 'DDEFOPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDCUENT'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [271], ingestion: 'auto', layer: 'dependency', name: 'DEDCUENT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVED'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [291], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVED', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERA'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [298], ingestion: 'auto', layer: 'dependency', name: 'DOPERA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERTES'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [319], ingestion: 'auto', layer: 'dependency', name: 'DOPERTES', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [326], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSEHIPRO'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [332], ingestion: 'auto', layer: 'dependency', name: 'DSEHIPRO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'EC2FP004'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [230], ingestion: 'auto', layer: 'dependency', name: 'EC2FP004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBEP007'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [236], ingestion: 'auto', layer: 'dependency', name: 'ECBEP007', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'NOPERA'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [305], ingestion: 'auto', layer: 'dependency', name: 'NOPERA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1954], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [193], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [223], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC001'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [206], ingestion: 'auto', layer: 'dependency', name: 'SIC001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1908], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [213], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIE0101P'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1246], ingestion: 'auto', layer: 'dependency', name: 'SIE0101P', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIE0101R'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [256], ingestion: 'auto', layer: 'dependency', name: 'SIE0101R', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIEPAP04'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [249], ingestion: 'auto', layer: 'dependency', name: 'SIEPAP04', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIETATF6'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [243], ingestion: 'auto', layer: 'dependency', name: 'SIETATF6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [217], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CATOPER'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1576, 1577, 1599, 1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608], ingestion: 'auto', layer: 'data-access', name: 'CATOPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CONCEPT'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1461, 1462], ingestion: 'auto', layer: 'data-access', name: 'CONCEPT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1692, 1693, 1694, 1695, 1696, 1697, 1698, 1699, 1700, 1701, 1702, 1703, 1704, 1705, 1706, 1707, 1708, 1709, 1710, 1711, 1712, 1713, 1714, 1715, 1737, 1738, 1739, 1740, 1741, 1742, 1743, 1744, 1745, 1746, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'DEFOPER'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1488, 1489, 1490, 1491, 1492, 1493], ingestion: 'auto', layer: 'data-access', name: 'DEFOPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDMOVED'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1631, 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1646, 1647, 1648, 1649, 1650, 1651, 1652, 1653, 1654, 1804, 1805, 1806, 1836, 1837, 1838, 1839], ingestion: 'auto', layer: 'data-access', name: 'EDMOVED', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERA'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1283, 1284, 1285, 1286, 1287, 1288, 1290, 1292, 1293, 1294, 1295, 1296, 1297, 1298, 1300, 1302, 1303, 1304, 1305, 1306, 1307, 1309, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1328, 1330, 1331, 1332, 1333, 1335, 1337, 1338, 1339], ingestion: 'auto', layer: 'data-access', name: 'OPERA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERTES'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1518, 1519, 1520, 1521, 1522, 1523, 1524, 1525], ingestion: 'auto', layer: 'data-access', name: 'OPERTES', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [362], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-FIN-CALC', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [394], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-FIN-CALC', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [361], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-100-PROCESO-CONTROL', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [418], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [350], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [426], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [444], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-OBTIENE-FEC-CIERRES', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [425], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-OBTIENE-FEC-CIERRES', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [450], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-9900-EXIT', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [473], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-9900-EXIT', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-LEE-CTLPROC', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [449], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-LEE-CTLPROC', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-CHECA-FIN-MES', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [480], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-CHECA-FIN-MES', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-EXIT', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [491], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-EXIT', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-CHECA-FIN-MES', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [479], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-CHECA-FIN-MES', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [498], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [513], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-VERIFICA-EVENTO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [497], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-VERIFICA-EVENTO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [520], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [550], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-LEE-ULTLLA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [519], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-LEE-ULTLLA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [557], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [565], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-OBTIENE-FECHA-ESP', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [556], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-OBTIENE-FECHA-ESP', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [572], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [608], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-PROCESA-MOVTOS', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [571], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-PROCESA-MOVTOS', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [615], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [628], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-OBTEN-RANGO-FECHAS', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [614], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-OBTEN-RANGO-FECHAS', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [634], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [660], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROC-OPERA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [633], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROC-OPERA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [667], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [686], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-COMMIT', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [666], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-COMMIT', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [693], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [822], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-MOV-VALORES', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [692], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-MOV-VALORES', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [829], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [853], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-ASIGNA-SOPER', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [828], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-ASIGNA-SOPER', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '095-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [860], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '095-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '095-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [892], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '095-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '095-CGO-ABO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [859], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '095-CGO-ABO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '131-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [899], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '131-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '131-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [941], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '131-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '131-MOV-CAP-VAL', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [898], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '131-MOV-CAP-VAL', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '132-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [948], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '132-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '132-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [968], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '132-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '132-MOV-SOC-INV', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [947], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '132-MOV-SOC-INV', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '133-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [975], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '133-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '133-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [997], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '133-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '133-MOV-MER-DIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [974], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '133-MOV-MER-DIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '134-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1004], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '134-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '134-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1013], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '134-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '134-MOV-NOTBAN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1003], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '134-MOV-NOTBAN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '135-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1020], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '135-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '135-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1028], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '135-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '135-DATOS-CHEQUE', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1019], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '135-DATOS-CHEQUE', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '136-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1035], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '136-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '136-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1054], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '136-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '136-DESGLOSA-IVA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1034], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '136-DESGLOSA-IVA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '137-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1061], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '137-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '137-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1076], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '137-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '137-CANCELACION-IVA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1060], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '137-CANCELACION-IVA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '140-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1083], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '140-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '140-0200-CICLO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1106], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '140-0200-CICLO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '140-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1171], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '140-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '140-ACUMULA-MOVTOS', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1082], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '140-ACUMULA-MOVTOS', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '145-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1179], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '145-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '145-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1213], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '145-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '145-VALORES', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1178], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '145-VALORES', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '147-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1220], executionOrder: 9100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '147-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '147-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1225], executionOrder: 9200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '147-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '147-GENERA-IVA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1219], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '147-GENERA-IVA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1233], executionOrder: 9400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1239], executionOrder: 9500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-INSERT-EDMOVED', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1232], executionOrder: 9300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-INSERT-EDMOVED', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Persiste actualizaciones de negocio en ECB240M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1253], executionOrder: 9700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1274], executionOrder: 9800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CTLPROC', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1252], executionOrder: 9600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CTLPROC', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1281], executionOrder: 10000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1341], executionOrder: 10100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-DECLARA-CUR-OPERA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1280], executionOrder: 9900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-DECLARA-CUR-OPERA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '503-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1348], executionOrder: 10300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '503-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '503-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1367], executionOrder: 10400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '503-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '503-LOCK-TABLAS', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1347], executionOrder: 10200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '503-LOCK-TABLAS', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '504-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1374], executionOrder: 10600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '504-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '504-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1392], executionOrder: 10700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '504-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '504-ABRE-CUR-OPERA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1373], executionOrder: 10500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '504-ABRE-CUR-OPERA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1399], executionOrder: 10900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1442], executionOrder: 11000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1398], executionOrder: 10800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1449], executionOrder: 11200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1479], executionOrder: 11300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-CONCEPT', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1448], executionOrder: 11100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-CONCEPT', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1486], executionOrder: 11500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1509], executionOrder: 11600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-DEFOPER', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1485], executionOrder: 11400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-DEFOPER', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1516], executionOrder: 11800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1535], executionOrder: 11900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-LEE-OPERTES', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1515], executionOrder: 11700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-LEE-OPERTES', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1567], executionOrder: 12400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1591], executionOrder: 12500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-CATOPER', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1566], executionOrder: 12300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-CATOPER', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1598], executionOrder: 12700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1623], executionOrder: 12800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-LEE-CATOPER', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1597], executionOrder: 12600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-LEE-CATOPER', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1542], executionOrder: 12100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-9900-EXIT', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1560], executionOrder: 12200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-9900-EXIT', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-PARAM', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1541], executionOrder: 12000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-PARAM', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB240M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1630], executionOrder: 13000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1684], executionOrder: 13100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERT-EDMOVED', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1629], executionOrder: 12900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERT-EDMOVED', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Persiste actualizaciones de negocio en ECB240M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1691], executionOrder: 13300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1730], executionOrder: 13400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-INSERT-CTLPROC', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1690], executionOrder: 13200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-INSERT-CTLPROC', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Persiste actualizaciones de negocio en ECB240M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1736], executionOrder: 13600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1757], executionOrder: 13700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-UPDATE-CTLPROC', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1735], executionOrder: 13500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1763], executionOrder: 13900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1783], executionOrder: 14000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-UPDATE-CTLPROC', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1762], executionOrder: 13800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '690-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1789], executionOrder: 14200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '690-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '690-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1814], executionOrder: 14300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '690-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '690-DEL-EDMOVED-DEF', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1788], executionOrder: 14100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '690-DEL-EDMOVED-DEF', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '695-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1820], executionOrder: 14500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '695-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '695-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1847], executionOrder: 14600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '695-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '695-DEL-EDMOVED-PREV', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1819], executionOrder: 14400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '695-DEL-EDMOVED-PREV', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1853], executionOrder: 14800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1868], executionOrder: 14900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-PROCESO-FINAL', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1852], executionOrder: 14700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-PROCESO-FINAL', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1874], executionOrder: 15100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1883], executionOrder: 15200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-CERRAR-OPERA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1873], executionOrder: 15000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-CERRAR-OPERA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1887], executionOrder: 15400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1901], executionOrder: 15500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-COMMIT', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1886], executionOrder: 15300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-COMMIT', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1915], executionOrder: 15700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1923], executionOrder: 15800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1914], executionOrder: 15600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Gestiona contingencias en ECB240M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1930], executionOrder: 16000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1947], executionOrder: 16100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Cierra la ejecucion de ECB240M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1929], executionOrder: 15900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [6], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [67], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [11], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DS-FECHA', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [617], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DS-FECHA', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB240M', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [5], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB240M', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [77], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [74], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [71], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [73], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [9], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [335], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [70], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [4], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [68], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W020-F-INICIO', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [674], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W020-F-INICIO', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Inicializa el flujo operativo de ECB240M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'})
SET n += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [78], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB240M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', summary: 'Orquesta una fase funcional de ECB240M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB240M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB240M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m', sourceFile: 'src/ECB240M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '000-0200-FIN-CALC', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '000-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '010-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '010-OBTIENE-FEC-CIERRES', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '014-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '014-9900-EXIT', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '014-LEE-CTLPROC', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '015-0100-CHECA-FIN-MES', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [480], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '015-9900-EXIT', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [491], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '015-CHECA-FIN-MES', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [498], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '020-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [513], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '020-VERIFICA-EVENTO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [497], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '035-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [520], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '035-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [550], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '035-LEE-ULTLLA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '040-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '040-OBTIENE-FECHA-ESP', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [556], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [572], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '050-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '050-PROCESA-MOVTOS', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '055-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '055-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '055-OBTEN-RANGO-FECHAS', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [634], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '060-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '060-PROC-OPERA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [633], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '065-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [667], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '065-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [686], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '065-COMMIT', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '080-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [693], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '080-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [822], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '080-MOV-VALORES', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '090-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [829], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '090-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '090-ASIGNA-SOPER', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [828], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '095-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [860], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '095-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [892], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '095-CGO-ABO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '131-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [899], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '131-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [941], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '131-MOV-CAP-VAL', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [898], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '132-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '132-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [968], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '132-MOV-SOC-INV', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [947], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '133-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [975], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '133-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [997], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '133-MOV-MER-DIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [974], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '134-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '134-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1013], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '134-MOV-NOTBAN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1003], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '135-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1020], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '135-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1028], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '135-DATOS-CHEQUE', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1019], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '136-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1035], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '136-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1054], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '136-DESGLOSA-IVA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1034], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '137-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1061], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '137-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1076], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '137-CANCELACION-IVA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1060], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '140-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1083], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '140-0200-CICLO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '140-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '140-ACUMULA-MOVTOS', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1082], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '145-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '145-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '145-VALORES', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '147-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '147-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '147-GENERA-IVA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '150-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '150-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '150-INSERT-EDMOVED', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '500-LEE-CTLPROC', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '502-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '502-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '502-DECLARA-CUR-OPERA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '503-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '503-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '503-LOCK-TABLAS', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '504-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '504-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '504-ABRE-CUR-OPERA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '510-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1442], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '510-LEE-OPERA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '520-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '520-LEE-CONCEPT', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1448], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '530-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '530-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '530-LEE-DEFOPER', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1485], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '540-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '540-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '540-LEE-OPERTES', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '550-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1591], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '550-LEE-CATOPER', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1566], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '555-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1598], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '555-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '555-LEE-CATOPER', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1597], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '560-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1542], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '560-9900-EXIT', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '560-LEE-PARAM', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1684], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '600-INSERT-EDMOVED', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '620-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1691], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '620-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1730], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '620-INSERT-CTLPROC', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '630-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1736], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '630-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1757], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '630-UPDATE-CTLPROC', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '650-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1763], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '650-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1783], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '650-UPDATE-CTLPROC', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1762], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '690-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1789], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '690-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '690-DEL-EDMOVED-DEF', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '695-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1820], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '695-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1847], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '695-DEL-EDMOVED-PREV', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1819], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '710-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '710-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1868], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '710-PROCESO-FINAL', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '720-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1874], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '720-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1883], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '720-CERRAR-OPERA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1873], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1887], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1901], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '800-COMMIT', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1923], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1914], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1930], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1947], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1929], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'DS-FECHA', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'ECB240M', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'FILE', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'W020-F-INICIO', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [674], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [366, 368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '000-0200-FIN-CALC', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB240M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '014-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '050-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [582, 594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '060-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '140-0200-CICLO', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '150-9900-FIN', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '503-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1356, 1365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '504-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '530-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1498, 1506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '540-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1584], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '555-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1616], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '560-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1726], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1755], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '690-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1799, 1811], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '695-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1830, 1844], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '720-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '800-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1908], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB240M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1954], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DCATMOV'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DCATOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DOPERTES'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'NOPERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101R'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DCATMOV'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DCATOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DOPERTES'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'NOPERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1954], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1908], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SIE0101R'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'CATOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1576, 1577, 1599, 1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'CONCEPT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1461, 1462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [451, 452, 453, 454, 455, 456, 457, 458, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1488, 1489, 1490, 1491, 1492, 1493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'EDMOVED'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1804, 1805, 1806, 1836, 1837, 1838, 1839], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'OPERA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1283, 1284, 1285, 1286, 1287, 1288, 1290, 1292, 1293, 1294, 1295, 1296, 1297, 1298, 1300, 1302, 1303, 1304, 1305, 1306, 1307, 1309, 1311, 1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1328, 1330, 1331, 1332, 1333, 1335, 1337, 1338, 1339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'OPERTES'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1518, 1519, 1520, 1521, 1522, 1523, 1524, 1525], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1692, 1693, 1694, 1695, 1696, 1697, 1698, 1699, 1700, 1701, 1702, 1703, 1704, 1705, 1706, 1707, 1708, 1709, 1710, 1711, 1712, 1713, 1714, 1715, 1737, 1738, 1739, 1740, 1741, 1742, 1743, 1744, 1745, 1746, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Program {name: 'ECB240M'}), (b:DBTable {name: 'EDMOVED'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1631, 1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1646, 1647, 1648, 1649, 1650, 1651, 1652, 1653, 1654, 1804, 1805, 1806, 1836, 1837, 1838, 1839], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [366, 368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '000-0200-FIN-CALC', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB240M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '014-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '050-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [582, 594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '060-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '140-0200-CICLO', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '150-9900-FIN', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '503-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1356, 1365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '504-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '530-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1498, 1506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '540-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1584], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '555-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1616], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '560-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1726], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1755], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '690-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1799, 1811], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '695-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1830, 1844], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '720-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '800-0100-INICIO', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB240M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1908], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB240M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [1954], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DCATMOV'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DCATOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DOPERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DOPERTES'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'NOPERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIE0101R'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB240M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB240M.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005952Z-ecb240m'};

