// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T005802Z-ecb210m
// ============================================================================

MERGE (n:Copybook {name: 'DCONCEPT'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [140], ingestion: 'auto', layer: 'dependency', name: 'DCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [126], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDCONT'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [95], ingestion: 'auto', layer: 'dependency', name: 'DEDCONT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDCUENT'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [81], ingestion: 'auto', layer: 'dependency', name: 'DEDCUENT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDVALCA'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [133], ingestion: 'auto', layer: 'dependency', name: 'DEDVALCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [88], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSEATRCA'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [161], ingestion: 'auto', layer: 'dependency', name: 'DSEATRCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSECART'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [154], ingestion: 'auto', layer: 'dependency', name: 'DSECART', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSIPRCON'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [168], ingestion: 'auto', layer: 'dependency', name: 'DSIPRCON', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'EC2FP004'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [73], ingestion: 'auto', layer: 'dependency', name: 'EC2FP004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBEP007'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [64], ingestion: 'auto', layer: 'dependency', name: 'ECBEP007', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'NCONCEPT'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [147], ingestion: 'auto', layer: 'dependency', name: 'NCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1419], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [104], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1376], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [112], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [385], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [374], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [119], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'AGPOCTA'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1223, 1224, 1225, 1226, 1228, 1229, 1247, 1248, 1249, 1250, 1251, 1252], ingestion: 'auto', layer: 'data-access', name: 'AGPOCTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDCONT'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1201, 1202, 1203, 1204, 1205, 1223, 1224, 1225, 1226, 1228, 1229, 1247, 1248, 1249, 1250, 1251, 1252, 1269, 1270, 1271, 1272, 1273, 1289, 1290, 1291, 1292, 1293, 1294], ingestion: 'auto', layer: 'data-access', name: 'EDCONT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDCUENTA'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [354, 355, 356, 357, 358, 359, 363, 364, 365, 366, 367, 368, 1289, 1290, 1291, 1292, 1293, 1294], ingestion: 'auto', layer: 'data-access', name: 'EDCUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDVALCA'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1053, 1054, 1055, 1056, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139, 1140], ingestion: 'auto', layer: 'data-access', name: 'EDVALCA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [330, 331, 332, 333, 334, 335, 336, 337, 342, 343, 344, 345, 346, 347, 348, 349], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'SECART'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325], ingestion: 'auto', layer: 'data-access', name: 'SECART', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'SIPRCON'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1075, 1076, 1077, 1078, 1079, 1080, 1081], ingestion: 'auto', layer: 'data-access', name: 'SIPRCON', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-PROCESO-CONTROL', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [377], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-PROCESO-CONTROL', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [392], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [391], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [419], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [426], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-9900-EXIT', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [449], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-9900-EXIT', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-LEE-CTLPROC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [425], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-LEE-CTLPROC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB210M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [456], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [471], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [455], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [478], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [510], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-CORTE-REG', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [477], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-CORTE-REG', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [517], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [581], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-MUEVE-DATOS', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [516], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-MUEVE-DATOS', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [588], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [594], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-FINAL', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [587], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-FINAL', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [601], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [627], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PREVIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [600], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PREVIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [636], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [640], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-CONT-PROM', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [635], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-CONT-PROM', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '071-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [647], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '071-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '071-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [655], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '071-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '071-CONT-PROM', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [646], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '071-CONT-PROM', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [662], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [669], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-PROC-LPROM', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [661], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-PROC-LPROM', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [677], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [681], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-CONT-SUC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [676], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-CONT-SUC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '081-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [688], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '081-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '081-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [696], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '081-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '081-CONT-SUC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [687], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '081-CONT-SUC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '085-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [703], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '085-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '085-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [710], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '085-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '085-PROC-LSUC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [702], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '085-PROC-LSUC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [717], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [727], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-OPEN-SECART', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [716], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-OPEN-SECART', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [734], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [788], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-SECART', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [733], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-SECART', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB210M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '511-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [795], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '511-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '511-LEE-SECART', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [794], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '511-LEE-SECART', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB210M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '512-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [856], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '512-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '512-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [866], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '512-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '512-OPEN-SUC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [855], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '512-OPEN-SUC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '513-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [874], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '513-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '513-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [884], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '513-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '513-OPEN-PROM', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [873], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '513-OPEN-PROM', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '514-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [892], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '514-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '514-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [902], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '514-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '514-OPEN-LSUC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [891], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '514-OPEN-LSUC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [909], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [919], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-OPEN-LPROM', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [908], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-OPEN-LPROM', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '516-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [927], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '516-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '516-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [937], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '516-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '516-OPEN-SECART', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [926], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '516-OPEN-SECART', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [944], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [962], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-SUC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [943], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-SUC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB210M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '525-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [968], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '525-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '525-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [984], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '525-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '525-LEE-LSUC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [967], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '525-LEE-LSUC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB210M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [992], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1010], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-PROM', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [991], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-PROM', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB210M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '535-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1018], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '535-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '535-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1034], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '535-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '535-LEE-PROM', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1017], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '535-LEE-PROM', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB210M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1041], executionOrder: 9200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1067], executionOrder: 9300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-BORRA-EDVALCA', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1040], executionOrder: 9100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-BORRA-EDVALCA', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1074], executionOrder: 9500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1094], executionOrder: 9600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-SIPRCON', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1073], executionOrder: 9400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-SIPRCON', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB210M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1102], executionOrder: 9800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1120], executionOrder: 9900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-LEE-CTLPROC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1101], executionOrder: 9700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-LEE-CTLPROC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB210M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1127], executionOrder: 10100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1167], executionOrder: 10200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-INSERT-EDVALCA', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1126], executionOrder: 10000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-INSERT-EDVALCA', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Persiste actualizaciones de negocio en ECB210M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1174], executionOrder: 10400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1193], executionOrder: 10500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-UPDATE-CTLPROC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1173], executionOrder: 10300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '625-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1200], executionOrder: 10700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '625-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '625-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1213], executionOrder: 10800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '625-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '625-UPDATE-EDCONT', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1199], executionOrder: 10600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '625-UPDATE-EDCONT', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1222], executionOrder: 11000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1238], executionOrder: 11100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-INSERT-EDCONT', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1221], executionOrder: 10900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-INSERT-EDCONT', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Persiste actualizaciones de negocio en ECB210M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1246], executionOrder: 11300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1260], executionOrder: 11400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-INSERT-EDCONT', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1245], executionOrder: 11200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-INSERT-EDCONT', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Persiste actualizaciones de negocio en ECB210M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '645-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1268], executionOrder: 11600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '645-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '645-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1280], executionOrder: 11700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '645-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '645-INSERT-EDCONT', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1267], executionOrder: 11500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '645-INSERT-EDCONT', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Persiste actualizaciones de negocio en ECB210M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1288], executionOrder: 11900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1302], executionOrder: 12000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-INSERT-EDCONT', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1287], executionOrder: 11800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-INSERT-EDCONT', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Persiste actualizaciones de negocio en ECB210M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1308], executionOrder: 12200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1318], executionOrder: 12300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-CLOSE-SUC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1307], executionOrder: 12100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-CLOSE-SUC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1325], executionOrder: 12500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1335], executionOrder: 12600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-CLOSE-PROM', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1324], executionOrder: 12400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-CLOSE-PROM', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1342], executionOrder: 12800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1352], executionOrder: 12900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-CLOSE-LSUC', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1341], executionOrder: 12700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-CLOSE-LSUC', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-0100-INICIO', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1359], executionOrder: 13100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-0100-INICIO', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Inicializa el flujo operativo de ECB210M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1369], executionOrder: 13200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-CLOSE-LPROM', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1358], executionOrder: 13000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-CLOSE-LPROM', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1387], executionOrder: 13400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1379], executionOrder: 13300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Gestiona contingencias en ECB210M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-099-FIN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1410], executionOrder: 13600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-099-FIN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Cierra la ejecucion de ECB210M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1390], executionOrder: 13500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [8], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [33], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [13], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB210M', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB210M', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [45], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [40], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [37], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [39], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [11], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [36], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [6], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [34], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'})
SET n += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [47], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB210M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', summary: 'Orquesta una fase funcional de ECB210M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB210M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB210M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m', sourceFile: 'src/ECB210M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '000-0100-PROCESO-CONTROL', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '010-INICIO-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '014-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '014-9900-EXIT', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '014-LEE-CTLPROC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '020-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '020-PROCESO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '030-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '030-CORTE-REG', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [517], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '040-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [581], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '040-MUEVE-DATOS', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '050-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '050-FINAL', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [601], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '060-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '060-PREVIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [600], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '070-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '070-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '070-CONT-PROM', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '071-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '071-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [655], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '071-CONT-PROM', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '075-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '075-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [669], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '075-PROC-LPROM', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [661], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '080-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '080-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '080-CONT-SUC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [676], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '081-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [688], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '081-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [696], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '081-CONT-SUC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '085-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [703], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '085-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [710], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '085-PROC-LSUC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [717], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '500-OPEN-SECART', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [716], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [734], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '510-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '510-LEE-SECART', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '511-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [795], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '511-LEE-SECART', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [794], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '512-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [856], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '512-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [866], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '512-OPEN-SUC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [855], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '513-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [874], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '513-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [884], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '513-OPEN-PROM', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [873], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '514-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [892], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '514-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '514-OPEN-LSUC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [891], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '515-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '515-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [919], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '515-OPEN-LPROM', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [908], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '516-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [927], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '516-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '516-OPEN-SECART', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [926], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [944], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '520-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [962], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '520-LEE-SUC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [943], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '525-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [968], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '525-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '525-LEE-LSUC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [967], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '530-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [992], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '530-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1010], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '530-LEE-PROM', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [991], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '535-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1018], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '535-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1034], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '535-LEE-PROM', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1017], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1041], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '550-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1067], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '550-BORRA-EDVALCA', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1040], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '560-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1074], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '560-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1094], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '560-LEE-SIPRCON', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1073], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '570-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '570-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '570-LEE-CTLPROC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '610-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '610-INSERT-EDVALCA', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '620-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '620-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '620-UPDATE-CTLPROC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '625-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '625-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '625-UPDATE-EDCONT', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '630-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1222], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '630-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '630-INSERT-EDCONT', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '640-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '640-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '640-INSERT-EDCONT', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '645-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '645-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '645-INSERT-EDCONT', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '650-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '650-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '650-INSERT-EDCONT', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '700-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '700-CLOSE-SUC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '710-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '710-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '710-CLOSE-PROM', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '720-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '720-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '720-CLOSE-LSUC', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '730-0100-INICIO', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '730-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '730-CLOSE-LPROM', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '990-099-FIN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [13], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'ECB210M', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'FILE', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '000-0100-PROCESO-CONTROL', programName: 'ECB210M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '014-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [725], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '511-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '512-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [864], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '513-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '514-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [900], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [917], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '516-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [935], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [954], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '525-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [977], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '530-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1002], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '535-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1027], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1049, 1061], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '560-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1086], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '570-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '625-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '645-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '710-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '720-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '730-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '730-9900-FIN', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB210M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DSEATRCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DSECART'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DSIPRCON'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'NCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'DSEATRCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'DSECART'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'DSIPRCON'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'NCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'AGPOCTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1223, 1224, 1225, 1226, 1228, 1229, 1247, 1248, 1249, 1250, 1251, 1252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [427, 428, 429, 430, 431, 432, 433, 434, 1103, 1104, 1105, 1106, 1107, 1108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'EDCONT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'EDCUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [354, 355, 356, 357, 358, 359, 363, 364, 365, 366, 367, 368, 1289, 1290, 1291, 1292, 1293, 1294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1053, 1054, 1055, 1056], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [330, 331, 332, 333, 334, 335, 336, 337, 342, 343, 344, 345, 346, 347, 348, 349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'SECART'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'SIPRCON'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1075, 1076, 1077, 1078, 1079, 1080, 1081], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'EDCONT'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1201, 1202, 1203, 1204, 1205, 1223, 1224, 1225, 1226, 1228, 1229, 1247, 1248, 1249, 1250, 1251, 1252, 1269, 1270, 1271, 1272, 1273, 1289, 1290, 1291, 1292, 1293, 1294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Program {name: 'ECB210M'}), (b:DBTable {name: 'EDVALCA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1053, 1054, 1055, 1056, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139, 1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '000-0100-PROCESO-CONTROL', programName: 'ECB210M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '014-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [725], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '511-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '512-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [864], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '513-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '514-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [900], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [917], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '516-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [935], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [954], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '525-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [977], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '530-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1002], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '535-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1027], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1049, 1061], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '560-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1086], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '570-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '625-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '645-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '710-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '720-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '730-0100-INICIO', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '730-9900-FIN', programName: 'ECB210M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB210M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [1419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DSEATRCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DSECART'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'DSIPRCON'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'NCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB210M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB210M.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T005802Z-ecb210m'};

