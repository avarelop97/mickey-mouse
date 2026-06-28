// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T010237Z-ecb300m
// ============================================================================

MERGE (n:Copybook {name: 'DAGPOPRO'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [349], ingestion: 'auto', layer: 'dependency', name: 'DAGPOPRO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDCUENT'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [342], ingestion: 'auto', layer: 'dependency', name: 'DEDCUENT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEDREPER'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [363], ingestion: 'auto', layer: 'dependency', name: 'DEDREPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DESTZONE'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [335], ingestion: 'auto', layer: 'dependency', name: 'DESTZONE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DGFSUCUR'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [356], ingestion: 'auto', layer: 'dependency', name: 'DGFSUCUR', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [321], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSUCURSA'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [328], ingestion: 'auto', layer: 'dependency', name: 'DSUCURSA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DSVCTOCB'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [370], ingestion: 'auto', layer: 'dependency', name: 'DSVCTOCB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1671], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1678], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [296], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [381], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1636], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [310], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [303], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE029'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1685], ingestion: 'auto', layer: 'dependency', name: 'SICCE029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [738], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICNC011'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [389], ingestion: 'auto', layer: 'dependency', name: 'SICNC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIEPAP04'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [282], ingestion: 'auto', layer: 'dependency', name: 'SIEPAP04', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIETATF6'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [289], ingestion: 'auto', layer: 'dependency', name: 'SIETATF6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [314], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'EDCUENTA'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [604, 605, 606, 607, 608, 609, 610, 611, 613, 615, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 630, 631, 632, 633, 634, 636, 637, 638, 644, 646, 651, 652, 653, 654, 655, 656, 657, 658, 660, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 681, 682, 683, 684, 685, 687, 688], ingestion: 'auto', layer: 'data-access', name: 'EDCUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EDREPER'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [604, 605, 606, 607, 608, 609, 610, 611, 613, 615, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 630, 631, 632, 633, 634, 636, 637, 638, 644, 646, 651, 652, 653, 654, 655, 656, 657, 658, 660, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 681, 682, 683, 684, 685, 687, 688], ingestion: 'auto', layer: 'data-access', name: 'EDREPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'GFSUCUR'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1504, 1505, 1506, 1507, 1508, 1509], ingestion: 'auto', layer: 'data-access', name: 'GFSUCUR', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [604, 605, 606, 607, 608, 609, 610, 611, 613, 615, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 630, 631, 632, 633, 634, 636, 637, 638, 644, 646, 651, 652, 653, 654, 655, 656, 657, 658, 660, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 681, 682, 683, 684, 685, 687, 688, 693, 694, 695, 696, 697, 698, 699, 700, 1412, 1413, 1414, 1415, 1416, 1417, 1418], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'SVCTOCB'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [604, 605, 606, 607, 608, 609, 610, 611, 613, 615, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 630, 631, 632, 633, 634, 636, 637, 638, 644, 646, 1481, 1482, 1483, 1484, 1485, 1486], ingestion: 'auto', layer: 'data-access', name: 'SVCTOCB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [728], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [718], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [745], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [796], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [744], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [814], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [881], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [807], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-LEYENDA', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [802], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-LEYENDA', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-LLENA-SEC', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [813], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-LLENA-SEC', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [888], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [935], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-SEC', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [887], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-SEC', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [966], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [982], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-PROC-IPOS', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [965], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-PROC-IPOS', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [990], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1007], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-PROC-EST', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [989], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-PROC-EST', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1014], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1144], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROC-DET', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1013], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROC-DET', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1151], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-9900-FIN', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1169], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-9900-FIN', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-IMPRIME-ETIQ', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1150], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-IMPRIME-ETIQ', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1176], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-9900-FIN', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1226], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-9900-FIN', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-IMPRIME-ACUSE', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1175], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-IMPRIME-ACUSE', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1233], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1315], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1232], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB300M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1322], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-9900-FIN', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1404], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-9900-FIN', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-LEE-CURSOR', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1321], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-LEE-CURSOR', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB300M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1411], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1427], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-PARAM', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1410], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-PARAM', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB300M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1434], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1449], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-SEC', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1433], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-SEC', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB300M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '535-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1456], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '535-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '535-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1473], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '535-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '535-LEE-PARAM', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1455], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '535-LEE-PARAM', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB300M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1480], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1494], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-LEE-SVCTOCB', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1479], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-LEE-SVCTOCB', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ECB300M y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1502], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1522], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-OBT-NOM-SUC', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1501], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-OBT-NOM-SUC', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1528], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1550], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ABRE-CURSOR', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1527], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ABRE-CURSOR', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1557], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1567], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-CIERRA-CURSOR', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1556], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-CIERRA-CURSOR', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1574], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1585], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-ABRE-CURSOR', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1573], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-ABRE-CURSOR', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '645-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1591], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '645-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '645-9900-EXIT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1602], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '645-9900-EXIT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '645-CIERRA-CURSOR', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1590], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '645-CIERRA-CURSOR', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1609], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1629], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ENCA', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1608], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ENCA', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1643], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1652], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1642], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Gestiona contingencias en ECB300M, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-0100-INICIO', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1659], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-0100-INICIO', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Inicializa el flujo operativo de ECB300M, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-099-FIN', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1664], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-099-FIN', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Cierra la ejecucion de ECB300M, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1658], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'BBV-PROBURSA', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [7], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'BBV-PROBURSA', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [35], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [8], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'ECB300M', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'ECB300M', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [50], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [42], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [39], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [41], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [702], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [38], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [36], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'})
SET n += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [125], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ECB300M', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', summary: 'Orquesta una fase funcional de ECB300M, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ECB300M'})
SET n += {ingestion: 'auto', layer: 'program', name: 'ECB300M', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m', sourceFile: 'src/ECB300M.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '000-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [728], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '000-CONTROL', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [718], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [745], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '010-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [796], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '010-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [744], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '020-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '020-9900-FIN', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '020-LEYENDA', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [802], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '020-LLENA-SEC', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [813], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [888], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '030-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [935], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '030-PROCESA-SEC', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [887], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [966], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '040-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [982], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '040-PROC-IPOS', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [965], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [990], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '050-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1007], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '050-PROC-EST', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1014], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '060-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '060-PROC-DET', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1013], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '070-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1151], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '070-9900-FIN', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1169], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '070-IMPRIME-ETIQ', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '080-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '080-9900-FIN', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '080-IMPRIME-ACUSE', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '500-9900-FIN', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '500-LEE-CURSOR', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '505-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '505-9900-FIN', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '505-LEE-CURSOR', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '510-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '510-LEE-PARAM', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '520-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '520-LEE-SEC', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '535-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '535-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '535-LEE-PARAM', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '540-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1480], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '540-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1494], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '540-LEE-SVCTOCB', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '550-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '550-OBT-NOM-SUC', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1501], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1528], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '600-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1550], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '600-ABRE-CURSOR', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '610-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '610-CIERRA-CURSOR', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1556], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '635-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1574], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '635-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '635-ABRE-CURSOR', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '645-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1591], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '645-9900-EXIT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '645-CIERRA-CURSOR', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1590], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '700-9900-FIN', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '700-ENCA', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1643], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '980-9900-FIN', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '980-ABORTA', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '990-0100-INICIO', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1659], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '990-099-FIN', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1664], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1658], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'AUTHOR', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'BBV-PROBURSA', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'ECB300M', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'FILE', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'IBM-9121', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [41], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'LINKAGE', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [738], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [719], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [908], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '535-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '540-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1492], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1537, 1547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '645-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1613], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1671], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB300M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1685], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DESTZONE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DGFSUCUR'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DSUCURSA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DSVCTOCB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'DESTZONE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'DGFSUCUR'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'DSUCURSA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'DSVCTOCB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1671], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1685], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [738], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:DBTable {name: 'EDCUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [604, 605, 606, 607, 608, 609, 610, 611, 613, 615, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 630, 631, 632, 633, 634, 636, 637, 638, 644, 646, 651, 652, 653, 654, 655, 656, 657, 658, 660, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 681, 682, 683, 684, 685, 687, 688], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:DBTable {name: 'EDREPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [604, 605, 606, 607, 608, 609, 610, 611, 613, 615, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 630, 631, 632, 633, 634, 636, 637, 638, 644, 646, 651, 652, 653, 654, 655, 656, 657, 658, 660, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 681, 682, 683, 684, 685, 687, 688], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:DBTable {name: 'GFSUCUR'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1504, 1505, 1506, 1507, 1508, 1509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [604, 605, 606, 607, 608, 609, 610, 611, 613, 615, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 630, 631, 632, 633, 634, 636, 637, 638, 644, 646, 651, 652, 653, 654, 655, 656, 657, 658, 660, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 681, 682, 683, 684, 685, 687, 688, 693, 694, 695, 696, 697, 698, 699, 700, 1412, 1413, 1414, 1415, 1416, 1417, 1418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Program {name: 'ECB300M'}), (b:DBTable {name: 'SVCTOCB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [604, 605, 606, 607, 608, 609, 610, 611, 613, 615, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 630, 631, 632, 633, 634, 636, 637, 638, 644, 646, 1481, 1482, 1483, 1484, 1485, 1486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '000-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [738], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [719], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [908], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '505-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '535-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '540-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1492], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1537, 1547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '635-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '645-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1613], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '700-0100-INICIO', programName: 'ECB300M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'ECB300M'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1671], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB300M'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: '990-099-FIN', programName: 'ECB300M'}), (b:Copybook {name: 'SICCE029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [1685], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DAGPOPRO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DEDCUENT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DEDREPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DESTZONE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DGFSUCUR'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DSUCURSA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'DSVCTOCB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SICNC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SIEPAP04'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SIETATF6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ECB300M'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ECB300M.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T010237Z-ecb300m'};

