// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004804Z-ecb280m
// ============================================================================

MERGE (n:Copybook {name: 'DCTLPROC'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [351], ingestion: 'auto', layer: 'dependency', name: 'DCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDCONT'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [309], ingestion: 'auto', layer: 'dependency', name: 'DEDCONT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDDEPRE'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [330], ingestion: 'auto', layer: 'dependency', name: 'DEDDEPRE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDIMPUE'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [337], ingestion: 'auto', layer: 'dependency', name: 'DEDIMPUE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDMOVED'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [323], ingestion: 'auto', layer: 'dependency', name: 'DEDMOVED', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDREPER'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [302], ingestion: 'auto', layer: 'dependency', name: 'DEDREPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDSECIN'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [316], ingestion: 'auto', layer: 'dependency', name: 'DEDSECIN', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDVALCA'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [295], ingestion: 'auto', layer: 'dependency', name: 'DEDVALCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [344], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'EC2FP004'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [260], ingestion: 'auto', layer: 'dependency', name: 'EC2FP004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ECBEP007'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [267], ingestion: 'auto', layer: 'dependency', name: 'ECBEP007', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1323], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [246], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1293], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [274], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [419], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIEPAP04'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [253], ingestion: 'auto', layer: 'dependency', name: 'SIEPAP04', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIETATF6'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [288], ingestion: 'auto', layer: 'dependency', name: 'SIETATF6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [281], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1266, 1267, 1268, 1269, 1270, 1271], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDCONT'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1119, 1120, 1121, 1122, 1138, 1139, 1140], ingestion: 'auto', layer: 'data-access', name: 'EDCONT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDDEPRE'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1205, 1206, 1207, 1222, 1223, 1224, 1225], ingestion: 'auto', layer: 'data-access', name: 'EDDEPRE', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDREPER'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1021, 1022, 1023, 1024, 1025, 1026, 1042, 1043, 1044, 1045], ingestion: 'auto', layer: 'data-access', name: 'EDREPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDSECIN'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189], ingestion: 'auto', layer: 'data-access', name: 'EDSECIN', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [424, 425, 426, 427, 428, 429, 997, 998, 999, 1000, 1001, 1002, 1003, 1004], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [355], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [423], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [432], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-LEE-PARAMP04', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [422], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-LEE-PARAMP04', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB280M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [438], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [478], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-VERIFICA-EVENTO-ACTUAL', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [437], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-VERIFICA-EVENTO-ACTUAL', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Persiste actualizaciones de negocio en ECB280M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '012-0100-INICIALIZA', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [534], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '012-0100-INICIALIZA', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '012-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [583], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '012-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '012-INICIALIZA', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [533], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '012-INICIALIZA', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '013-0100-DEPURA-CTLPROC', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [590], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '013-0100-DEPURA-CTLPROC', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '013-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [639], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '013-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '013-DEPURA-CTLPROC', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [589], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '013-DEPURA-CTLPROC', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [647], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [672], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '014-LEE-CTLPROC', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [646], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '014-LEE-CTLPROC', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB280M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-CHECA-FIN-MES', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [679], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-CHECA-FIN-MES', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [690], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-CHECA-FIN-MES', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [678], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-CHECA-FIN-MES', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-0100-ARMA-ARCHIVO-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [700], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-0100-ARMA-ARCHIVO-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-0100-ARMA-ARCHIVO-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [716], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-0100-ARMA-ARCHIVO-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [721], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-ARMA-ARCHIVO-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [699], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-ARMA-ARCHIVO-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '016-ARMA-ARCHIVO-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [715], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '016-ARMA-ARCHIVO-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '017-0100-DEPURA-EDMOVED-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [743], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '017-0100-DEPURA-EDMOVED-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '017-0100-DEPURA-EDMOVED-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [725], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '017-0100-DEPURA-EDMOVED-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '017-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [756], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '017-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '017-DEPURA-EDMOVED-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [742], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '017-DEPURA-EDMOVED-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '017-DEPURA-EDMOVED-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [724], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '017-DEPURA-EDMOVED-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '018-0100-DEPURA-EDIMPUE-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [760], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '018-0100-DEPURA-EDIMPUE-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '018-0100-DEPURA-EDIMPUE-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [781], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '018-0100-DEPURA-EDIMPUE-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '018-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [791], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '018-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '018-DEPURA-EDIMPUE-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [759], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '018-DEPURA-EDIMPUE-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '018-DEPURA-EDIMPUE-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [780], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '018-DEPURA-EDIMPUE-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '019-0100-DEPURA-EDVALCA-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [795], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '019-0100-DEPURA-EDVALCA-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '019-0100-DEPURA-EDVALCA-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [833], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '019-0100-DEPURA-EDVALCA-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '019-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [853], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '019-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '019-DEPURA-EDVALCA-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [794], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '019-DEPURA-EDVALCA-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '019-DEPURA-EDVALCA-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [832], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '019-DEPURA-EDVALCA-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-DEPURA-EDREPER-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [857], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-DEPURA-EDREPER-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-DEPURA-EDREPER-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [881], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-DEPURA-EDREPER-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [482], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [901], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [515], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-DEPURA-EDREPER-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [856], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-DEPURA-EDREPER-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-DEPURA-EDREPER-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [880], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-DEPURA-EDREPER-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-FEC-CIERRE-ACT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [481], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-FEC-CIERRE-ACT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [521], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [527], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-FINAL', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [520], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-FINAL', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [908], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [922], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-EJECUTA-COMMIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [907], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-EJECUTA-COMMIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [929], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [954], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-EVENTO-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [928], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-EVENTO-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [960], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [988], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-CTLPROC', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [959], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-CTLPROC', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB280M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [995], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1013], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-PARAM', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [994], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-PARAM', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB280M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1060], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1053], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1085], executionOrder: 9100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-DEL-EDREPER-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1019], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-DEL-EDREPER-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-DEL-EDREPER-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1040], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-DEL-EDREPER-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-INSERT-CTLPROC', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1059], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-INSERT-CTLPROC', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Persiste actualizaciones de negocio en ECB280M, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1137], executionOrder: 9900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1148], executionOrder: 10000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1110], executionOrder: 9400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-DEL-EDCONT-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1117], executionOrder: 9500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-DEL-EDCONT-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-DEL-EDCONT-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1136], executionOrder: 9800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-DEL-EDCONT-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-UPDATE-CTLPROC', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1090], executionOrder: 9200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1179], executionOrder: 10500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1197], executionOrder: 10600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-DEL-EDSECIN-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1154], executionOrder: 10100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-DEL-EDSECIN-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-DEL-EDSECIN-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1178], executionOrder: 10400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-DEL-EDSECIN-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1221], executionOrder: 11100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1233], executionOrder: 11200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-DEL-EDDEPRE-DEF', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1203], executionOrder: 10700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-DEL-EDDEPRE-DEF', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-DEL-EDDEPRE-PREV', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1220], executionOrder: 11000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-DEL-EDDEPRE-PREV', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1239], executionOrder: 11400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1258], executionOrder: 11500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-UPDATE-CTLPROC', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1238], executionOrder: 11300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-UPDATE-CTLPROC', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '670-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1265], executionOrder: 11700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '670-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '670-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1279], executionOrder: 11800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '670-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '670-BORRA-CTLPROC', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1264], executionOrder: 11600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '670-BORRA-CTLPROC', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1283], executionOrder: 12000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1287], executionOrder: 12100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-COMMIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1282], executionOrder: 11900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-COMMIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1300], executionOrder: 12300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Inicializa el flujo operativo de ECB280M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0200-SIGUE', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1304], executionOrder: 12400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0200-SIGUE', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1308], executionOrder: 12500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Cierra la ejecucion de ECB280M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1299], executionOrder: 12200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Gestiona contingencias en ECB280M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIA', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1314], executionOrder: 12700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIA', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-EXIT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1316], executionOrder: 12800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-EXIT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1313], executionOrder: 12600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [23], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [11], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB280M', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB280M', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [43], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [30], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [27], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [29], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [9], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [26], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'REG4-COMA2', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [582], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'REG4-COMA2', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [24], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'})
SET n += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [85], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB280M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', summary: 'Orquesta una fase funcional de ECB280M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB280M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB280M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m', sourceFile: 'src/ECB280M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [355], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '005-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '005-LEE-PARAMP04', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '010-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '010-VERIFICA-EVENTO-ACTUAL', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '012-0100-INICIALIZA', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [534], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '012-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [583], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '012-INICIALIZA', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [533], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '013-0100-DEPURA-CTLPROC', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [590], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '013-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [639], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '013-DEPURA-CTLPROC', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '014-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '014-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '014-LEE-CTLPROC', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '015-0100-CHECA-FIN-MES', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '015-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '015-CHECA-FIN-MES', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '016-0100-ARMA-ARCHIVO-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '016-0100-ARMA-ARCHIVO-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [716], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '016-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '016-ARMA-ARCHIVO-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '016-ARMA-ARCHIVO-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [715], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '017-0100-DEPURA-EDMOVED-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [743], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '017-0100-DEPURA-EDMOVED-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [725], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '017-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [756], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '017-DEPURA-EDMOVED-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [742], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '017-DEPURA-EDMOVED-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '018-0100-DEPURA-EDIMPUE-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [760], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '018-0100-DEPURA-EDIMPUE-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '018-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [791], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '018-DEPURA-EDIMPUE-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '018-DEPURA-EDIMPUE-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [780], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '019-0100-DEPURA-EDVALCA-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [795], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '019-0100-DEPURA-EDVALCA-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [833], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '019-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '019-DEPURA-EDVALCA-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [794], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '019-DEPURA-EDVALCA-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [832], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '020-0100-DEPURA-EDREPER-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [857], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '020-0100-DEPURA-EDREPER-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '020-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [901], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '020-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '020-DEPURA-EDREPER-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [856], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '020-DEPURA-EDREPER-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [880], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '020-FEC-CIERRE-ACT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [521], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '050-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '050-FINAL', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [520], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '100-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [908], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '100-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [922], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '100-EJECUTA-COMMIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [907], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [929], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [954], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '500-LEE-EVENTO-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [928], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [960], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '510-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '510-LEE-CTLPROC', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [959], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [995], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '550-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1013], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '550-LEE-PARAM', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [994], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1060], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '600-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1053], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '600-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1085], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '600-DEL-EDREPER-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1019], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '600-DEL-EDREPER-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1040], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '600-INSERT-CTLPROC', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1059], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '610-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '610-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '610-DEL-EDCONT-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '610-DEL-EDCONT-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '610-UPDATE-CTLPROC', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1090], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '620-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '620-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '620-DEL-EDSECIN-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '620-DEL-EDSECIN-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '630-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '630-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '630-DEL-EDDEPRE-DEF', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '630-DEL-EDDEPRE-PREV', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '640-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '640-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '640-UPDATE-CTLPROC', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '670-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '670-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '670-BORRA-CTLPROC', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '800-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '800-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '800-COMMIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1300], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '980-0200-SIGUE', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1299], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '990-0100-INICIA', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '990-9900-EXIT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'ECB280M', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'FILE', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'REG4-COMA2', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB280M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '013-0100-DEPURA-CTLPROC', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [608, 630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '014-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '020-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '100-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [981], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1011], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1031, 1050], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1127, 1145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1169, 1194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1212, 1230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '670-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '990-9900-EXIT', programName: 'ECB280M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDDEPRE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDIMPUE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDSECIN'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'DEDDEPRE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'DEDIMPUE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'DEDSECIN'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 591, 592, 593, 594, 595, 596, 597, 598, 613, 614, 615, 616, 617, 618, 619, 620, 649, 650, 651, 652, 653, 654, 655, 656, 930, 931, 932, 933, 934, 935, 936, 937, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 1266, 1267, 1268, 1269, 1270, 1271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'EDCONT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1119, 1120, 1121, 1122, 1138, 1139, 1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'EDDEPRE'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1205, 1206, 1207, 1222, 1223, 1224, 1225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'EDREPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1021, 1022, 1023, 1024, 1025, 1026, 1042, 1043, 1044, 1045], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'EDSECIN'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [424, 425, 426, 427, 428, 429, 997, 998, 999, 1000, 1001, 1002, 1003, 1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1099, 1100, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1266, 1267, 1268, 1269, 1270, 1271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'EDCONT'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1119, 1120, 1121, 1122, 1138, 1139, 1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'EDDEPRE'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1205, 1206, 1207, 1222, 1223, 1224, 1225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'EDREPER'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1021, 1022, 1023, 1024, 1025, 1026, 1042, 1043, 1044, 1045], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Program {name: 'ECB280M'}), (b:DBTable {name: 'EDSECIN'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB280M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '013-0100-DEPURA-CTLPROC', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [608, 630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '014-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '020-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '100-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [981], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1011], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1031, 1050], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1127, 1145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '620-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1169, 1194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1212, 1230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '670-0100-INICIO', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '800-9900-FIN', programName: 'ECB280M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: '990-9900-EXIT', programName: 'ECB280M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [1323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDCONT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDDEPRE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDIMPUE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDMOVED'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDSECIN'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DEDVALCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'EC2FP004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'ECBEP007'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB280M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB280M.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004804Z-ecb280m'};

