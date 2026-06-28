// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T005707Z-ecb025m
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [343], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDDEPRE'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [327], ingestion: 'auto', layer: 'dependency', name: 'DEDDEPRE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDIMPUE'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [331], ingestion: 'auto', layer: 'dependency', name: 'DEDIMPUE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVPR'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [335], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVPR', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDVALCA'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [323], ingestion: 'auto', layer: 'dependency', name: 'DEDVALCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [319], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DRISRSOC'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [339], ingestion: 'auto', layer: 'dependency', name: 'DRISRSOC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSEHIPRO'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [311], ingestion: 'auto', layer: 'dependency', name: 'DSEHIPRO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBCU001'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [271], ingestion: 'auto', layer: 'dependency', name: 'ECBCU001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBED002'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [275], ingestion: 'auto', layer: 'dependency', name: 'ECBED002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBEP007'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [347], ingestion: 'auto', layer: 'dependency', name: 'ECBEP007', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBFP004'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [283], ingestion: 'auto', layer: 'dependency', name: 'ECBFP004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBPR003'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [279], ingestion: 'auto', layer: 'dependency', name: 'ECBPR003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [359], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC001'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [291], ingestion: 'auto', layer: 'dependency', name: 'SIC001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1835], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [351], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1875], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [295], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [422], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [287], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIE0251P'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1376], ingestion: 'auto', layer: 'dependency', name: 'SIE0251P', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIE0251R'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [315], ingestion: 'auto', layer: 'dependency', name: 'SIE0251R', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIEPAP04'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [307], ingestion: 'auto', layer: 'dependency', name: 'SIEPAP04', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIETATF6'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [303], ingestion: 'auto', layer: 'dependency', name: 'SIETATF6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [299], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [355], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1741, 1742, 1743, 1744, 1745, 1746, 1747, 1748, 1749], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDDEPRE'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1381, 1382, 1383, 1655, 1656, 1657, 1658, 1659, 1660, 1661, 1662, 1663, 1664, 1665], ingestion: 'auto', layer: 'data-access', name: 'EDDEPRE', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDIMPUE'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1393, 1394, 1395, 1396, 1711, 1712, 1713, 1714, 1715, 1716, 1717, 1718], ingestion: 'auto', layer: 'data-access', name: 'EDIMPUE', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDMOVPR'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1683, 1684, 1685, 1686, 1687, 1688, 1689, 1690, 1691, 1692], ingestion: 'auto', layer: 'data-access', name: 'EDMOVPR', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDVALCA'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1539, 1540, 1541, 1542, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551, 1552, 1553], ingestion: 'auto', layer: 'data-access', name: 'EDVALCA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1409, 1410, 1411, 1412, 1413, 1414, 1415, 1474, 1475, 1476, 1477, 1478, 1479, 1480], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'RISRSOC'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1583, 1584, 1585, 1586, 1587, 1588, 1589, 1590, 1591], ingestion: 'auto', layer: 'data-access', name: 'RISRSOC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [398], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [394], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-100-PROCESO-CONTROL', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [376], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [426], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [486], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-INICIALIZA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [425], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-INICIALIZA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [490], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [577], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-OBTIENE-FECHAS-PROC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [489], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-OBTIENE-FECHAS-PROC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [583], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [589], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-CARGA-EMISORAS', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [582], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-CARGA-EMISORAS', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [593], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [598], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-CARGA-TABLA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [592], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-CARGA-TABLA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [605], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [613], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-CARGA-TVALOR-ISR', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [604], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-CARGA-TVALOR-ISR', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '021-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [617], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '021-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '021-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [624], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '021-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '021-CARGA-TABLA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [616], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '021-CARGA-TABLA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '022-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [628], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '022-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '022-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [640], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '022-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '022-GRABA-ICONCIMP', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [627], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '022-GRABA-ICONCIMP', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Persiste actualizaciones de negocio en ECB025M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '023-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [643], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '023-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '023-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [647], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '023-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '023-COMPARA-ICONCIMP', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [642], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '023-COMPARA-ICONCIMP', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [651], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [677], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-CUENTA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [650], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-CUENTA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '032-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [681], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '032-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '032-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [715], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '032-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '032-PROCESA-RISRSOC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [680], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '032-PROCESA-RISRSOC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '033-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [719], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '033-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '033-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [727], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '033-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '033-OBTEN-ICONCIMP', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [718], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '033-OBTEN-ICONCIMP', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '034-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [731], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '034-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '034-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [736], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '034-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '034-PROCESA-EMISORA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [730], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '034-PROCESA-EMISORA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [740], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [775], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-PROCESA-MOVTOS', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [739], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-PROCESA-MOVTOS', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '036-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [782], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '036-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '036-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [814], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '036-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '036-OBTIENE-TOT-EDVALCA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [781], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '036-OBTIENE-TOT-EDVALCA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [817], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [839], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-OBTEN-RESUMEN-EF', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [816], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-OBTEN-RESUMEN-EF', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040A-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [842], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040A-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040A-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [858], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040A-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040A-GRABA-IMPUESTOS', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [841], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040A-GRABA-IMPUESTOS', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Persiste actualizaciones de negocio en ECB025M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '041-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [862], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '041-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '041-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [873], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '041-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '041-GRABA-ISR', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [861], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '041-GRABA-ISR', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Persiste actualizaciones de negocio en ECB025M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '042-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [877], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '042-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '042-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [939], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '042-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '042-PROCESA-EDMOVED', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [876], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '042-PROCESA-EDMOVED', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '044-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [943], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '044-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '044-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [958], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '044-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '044-LEE-MOVTOS', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [949], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '044-LEE-MOVTOS', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '044-PROCESA-FECHA-IGUAL', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [942], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '044-PROCESA-FECHA-IGUAL', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '046-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [962], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '046-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '046-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [985], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '046-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '046-ACUMULA-IMPUESTO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [961], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '046-ACUMULA-IMPUESTO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '048-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [989], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '048-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '048-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1003], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '048-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '048-BUSCA-EMISORA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [988], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '048-BUSCA-EMISORA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '049-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1006], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '049-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '049-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1011], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '049-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '049-ACUMULA-ISR', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1005], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '049-ACUMULA-ISR', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1015], executionOrder: 9100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1068], executionOrder: 9300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-OBTEN-RESUMEN-PC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1014], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-OBTEN-RESUMEN-PC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '051-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1072], executionOrder: 9500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '051-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '051-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1115], executionOrder: 9600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '051-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '051-PROCESA-EDMOVPR1', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1071], executionOrder: 9400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '051-PROCESA-EDMOVPR1', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '052-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1119], executionOrder: 9800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '052-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '052-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1172], executionOrder: 9900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '052-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '052-PROCESA-EDMOVPR', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1118], executionOrder: 9700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '052-PROCESA-EDMOVPR', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1178], executionOrder: 10100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1209], executionOrder: 10200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-OBTEN-RESUMEN-EF', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1177], executionOrder: 10000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-OBTEN-RESUMEN-EF', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '061-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1213], executionOrder: 10400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '061-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '061-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1224], executionOrder: 10500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '061-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '061-GRABA-ISR', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1212], executionOrder: 10300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '061-GRABA-ISR', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Persiste actualizaciones de negocio en ECB025M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '062-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1228], executionOrder: 10700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '062-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '062-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1265], executionOrder: 10800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '062-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '062-PROCESA-EDMOVED', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1227], executionOrder: 10600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '062-PROCESA-EDMOVED', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '064-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1269], executionOrder: 11000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '064-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '064-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1293], executionOrder: 11200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '064-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '064-LEE-MOVTOS', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1284], executionOrder: 11100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '064-LEE-MOVTOS', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '064-PROCESA-FECHA-IGUAL', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1268], executionOrder: 10900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '064-PROCESA-FECHA-IGUAL', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1297], executionOrder: 11400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1313], executionOrder: 11500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-GRABA-1101', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1296], executionOrder: 11300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-GRABA-1101', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Persiste actualizaciones de negocio en ECB025M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '066-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1319], executionOrder: 11700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '066-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '066-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1343], executionOrder: 11800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '066-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '066-ACUMULA-IMPUESTO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1318], executionOrder: 11600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '066-ACUMULA-IMPUESTO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '068-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1347], executionOrder: 12000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '068-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '068-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1361], executionOrder: 12100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '068-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '068-BUSCA-EMISORA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1346], executionOrder: 11900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '068-BUSCA-EMISORA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '069-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1364], executionOrder: 12300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '069-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '069-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1369], executionOrder: 12400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '069-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '069-ACUMULA-ISR', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1363], executionOrder: 12200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '069-ACUMULA-ISR', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1380], executionOrder: 12600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1404], executionOrder: 12700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-INICIALIZA-TABLAS', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1379], executionOrder: 12500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-INICIALIZA-TABLAS', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1407], executionOrder: 12900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1431], executionOrder: 13000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-CURSOR-PARAMTI0', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1406], executionOrder: 12800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-CURSOR-PARAMTI0', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '501-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1435], executionOrder: 13200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '501-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '501-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1454], executionOrder: 13300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '501-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '501-LEE-PARAMTI0', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1434], executionOrder: 13100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '501-LEE-PARAMTI0', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1458], executionOrder: 13500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1468], executionOrder: 13600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '502-CLOSE-PARAMTI0', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1457], executionOrder: 13400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '502-CLOSE-PARAMTI0', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '504-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1472], executionOrder: 13800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '504-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '504-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1496], executionOrder: 13900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '504-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '504-CURSOR-PARAMTF9', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1471], executionOrder: 13700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '504-CURSOR-PARAMTF9', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1500], executionOrder: 14100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1519], executionOrder: 14200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-LEE-PARAMTF9', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1499], executionOrder: 14000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-LEE-PARAMTF9', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '506-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1523], executionOrder: 14400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '506-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '506-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1533], executionOrder: 14500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '506-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '506-CLOSE-PARAMTF9', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1522], executionOrder: 14300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '506-CLOSE-PARAMTF9', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '509-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1538], executionOrder: 14700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '509-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '509-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1568], executionOrder: 14800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '509-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '509-LEE-EDVALCA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1537], executionOrder: 14600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '509-LEE-EDVALCA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1572], executionOrder: 15000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1607], executionOrder: 15100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-CURSOR-RISRSOC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1571], executionOrder: 14900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-CURSOR-RISRSOC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '511-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1611], executionOrder: 15300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '511-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '511-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1637], executionOrder: 15400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '511-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '511-LEE-RISRSOC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1610], executionOrder: 15200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '511-LEE-RISRSOC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '512-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1641], executionOrder: 15600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '512-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '512-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1651], executionOrder: 15700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '512-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '512-CLOSE-RISRSOC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1640], executionOrder: 15500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '512-CLOSE-RISRSOC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1654], executionOrder: 15900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1678], executionOrder: 16000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERT-EDDEPRE', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1653], executionOrder: 15800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERT-EDDEPRE', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Persiste actualizaciones de negocio en ECB025M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '602-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1682], executionOrder: 16200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '602-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '602-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1705], executionOrder: 16300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '602-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '602-UPDATE-EDMOVPR', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1681], executionOrder: 16100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '602-UPDATE-EDMOVPR', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '604-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1709], executionOrder: 16500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '604-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '604-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1733], executionOrder: 16600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '604-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '604-INSERT-EDIMPUE', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1708], executionOrder: 16400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '604-INSERT-EDIMPUE', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Persiste actualizaciones de negocio en ECB025M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1740], executionOrder: 16800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1761], executionOrder: 16900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-UPDATE-CTLPROC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1739], executionOrder: 16700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1765], executionOrder: 17100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1786], executionOrder: 17300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-LEE-MOVTOS', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1764], executionOrder: 17000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-LEE-MOVTOS', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB025M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1790], executionOrder: 17500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1804], executionOrder: 17600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-ACTUALIZA-CTLPROC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1789], executionOrder: 17400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-ACTUALIZA-CTLPROC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Persiste actualizaciones de negocio en ECB025M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1808], executionOrder: 17800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1810], executionOrder: 17900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '750-CLOSE-ARCH', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1807], executionOrder: 17700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '750-CLOSE-ARCH', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1814], executionOrder: 18100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1829], executionOrder: 18200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-COMMIT', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1813], executionOrder: 18000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-COMMIT', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1841], executionOrder: 18400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1846], executionOrder: 18500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1840], executionOrder: 18300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Gestiona contingencias en ECB025M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1852], executionOrder: 18700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Inicializa el flujo operativo de ECB025M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1869], executionOrder: 18800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Cierra la ejecucion de ECB025M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1851], executionOrder: 18600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [36], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB025M', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB025M', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'END-READ', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1768], executionOrder: 17200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'END-READ', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [46], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [42], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [40], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [41], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [361], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [39], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [37], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-FCIERRE-ACT', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [504], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-FCIERRE-ACT', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-FCIERRE-ANT', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [513], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-FCIERRE-ANT', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W036-ICUENTA', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [789], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W036-ICUENTA', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W040-SDO-INI-PC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [813], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W040-SDO-INI-PC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W040-TOT-CARGOS-PC', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1067], executionOrder: 9200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W040-TOT-CARGOS-PC', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'})
SET n += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [58], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB025M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', summary: 'Orquesta una fase funcional de ECB025M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB025M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB025M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m', sourceFile: 'src/ECB025M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '000-100-PROCESO-CONTROL', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '005-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '005-INICIALIZA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '010-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [577], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '010-OBTIENE-FECHAS-PROC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [489], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '015-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [583], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '015-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '015-CARGA-EMISORAS', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '016-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [593], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '016-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [598], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '016-CARGA-TABLA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '020-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [613], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '020-CARGA-TVALOR-ISR', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [604], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '021-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '021-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '021-CARGA-TABLA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [616], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '022-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '022-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '022-GRABA-ICONCIMP', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '023-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [643], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '023-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '023-COMPARA-ICONCIMP', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '030-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '030-PROCESA-CUENTA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [650], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '032-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '032-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [715], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '032-PROCESA-RISRSOC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '033-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [719], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '033-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '033-OBTEN-ICONCIMP', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [718], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '034-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [731], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '034-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [736], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '034-PROCESA-EMISORA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [730], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '035-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [740], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '035-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [775], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '035-PROCESA-MOVTOS', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [739], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '036-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [782], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '036-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '036-OBTIENE-TOT-EDVALCA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [817], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '040-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [839], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '040-OBTEN-RESUMEN-EF', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [816], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '040A-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [842], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '040A-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [858], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '040A-GRABA-IMPUESTOS', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [841], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '041-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [862], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '041-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [873], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '041-GRABA-ISR', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [861], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '042-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [877], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '042-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [939], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '042-PROCESA-EDMOVED', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [876], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '044-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [943], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '044-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [958], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '044-LEE-MOVTOS', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [949], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '044-PROCESA-FECHA-IGUAL', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '046-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [962], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '046-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [985], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '046-ACUMULA-IMPUESTO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [961], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '048-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '048-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1003], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '048-BUSCA-EMISORA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '049-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1006], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '049-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1011], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '049-ACUMULA-ISR', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1005], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1015], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '050-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1068], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '050-OBTEN-RESUMEN-PC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1014], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '051-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1072], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '051-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '051-PROCESA-EDMOVPR1', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1071], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '052-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '052-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '052-PROCESA-EDMOVPR', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '060-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '060-OBTEN-RESUMEN-EF', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '061-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '061-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '061-GRABA-ISR', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '062-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '062-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '062-PROCESA-EDMOVED', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '064-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '064-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '064-LEE-MOVTOS', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '064-PROCESA-FECHA-IGUAL', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '065-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '065-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '065-GRABA-1101', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '066-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '066-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1343], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '066-ACUMULA-IMPUESTO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '068-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '068-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '068-BUSCA-EMISORA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '069-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '069-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '069-ACUMULA-ISR', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '400-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '400-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '400-INICIALIZA-TABLAS', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '500-CURSOR-PARAMTI0', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '501-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1435], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '501-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '501-LEE-PARAMTI0', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '502-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '502-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1468], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '502-CLOSE-PARAMTI0', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1457], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '504-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1472], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '504-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '504-CURSOR-PARAMTF9', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '505-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '505-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '505-LEE-PARAMTF9', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '506-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '506-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1533], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '506-CLOSE-PARAMTF9', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '509-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '509-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '509-LEE-EDVALCA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1537], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1572], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '510-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1607], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '510-CURSOR-RISRSOC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '511-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1611], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '511-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1637], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '511-LEE-RISRSOC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1610], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '512-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1641], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '512-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '512-CLOSE-RISRSOC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '600-INSERT-EDDEPRE', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1653], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '602-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1682], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '602-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '602-UPDATE-EDMOVPR', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '604-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1709], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '604-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '604-INSERT-EDIMPUE', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '620-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1740], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '620-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1761], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '620-UPDATE-CTLPROC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1739], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1765], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '700-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1786], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '700-LEE-MOVTOS', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1764], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '710-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1790], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '710-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '710-ACTUALIZA-CTLPROC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1789], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '750-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '750-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1810], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '750-CLOSE-ARCH', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1829], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '800-COMMIT', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1813], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1841], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1846], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1840], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '990-9900-FIN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1869], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1851], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'ECB025M', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'END-READ', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1768], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'FILE', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [41], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'W010-FCIERRE-ACT', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'W010-FCIERRE-ANT', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [513], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'W036-ICUENTA', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [789], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'W040-SDO-INI-PC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [813], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'W040-TOT-CARGOS-PC', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1067], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [58], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [401, 417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB025M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [451, 462, 473, 484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '032-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '046-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [981], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '066-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '069-9900-FIN', programName: 'ECB025M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '400-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1389, 1402], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1420, 1429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '501-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '502-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '504-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1485, 1494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '506-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1531], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '509-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1581, 1596, 1605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '511-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '512-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '602-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '604-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '800-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1822], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB025M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'END-READ', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1783], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'W010-FCIERRE-ANT', programName: 'ECB025M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [563, 567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [343], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DEDDEPRE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DEDIMPUE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DEDMOVPR'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DRISRSOC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBCU001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBED002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBFP004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBPR003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIE0251R'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [355], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [343], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'DEDDEPRE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'DEDIMPUE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'DEDMOVPR'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'DRISRSOC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'ECBCU001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'ECBED002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'ECBFP004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'ECBPR003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SIE0251R'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [355], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:DBTable {name: 'EDDEPRE'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1381, 1382, 1383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:DBTable {name: 'EDIMPUE'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1393, 1394, 1395, 1396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1539, 1540, 1541, 1542, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551, 1552, 1553], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1409, 1410, 1411, 1412, 1413, 1414, 1415, 1474, 1475, 1476, 1477, 1478, 1479, 1480], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:DBTable {name: 'RISRSOC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1583, 1584, 1585, 1586, 1587, 1588, 1589, 1590, 1591], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1741, 1742, 1743, 1744, 1745, 1746, 1747, 1748, 1749], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:DBTable {name: 'EDDEPRE'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1381, 1382, 1383, 1655, 1656, 1657, 1658, 1659, 1660, 1661, 1662, 1663, 1664, 1665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:DBTable {name: 'EDIMPUE'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1393, 1394, 1395, 1396, 1711, 1712, 1713, 1714, 1715, 1716, 1717, 1718], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Program {name: 'ECB025M'}), (b:DBTable {name: 'EDMOVPR'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1683, 1684, 1685, 1686, 1687, 1688, 1689, 1690, 1691, 1692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [401, 417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB025M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [451, 462, 473, 484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '032-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '046-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [981], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '066-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '069-9900-FIN', programName: 'ECB025M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '400-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1389, 1402], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1420, 1429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '501-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '502-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '504-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1485, 1494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '506-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1531], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '509-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1581, 1596, 1605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '511-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '512-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '602-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '604-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '800-0100-INICIO', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1822], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'ECB025M'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'END-READ', programName: 'ECB025M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [1783], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'W010-FCIERRE-ANT', programName: 'ECB025M'}), (b:Copybook {name: 'SIE0251P'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [563, 567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [343], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DEDDEPRE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DEDIMPUE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DEDMOVPR'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DRISRSOC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'DSEHIPRO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBCU001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBED002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBFP004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'ECBPR003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIE0251R'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB025M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB025M.cbl', evidenceLines: [355], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005707Z-ecb025m'};

