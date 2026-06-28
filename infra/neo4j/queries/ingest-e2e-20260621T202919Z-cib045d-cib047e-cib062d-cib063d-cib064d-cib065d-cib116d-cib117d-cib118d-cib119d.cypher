// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d
// ============================================================================

MERGE (n:Copybook {name: 'DCONCEPT'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [220], ingestion: 'auto', layer: 'dependency', name: 'DCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCONGTIA'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [357], ingestion: 'auto', layer: 'dependency', name: 'DCONGTIA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCONTITU'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [406], ingestion: 'auto', layer: 'dependency', name: 'DCONTITU', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCTAMARC'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [250], ingestion: 'auto', layer: 'dependency', name: 'DCTAMARC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCUENTA'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [396], ingestion: 'auto', layer: 'dependency', name: 'DCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DDEFOPER'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [386], ingestion: 'auto', layer: 'dependency', name: 'DDEFOPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPECORI'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [240], ingestion: 'auto', layer: 'dependency', name: 'DOPECORI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERCOB'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [202], ingestion: 'auto', layer: 'dependency', name: 'DOPERCOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [245], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DTIPCAMB'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [87], ingestion: 'auto', layer: 'dependency', name: 'DTIPCAMB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [708], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [741], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [104], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [153], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [209], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC001'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [482], ingestion: 'auto', layer: 'dependency', name: 'SIC001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [692], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [118], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC231'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [246], ingestion: 'auto', layer: 'dependency', name: 'SIC231', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [146], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE028'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1714], ingestion: 'auto', layer: 'dependency', name: 'SICCE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1707], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [632], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [517], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [499], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICNF043'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [139], ingestion: 'auto', layer: 'dependency', name: 'SICNF043', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPAP03'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [311], ingestion: 'auto', layer: 'dependency', name: 'SICPAP03', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPAP73'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [496], ingestion: 'auto', layer: 'dependency', name: 'SICPAP73', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA2'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [281], ingestion: 'auto', layer: 'dependency', name: 'SICPATA2', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPATA3'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [502], ingestion: 'auto', layer: 'dependency', name: 'SICPATA3', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPT104'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [231], ingestion: 'auto', layer: 'dependency', name: 'SICPT104', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [64], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [132], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [125], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [701], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [111], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CONCEPT'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [681, 682, 683, 684, 685, 686, 687, 688, 689, 690], ingestion: 'auto', layer: 'data-access', name: 'CONCEPT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CONGTIA'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608], ingestion: 'auto', layer: 'data-access', name: 'CONGTIA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CONTITU'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1623, 1624, 1625, 1626, 1627, 1628, 1629, 1630], ingestion: 'auto', layer: 'data-access', name: 'CONTITU', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'DEFOPER'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1217, 1218, 1219, 1220, 1221, 1222, 1223], ingestion: 'auto', layer: 'data-access', name: 'DEFOPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERCOB'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382], ingestion: 'auto', layer: 'data-access', name: 'OPERCOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [374, 375, 376, 377, 378, 379, 380, 381, 382], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'TIPCAMB'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206], ingestion: 'auto', layer: 'data-access', name: 'TIPCAMB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [579], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [642], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [646], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0050-ABRE-CURSOR', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0200-OPERACIONES-COMPRA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [660], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0200-OPERACIONES-COMPRA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0300-OPERACIONES-VENTA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [710], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0300-OPERACIONES-VENTA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [798], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [645], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-FECHOY', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [802], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-FECHOY', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0200-FECHABIL-MANANA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [807], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0200-FECHABIL-MANANA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [825], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-FECHA-HOY-MANANA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [801], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-FECHA-HOY-MANANA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-INICIALIZA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [578], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [829], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0200-SUMA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [885], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0200-SUMA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0300-IMPRIME-DETALLE', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1047], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0300-IMPRIME-DETALLE', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [980], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-COMPRA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [828], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-COMPRA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [984], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0200-SUMA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1043], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0200-SUMA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1138], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-VENTA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [983], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-VENTA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1145], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1234], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-PARAM', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1144], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-PARAM', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB045D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1238], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1263], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1237], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERCOB', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB045D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1178], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1202], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1177], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB045D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1209], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-LEE-CONCEPT', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1208], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-LEE-CONCEPT', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB045D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1267], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1307], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ESC-ENCA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1266], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ESC-ENCA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700A-0100-INICIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1290], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700A-0100-INICIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700A-ESC-ENCA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1289], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700A-ESC-ENCA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1318], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Inicializa el flujo operativo de CIB045D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1330], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1317], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Gestiona contingencias en CIB045D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1337], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Cierra la ejecucion de CIB045D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1336], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB045D', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB045D', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [75], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [565], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DECLRA-CURSR', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [90], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [82], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [79], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [81], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [78], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [76], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'})
SET n += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [103], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB045D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', summary: 'Orquesta una fase funcional de CIB045D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [676], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [794], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [814], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [855], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-TABLA-DE-VALUACION', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [813], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-TABLA-DE-VALUACION', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [859], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [902], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-TABLA-DE-TASAS', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [858], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-TABLA-DE-TASAS', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-INICIALIZA', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [675], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [906], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [930], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-DETA-REPORTE-1', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [905], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-DETA-REPORTE-1', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [933], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [950], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-MENOR-DE-30', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [932], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-MENOR-DE-30', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [953], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [966], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-MENOR-DE-90', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [952], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-MENOR-DE-90', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [969], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [982], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-MENOR-DE-180', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [968], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-MENOR-DE-180', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '051-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [985], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '051-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '051-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [997], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '051-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '051-MENOR-DE-365', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [984], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '051-MENOR-DE-365', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '052-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1000], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '052-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '052-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1016], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '052-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '052-IMPRIME-TOTALES', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [999], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '052-IMPRIME-TOTALES', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1019], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1063], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-TOTALES-FINAL', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1018], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-TOTALES-FINAL', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '057-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1066], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '057-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '057-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1085], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '057-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '057-IMPRIME-TOTALES-FINALES', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1065], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '057-IMPRIME-TOTALES-FINALES', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1088], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1107], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-GRUPO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1087], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-GRUPO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '061-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1110], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '061-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '061-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1127], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '061-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '061-DIAS-POR-LIQUIDAR', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1109], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '061-DIAS-POR-LIQUIDAR', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '063-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1130], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '063-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '063-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1189], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '063-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '063-TRAE-TASAS-ASO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1129], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '063-TRAE-TASAS-ASO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1192], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1305], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-CALCULA-DIA', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1191], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-CALCULA-DIA', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '067-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1308], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '067-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '067-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1322], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '067-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '067-IMPRIME-DIA', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1307], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '067-IMPRIME-DIA', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '069-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1325], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '069-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '069-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1331], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '069-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '069-SUMA-DIA-A-GRUPO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1324], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '069-SUMA-DIA-A-GRUPO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1334], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1340], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-GRUPO-SUMA', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1333], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-GRUPO-SUMA', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1343], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1355], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-GRUPO-IMPRIME-TOT', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1342], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-GRUPO-IMPRIME-TOT', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1358], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1469], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-DIA', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1357], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-DIA', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1472], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1530], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-DDEVENGADOS-A-VP', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1471], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-DDEVENGADOS-A-VP', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1533], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1558], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-TASA-ASOCIADA', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1532], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-TASA-ASOCIADA', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1561], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1585], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-PARAM', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1560], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-PARAM', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB047E y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1589], executionOrder: 8800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1605], executionOrder: 8900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-CURSOR-PARAM', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1588], executionOrder: 8700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-CURSOR-PARAM', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB047E y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1608], executionOrder: 9100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1633], executionOrder: 9200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-OPERCOB', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1607], executionOrder: 9000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-OPERCOB', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB047E y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1637], executionOrder: 9400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1649], executionOrder: 9500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ESC-ENCA-1', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1636], executionOrder: 9300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ESC-ENCA-1', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1653], executionOrder: 9700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1665], executionOrder: 9800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-ESC-ENCA-2', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1652], executionOrder: 9600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-ESC-ENCA-2', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1676], executionOrder: 10000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Inicializa el flujo operativo de CIB047E, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1693], executionOrder: 10100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1675], executionOrder: 9900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Gestiona contingencias en CIB047E, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1700], executionOrder: 10300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Cierra la ejecucion de CIB047E, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1699], executionOrder: 10200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB047E', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB047E', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [38], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DECLRA-CURSR-SQL', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [652], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DECLRA-CURSR-SQL', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'END-COMPUTE', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1522], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'END-COMPUTE', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [52], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [45], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [42], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INCLZA-ACMLDOS', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [799], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INCLZA-ACMLDOS', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [44], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [41], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [39], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'})
SET n += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [59], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB047E', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', summary: 'Orquesta una fase funcional de CIB047E, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [376], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Inicializa el flujo operativo de CIB062D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [429], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [433], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0050-ABRE-CURSOR', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-LIMPIA-ACUMULADORES', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [445], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-LIMPIA-ACUMULADORES', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [477], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [432], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-INICIALIZA', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [375], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Inicializa el flujo operativo de CIB062D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [481], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Inicializa el flujo operativo de CIB062D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [571], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESA-OPERACION', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [480], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESA-OPERACION', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [578], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Inicializa el flujo operativo de CIB062D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [605], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-PARAM', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [577], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-PARAM', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB062D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [609], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Inicializa el flujo operativo de CIB062D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [634], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [608], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERCOB', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB062D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [640], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Inicializa el flujo operativo de CIB062D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [664], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [639], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB062D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [671], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Inicializa el flujo operativo de CIB062D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [694], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-LEE-CONCEPT', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [670], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-LEE-CONCEPT', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB062D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [698], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Inicializa el flujo operativo de CIB062D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [715], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ESC-ENCA', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [697], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ESC-ENCA', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [726], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Inicializa el flujo operativo de CIB062D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [738], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [725], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Gestiona contingencias en CIB062D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [745], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Cierra la ejecucion de CIB062D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [744], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CALCULA-FECHAS', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [335], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CALCULA-FECHAS', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB062D', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB062D', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [43], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [363], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DECLRA-CURSR', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [57], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [50], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [47], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [49], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [46], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [44], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'})
SET n += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [64], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB062D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', summary: 'Orquesta una fase funcional de CIB062D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [384], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Inicializa el flujo operativo de CIB063D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [440], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [444], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0050-ABRE-CURSOR', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0200-OPERACIONES-COMPRA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [458], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0200-OPERACIONES-COMPRA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0300-OPERACIONES-VENTA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [503], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0300-OPERACIONES-VENTA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [560], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [443], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-FECHOY', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [564], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-FECHOY', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0200-FECHABIL-MANANA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [569], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0200-FECHABIL-MANANA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [587], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-FECHA-HOY-MANANA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [563], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-FECHA-HOY-MANANA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-INICIALIZA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [383], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Inicializa el flujo operativo de CIB063D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [591], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Inicializa el flujo operativo de CIB063D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0200-SUMA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [647], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0200-SUMA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0300-IMPRIME-DETALLE', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [724], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0300-IMPRIME-DETALLE', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [657], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-COMPRA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [590], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-COMPRA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [661], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Inicializa el flujo operativo de CIB063D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0200-SUMA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [720], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0200-SUMA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [730], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-VENTA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [660], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-VENTA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [737], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Inicializa el flujo operativo de CIB063D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [764], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-PARAM', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [736], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-PARAM', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB063D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [798], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Inicializa el flujo operativo de CIB063D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [823], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [797], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERCOB', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB063D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [770], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Inicializa el flujo operativo de CIB063D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [794], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [769], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB063D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [827], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Inicializa el flujo operativo de CIB063D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [845], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ESC-ENCA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [826], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ESC-ENCA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [856], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Inicializa el flujo operativo de CIB063D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [868], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [855], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Gestiona contingencias en CIB063D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [875], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Cierra la ejecucion de CIB063D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [874], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB063D', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB063D', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [31], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [370], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DECLRA-CURSR', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [45], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [38], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [35], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [37], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [34], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [32], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'})
SET n += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [52], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB063D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', summary: 'Orquesta una fase funcional de CIB063D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [385], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Inicializa el flujo operativo de CIB064D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [438], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [442], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0050-ABRE-CURSOR', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-LIMPIA-ACUMULADORES', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [454], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-LIMPIA-ACUMULADORES', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [486], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [441], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-INICIALIZA', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [384], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-INICIALIZA', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Inicializa el flujo operativo de CIB064D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [490], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Inicializa el flujo operativo de CIB064D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [580], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESA-OPERACION', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [489], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESA-OPERACION', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [587], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Inicializa el flujo operativo de CIB064D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [614], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-PARAM', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [586], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-PARAM', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB064D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [618], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Inicializa el flujo operativo de CIB064D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [643], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [617], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERCOB', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB064D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-0100-INICIO', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [649], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-0100-INICIO', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Inicializa el flujo operativo de CIB064D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-9900-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [673], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-9900-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [648], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB064D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [680], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Inicializa el flujo operativo de CIB064D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [703], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-LEE-CONCEPT', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [679], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-LEE-CONCEPT', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB064D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-0100-INICIO', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [707], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-0100-INICIO', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Inicializa el flujo operativo de CIB064D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-9900-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [724], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-9900-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-ESC-ENCA', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [706], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-ESC-ENCA', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [735], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Inicializa el flujo operativo de CIB064D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [747], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [734], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Gestiona contingencias en CIB064D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [754], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Cierra la ejecucion de CIB064D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [753], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CALCULA-FECHAS', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [337], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CALCULA-FECHAS', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB064D', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB064D', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [43], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [365], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DECLRA-CURSR', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [57], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [50], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [47], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [49], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [46], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [44], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'})
SET n += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [64], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB064D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', summary: 'Orquesta una fase funcional de CIB064D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-FECHAS', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [102], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-FECHAS', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-LEE-TIPO-CAMBIO', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [128], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-LEE-TIPO-CAMBIO', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB065D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-OBTEN-TIPO-24', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [161], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-OBTEN-TIPO-24', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB065D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-GRABA-VALOR-48', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [194], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-GRABA-VALOR-48', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Persiste actualizaciones de negocio en CIB065D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-TERMINA', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [226], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-TERMINA', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Cierra la ejecucion de CIB065D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [237], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Gestiona contingencias en CIB065D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB065D', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB065D', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [22], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [26], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [25], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'})
SET n += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [32], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB065D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', summary: 'Orquesta una fase funcional de CIB065D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [413], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-PROCESO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [434], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-PROCESO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [466], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Inicializa el flujo operativo de CIB116D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [478], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-INICIA-WAREAS-REPORTE', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACTUALIZA-N', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [490], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACTUALIZA-N', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '045-ACTUALIZA-P', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [523], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '045-ACTUALIZA-P', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-INI-WAREAS-INSER-OPECORI', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [534], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-INI-WAREAS-INSER-OPECORI', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-INSERTA-PLUS-MINUS', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [547], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-INSERTA-PLUS-MINUS', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-ACTUALIZA-T', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [581], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-ACTUALIZA-T', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-ACTUALIZA-G', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [602], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-ACTUALIZA-G', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-DIAS-VENCIMIENTO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [624], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-DIAS-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-BUSCA-IREF', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [640], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-BUSCA-IREF', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB116D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-PROCESA-VENCIMIENTOS', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [649], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-PROCESA-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '085-TOTALES', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [676], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '085-TOTALES', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-VENCIMIENTO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [703], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-TERMINA-GARANTIAS', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [732], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-TERMINA-GARANTIAS', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Cierra la ejecucion de CIB116D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [751], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-TIIE-APLICA', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-TASA-PARAMETRO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [790], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-TASA-PARAMETRO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-VALOR-CONGTIA', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [822], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-VALOR-CONGTIA', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-VALOR-PARAM-TO2', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [871], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-VALOR-PARAM-TO2', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-BUSCA-VENCIMIENTO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [903], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-BUSCA-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB116D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [929], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-DEFINE-CURSOR-VENCIM-CASA', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Cierra la ejecucion de CIB116D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-DEFINE-CURSOR-VENCIM-BCO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1006], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-DEFINE-CURSOR-VENCIM-BCO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Cierra la ejecucion de CIB116D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-VENCIMIENTOS-CAS', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1082], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-VENCIMIENTOS-CAS', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB116D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '565-LEE-VENCIMIENTOS-BCO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1149], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '565-LEE-VENCIMIENTOS-BCO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB116D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1216], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-BUSCA-EOPERA', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB116D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '580-BUSCA-GARANTIAS', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1240], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '580-BUSCA-GARANTIAS', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB116D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '585-BUSCA-GARANTIAS-P', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1318], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '585-BUSCA-GARANTIAS-P', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB116D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '590-BUSCA-PLUS-MINUS', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1368], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '590-BUSCA-PLUS-MINUS', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB116D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-OPECORI', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1403], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1425], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '622-ACTUALIZA-OPECORI', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1450], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '622-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '625-ACTUALIZA-OPECORI', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1476], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '625-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '626-ACTUALIZA-OPECORI', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1501], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '626-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1526], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-INSERTA-EN-OPECORI', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-ACTUALIZA-CONGTIA', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1600], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-ACTUALIZA-CONGTIA', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-ACTUALIZA-CONTITU', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1622], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-ACTUALIZA-CONTITU', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '660-ACTUALIZA-PARAM', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1645], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '660-ACTUALIZA-PARAM', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Persiste actualizaciones de negocio en CIB116D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1666], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Cierra la ejecucion de CIB116D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1679], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1698], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1740], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOT-CONCEPTOS-REPO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1763], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Gestiona contingencias en CIB116D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1780], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1800], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Cierra la ejecucion de CIB116D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1779], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB116D', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB116D', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [19], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [11], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [29], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [25], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [23], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [24], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [9], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [22], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1799], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [20], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'})
SET n += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [40], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB116D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', summary: 'Orquesta una fase funcional de CIB116D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [505], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Inicializa el flujo operativo de CIB117D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '105-INICIALIZA', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [524], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '105-INICIALIZA', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Inicializa el flujo operativo de CIB117D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '108-IMPRIME-ENCABEZADOS', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [590], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '108-IMPRIME-ENCABEZADOS', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-PROCESA-REGISTROS', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [606], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-PROCESA-REGISTROS', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200-TASAS-COMPRA-VENTA', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [648], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200-TASAS-COMPRA-VENTA', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210-INDICES-COMPRA-VENTA', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [666], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210-INDICES-COMPRA-VENTA', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-IMPRIME-ENCA-TASAS', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [685], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-IMPRIME-ENCA-TASAS', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '410-IMPRIME-ENCA-INDICES', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [701], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '410-IMPRIME-ENCA-INDICES', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '420-IMPRIME-TOTALES', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [717], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '420-IMPRIME-TOTALES', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-REGISTRO', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [738], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-REGISTRO', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB117D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-REGISTRO', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [781], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-REGISTRO', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB117D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-MOVER-CAMPOS-TASAS', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [824], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-MOVER-CAMPOS-TASAS', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-MOVER-CAMPOS-INDICES', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [859], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-MOVER-CAMPOS-INDICES', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-RUTINA-DE-ERRORES', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [894], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-RUTINA-DE-ERRORES', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Gestiona contingencias en CIB117D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [909], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '740-CERRAR-ARCHIVOS', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [922], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Gestiona contingencias en CIB117D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [938], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [962], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [982], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Cierra la ejecucion de CIB117D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [961], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB117D', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB117D', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [27], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [12], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [39], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [33], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [31], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [32], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [10], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [30], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [981], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [28], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'})
SET n += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [51], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB117D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', summary: 'Orquesta una fase funcional de CIB117D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [246], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [266], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Inicializa el flujo operativo de CIB118D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [294], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Inicializa el flujo operativo de CIB118D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [313], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Inicializa el flujo operativo de CIB118D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [326], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [341], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-DECIDE-IOPERA', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-GENERA-REGISTRO-IMPRESION', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [363], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-GENERA-REGISTRO-IMPRESION', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [405], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROCESA-CORTE', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [417], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEFINE-CURSOR-VENCIM-CASA', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Cierra la ejecucion de CIB118D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-DEFINE-CURSOR-VENCIM-BANCO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [454], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-DEFINE-CURSOR-VENCIM-BANCO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Cierra la ejecucion de CIB118D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-VENCIMIENTOS-CASA', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [490], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-VENCIMIENTOS-CASA', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB118D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-VENCIMIENTOS-BANCO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [527], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-VENCIMIENTOS-BANCO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB118D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [563], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Cierra la ejecucion de CIB118D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [573], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [594], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [611], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Gestiona contingencias en CIB118D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONTRUYE', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [628], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONTRUYE', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [648], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Cierra la ejecucion de CIB118D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [627], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB118D', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB118D', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [27], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [12], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [38], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [33], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [31], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [32], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [10], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [30], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [647], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [28], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-BAN-VENTAS', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [321], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-BAN-VENTAS', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-TOTAL-NETO', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [308], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-TOTAL-NETO', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'})
SET n += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [49], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB118D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', summary: 'Orquesta una fase funcional de CIB118D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [258], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [285], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Inicializa el flujo operativo de CIB119D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '013-INICIALIZA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [307], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '013-INICIALIZA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Inicializa el flujo operativo de CIB119D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIA-WAREAS-REPORTE', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [317], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIA-WAREAS-REPORTE', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-DECIDE-IOPERA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [326], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-DECIDE-IOPERA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-CALCULA-PLUSVALIA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [344], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-CALCULA-PLUSVALIA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-TASA-PAR-APLICA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [373], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-TASA-PAR-APLICA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-CURSOR-REGS-VIGS-FOPERCA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [413], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-CURSOR-REGS-VIGS-FOPERCA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-CURSOR-REGS-VIGS-FOPERBA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [455], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-CURSOR-REGS-VIGS-FOPERBA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-REGS-VIGS-FOPERCA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [496], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-REGS-VIGS-FOPERCA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB119D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-LEE-REGS-VIGS-FOPERBA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [540], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-LEE-REGS-VIGS-FOPERBA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB119D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [583], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Cierra la ejecucion de CIB119D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [593], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [611], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOT-CONCEPT-COMP-REPO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [665], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOT-CONCEPT-COMP-REPO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '740-TOT-CONCEPT-VENT-REPO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [673], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '740-TOT-CONCEPT-VENT-REPO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [698], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Gestiona contingencias en CIB119D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [715], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [735], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Cierra la ejecucion de CIB119D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [714], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB119D', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB119D', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [27], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [12], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [38], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [33], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [31], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [32], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [10], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [30], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [734], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [28], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'})
SET n += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [50], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB119D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', summary: 'Orquesta una fase funcional de CIB119D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB045D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'CIB045D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB045D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB047E'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'CIB047E', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB047E.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB062D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'CIB062D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB062D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB063D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'CIB063D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB063D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB064D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'CIB064D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB064D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB065D'})
SET n += {description: 'Programa COBOL que verificar la carga de tipo de cambio a 48 hrs. si la carga no fue realizada se toma el tipo de cambio a 24 hrs y se asigna a 48 hrs.. Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'program', name: 'CIB065D', nodeType: 'program', objective: 'VERIFICAR LA CARGA DE TIPO DE CAMBIO A 48 HRS. SI LA CARGA NO FUE REALIZADA SE TOMA EL TIPO DE CAMBIO A 24 HRS Y SE ASIGNA A 48 HRS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB065D.cbl', system: 'CASA DE BOLSA PROBURSA, SA DE CV.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB116D'})
SET n += {description: 'Programa COBOL que futuros vencimiento de tasas.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /.', ingestion: 'auto', layer: 'program', name: 'CIB116D', nodeType: 'program', objective: 'FUTUROS VENCIMIENTO DE TASAS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB116D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB117D'})
SET n += {description: 'Programa COBOL que futuros operacion diaria. modificado : asateck (lia. teresita de jesus vivero villeda) fecha : 12/04/94 modificado : rogelio perez melendez fecha : febrero 1996.. Pertenece a: CASA DE BOLSA PROBURSA, S.A. DE C.V. 13/JUL/93. /.', ingestion: 'auto', layer: 'program', name: 'CIB117D', nodeType: 'program', objective: 'FUTUROS OPERACION DIARIA. MODIFICADO : ASATECK (LIA. TERESITA DE JESUS VIVERO VILLEDA) FECHA : 12/04/94 MODIFICADO : ROGELIO PEREZ MELENDEZ FECHA : FEBRERO 1996.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB117D.cbl', system: 'CASA DE BOLSA PROBURSA, S.A. DE C.V. 13/JUL/93. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB118D'})
SET n += {description: 'Programa COBOL que futuros ponderado de tasas. modificado por : asateck (lia. teresita de jesus vivero villeda) fecha : mayo 1995. modificado por : rogelio perez melendez fecha : febrero 1996.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. JUNIO 1993. /.', ingestion: 'auto', layer: 'program', name: 'CIB118D', nodeType: 'program', objective: 'FUTUROS PONDERADO DE TASAS. MODIFICADO POR : ASATECK (LIA. TERESITA DE JESUS VIVERO VILLEDA) FECHA : MAYO 1995. MODIFICADO POR : ROGELIO PEREZ MELENDEZ FECHA : FEBRERO 1996.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB118D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. JUNIO 1993. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB119D'})
SET n += {description: 'Programa COBOL que futuros valuacion de tasas. modificado : asateck (lia. teresita de jesus vivero villeda) fecha : 27-abril-1995 modificado : rogelio perez melendez fecha : febrero 1996.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. JUNIO 1993. /.', ingestion: 'auto', layer: 'program', name: 'CIB119D', nodeType: 'program', objective: 'FUTUROS VALUACION DE TASAS. MODIFICADO : ASATECK (LIA. TERESITA DE JESUS VIVERO VILLEDA) FECHA : 27-ABRIL-1995 MODIFICADO : ROGELIO PEREZ MELENDEZ FECHA : FEBRERO 1996.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d', sourceFile: 'src/CIB119D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. JUNIO 1993. /', viewTag: 'cobol-program'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [579], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '000-0200-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '005-0200-OPERACIONES-COMPRA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '005-0300-OPERACIONES-VENTA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [710], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '005-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [798], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [645], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '010-0100-FECHOY', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [802], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '010-0200-FECHABIL-MANANA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '010-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [825], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '010-FECHA-HOY-MANANA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [801], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '0100-INICIALIZA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [578], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [829], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '020-0200-SUMA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [885], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '020-0300-IMPRIME-DETALLE', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [980], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '020-COMPRA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [828], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '030-0200-SUMA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1043], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '030-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '030-VENTA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [983], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '500-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '500-LEE-PARAM', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '510-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '550-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '600-LEE-CONCEPT', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '700-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '700-ESC-ENCA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '700A-0100-INICIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '700A-ESC-ENCA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'CIB045D', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'FILE', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [82], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [676], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '000-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [794], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '005-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [855], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '005-TABLA-DE-VALUACION', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [813], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '010-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '010-TABLA-DE-TASAS', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [858], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '0100-INICIALIZA', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '015-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [906], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '015-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [930], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '015-DETA-REPORTE-1', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [905], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [933], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '030-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [950], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '030-MENOR-DE-30', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [932], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [953], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '040-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [966], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '040-MENOR-DE-90', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [969], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '050-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [982], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '050-MENOR-DE-180', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [968], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '051-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [985], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '051-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [997], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '051-MENOR-DE-365', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [984], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '052-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1000], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '052-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1016], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '052-IMPRIME-TOTALES', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [999], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '055-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1019], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '055-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1063], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '055-TOTALES-FINAL', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1018], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '057-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1066], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '057-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1085], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '057-IMPRIME-TOTALES-FINALES', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1065], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1088], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '060-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '060-GRUPO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1087], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '061-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '061-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '061-DIAS-POR-LIQUIDAR', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '063-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '063-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '063-TRAE-TASAS-ASO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '065-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '065-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '065-CALCULA-DIA', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '067-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '067-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '067-IMPRIME-DIA', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '069-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '069-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '069-SUMA-DIA-A-GRUPO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '070-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '070-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '070-GRUPO-SUMA', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '080-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1343], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '080-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1355], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '080-GRUPO-IMPRIME-TOT', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '090-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '090-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '090-DIA', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '100-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1472], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '100-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '100-DDEVENGADOS-A-VP', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '110-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1533], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '110-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '110-TASA-ASOCIADA', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1532], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '500-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '500-LEE-PARAM', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '510-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '510-LEE-CURSOR-PARAM', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '520-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1633], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '520-LEE-OPERCOB', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1607], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1637], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '700-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '700-ESC-ENCA-1', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '710-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1653], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '710-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '710-ESC-ENCA-2', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1676], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '980-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1693], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '990-9900-FIN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'CIB047E', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'DECLRA-CURSR-SQL', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'END-COMPUTE', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'FILE', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'INCLZA-ACMLDOS', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [41], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '000-0200-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '005-0100-LIMPIA-ACUMULADORES', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '005-9900-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '0100-INICIALIZA', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '020-PROCESA-OPERACION', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [480], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [578], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '500-9900-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '500-LEE-PARAM', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [577], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '510-9900-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [634], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '550-9900-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [664], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [639], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [671], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '600-9900-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [694], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '600-LEE-CONCEPT', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [670], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [698], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '700-9900-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [715], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '700-ESC-ENCA', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [697], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [726], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [738], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [725], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [745], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [744], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'CALCULA-FECHAS', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'CIB062D', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'FILE', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '000-0200-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '005-0200-OPERACIONES-COMPRA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '005-0300-OPERACIONES-VENTA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '005-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '010-0100-FECHOY', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [564], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '010-0200-FECHABIL-MANANA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '010-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '010-FECHA-HOY-MANANA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [563], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '0100-INICIALIZA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [591], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '020-0200-SUMA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '020-0300-IMPRIME-DETALLE', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [657], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '020-COMPRA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [590], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [661], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '030-0200-SUMA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [720], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '030-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [730], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '030-VENTA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [737], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '500-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [764], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '500-LEE-PARAM', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [736], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [798], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '510-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [823], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [770], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '550-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [794], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [769], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [827], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '700-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [845], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '700-ESC-ENCA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [826], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [856], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [868], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [855], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [874], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'CIB063D', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'FILE', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '000-0200-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [442], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '005-0100-LIMPIA-ACUMULADORES', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '005-9900-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '005-PROCESO-PRINCIPAL', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [441], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '0100-INICIALIZA', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [580], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '020-PROCESA-OPERACION', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [489], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '500-9900-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '500-LEE-PARAM', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [586], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [618], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '510-9900-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [643], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '510-LEE-OPERCOB', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '550-0100-INICIO', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '550-9900-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '550-LEE-TIPO-CAMBIO', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '600-9900-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [703], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '600-LEE-CONCEPT', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '700-0100-INICIO', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [707], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '700-9900-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '700-ESC-ENCA', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [706], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [734], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'CALCULA-FECHAS', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'CIB064D', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'DECLRA-CURSR', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'FILE', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '005-FECHAS', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '010-LEE-TIPO-CAMBIO', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '020-OBTEN-TIPO-24', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '030-GRABA-VALOR-48', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '810-TERMINA', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'CIB065D', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'IBM-4381', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '010-PROCESO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '015-INICIO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '040-ACTUALIZA-N', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '045-ACTUALIZA-P', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '050-INI-WAREAS-INSER-OPECORI', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [534], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '055-INSERTA-PLUS-MINUS', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '060-ACTUALIZA-T', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [581], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '065-ACTUALIZA-G', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '070-DIAS-VENCIMIENTO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '075-BUSCA-IREF', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '080-PROCESA-VENCIMIENTOS', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '085-TOTALES', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [676], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '090-VENCIMIENTO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [703], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '100-TERMINA-GARANTIAS', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [732], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '510-TASA-PARAMETRO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [790], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '520-VALOR-CONGTIA', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [822], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '530-VALOR-PARAM-TO2', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [871], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '540-BUSCA-VENCIMIENTO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [903], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '550-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [929], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '555-DEFINE-CURSOR-VENCIM-BCO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1006], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '560-LEE-VENCIMIENTOS-CAS', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1082], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '565-LEE-VENCIMIENTOS-BCO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '580-BUSCA-GARANTIAS', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '585-BUSCA-GARANTIAS-P', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '590-BUSCA-PLUS-MINUS', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '600-ACTUALIZA-OPECORI', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '622-ACTUALIZA-OPECORI', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '625-ACTUALIZA-OPECORI', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1476], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '626-ACTUALIZA-OPECORI', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1501], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1526], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '640-ACTUALIZA-CONGTIA', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1600], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '650-ACTUALIZA-CONTITU', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '660-ACTUALIZA-PARAM', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1645], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1698], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1740], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1763], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1780], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1800], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1779], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'CIB116D', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'FILE', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '100-INICIO', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '105-INICIALIZA', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '108-IMPRIME-ENCABEZADOS', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [590], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '110-PROCESA-REGISTROS', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [606], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '200-TASAS-COMPRA-VENTA', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '210-INDICES-COMPRA-VENTA', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '400-IMPRIME-ENCA-TASAS', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [685], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '410-IMPRIME-ENCA-INDICES', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [701], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '420-IMPRIME-TOTALES', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [717], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '500-LEE-REGISTRO', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [738], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '550-LEE-REGISTRO', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '600-MOVER-CAMPOS-TASAS', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '610-MOVER-CAMPOS-INDICES', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '710-RUTINA-DE-ERRORES', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [894], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [922], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [938], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [962], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [982], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [961], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'CIB117D', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [12], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'FILE', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [981], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '015-INICIO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '050-GENERA-REGISTRO-IMPRESION', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '510-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '515-DEFINE-CURSOR-VENCIM-BANCO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '520-LEE-VENCIMIENTOS-CASA', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [490], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '530-LEE-VENCIMIENTOS-BANCO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [563], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [611], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '999-0100-CONTRUYE', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'CIB118D', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [12], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'FILE', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'W010-BAN-VENTAS', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'W010-TOTAL-NETO', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '013-INICIALIZA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '015-INICIA-WAREAS-REPORTE', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '020-DECIDE-IOPERA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '030-CALCULA-PLUSVALIA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '510-TASA-PAR-APLICA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '550-CURSOR-REGS-VIGS-FOPERCA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '555-CURSOR-REGS-VIGS-FOPERBA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '560-LEE-REGS-VIGS-FOPERCA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '570-LEE-REGS-VIGS-FOPERBA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [540], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [583], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [593], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [611], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '730-TOT-CONCEPT-COMP-REPO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '740-TOT-CONCEPT-VENT-REPO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [698], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [715], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'CIB119D', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [12], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'FILE', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [734], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [50], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB045D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [583], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [656], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB045D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB045D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [537], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICPAP03'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [766, 792], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB047E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [826, 853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [870, 900], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1574], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1600], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '710-9900-FIN', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB047E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB047E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1707], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [475], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [632], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICPATA3'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB062D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [653], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [686], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [722], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB062D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB062D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [752], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB063D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [818], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [783], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB063D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [889], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB063D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICPAP03'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB064D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [603], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [695], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [731], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB064D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [768], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB064D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [761], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-FECHAS', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [113, 123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '010-LEE-TIPO-CAMBIO', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '020-OBTEN-TIPO-24', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '030-GRABA-VALOR-48', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [211, 221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '810-TERMINA', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB065D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB065D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB116D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB116D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [780], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-TASA-PARAMETRO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '520-VALOR-CONGTIA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [850], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '530-VALOR-PARAM-TO2', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [890], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '540-BUSCA-VENCIMIENTO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [923], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-VENCIM-BCO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1075], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS-CAS', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '565-LEE-VENCIMIENTOS-BCO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '580-BUSCA-GARANTIAS', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '585-BUSCA-GARANTIAS-P', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '590-BUSCA-PLUS-MINUS', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1442], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '622-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1468], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '625-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '626-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '640-ACTUALIZA-CONGTIA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1616], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '650-ACTUALIZA-CONTITU', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1639], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '660-ACTUALIZA-PARAM', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1757], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB116D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1773], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB116D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB116D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'CIB117D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [517], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '105-INICIALIZA', programName: 'CIB117D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [531], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '105-INICIALIZA', programName: 'CIB117D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [546, 560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB117D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB117D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [955], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB117D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-VENCIM-BANCO', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '520-LEE-VENCIMIENTOS-CASA', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [520], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '530-LEE-VENCIMIENTOS-BANCO', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB118D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-TASA-PAR-APLICA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-CURSOR-REGS-VIGS-FOPERCA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '555-CURSOR-REGS-VIGS-FOPERBA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [487], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '560-LEE-REGS-VIGS-FOPERCA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '570-LEE-REGS-VIGS-FOPERBA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '740-TOT-CONCEPT-VENT-REPO', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB119D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [701], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [741], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [537], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SICPAP03'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [475], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1707], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [632], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICPATA3'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [752], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [722], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [889], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SICPAP03'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [768], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [761], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [731], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1773], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1757], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [955], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [517], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [741], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [701], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:DBTable {name: 'CONCEPT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1146, 1147, 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155, 1156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB045D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1179, 1180, 1181, 1182, 1183, 1184, 1185, 1186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [662, 663, 664, 665, 666, 667, 668, 669, 670, 671], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB047E'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [653, 654, 655, 656, 657, 658, 659, 660, 1563, 1564, 1565, 1566, 1567, 1568, 1569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:DBTable {name: 'CONCEPT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [672, 673, 674, 675, 676, 677, 678, 679, 680, 681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [364, 365, 366, 367, 368, 369, 370, 371, 372, 373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB062D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [641, 642, 643, 644, 645, 646, 647, 648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB063D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [771, 772, 773, 774, 775, 776, 777, 778], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:DBTable {name: 'CONCEPT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [681, 682, 683, 684, 685, 686, 687, 688, 689, 690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB064D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [650, 651, 652, 653, 654, 655, 656, 657], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [103, 104, 105, 106, 107, 108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [136, 137, 138, 139, 140, 141, 142, 143, 168, 169, 170, 171, 172, 173, 174, 175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:DBTable {name: 'CONGTIA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [823, 824, 825, 826, 827, 828, 829, 830, 831, 832], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1217, 1218, 1219, 1220, 1221, 1222, 1223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 987, 988, 989, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1018, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055, 1056, 1057, 1058, 1059, 1060, 1061, 1062, 1064, 1065, 1066, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269, 1270, 1271, 1272, 1273, 1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1284, 1285, 1286, 1287, 1288, 1289, 1290, 1319, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1332, 1333, 1334, 1335, 1336, 1337, 1338, 1339, 1340, 1341, 1342, 1343, 1369, 1370, 1371, 1372, 1373, 1374, 1375, 1376, 1377, 1378, 1379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [752, 753, 754, 755, 756, 757, 758, 759, 760, 791, 792, 793, 794, 795, 796, 797, 798, 799, 872, 873, 874, 875, 876, 877, 878, 879], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB117D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 426, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB118D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB119D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [374, 375, 376, 377, 378, 379, 380, 381, 382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB065D'}), (b:DBTable {name: 'TIPCAMB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:DBTable {name: 'CONGTIA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:DBTable {name: 'CONTITU'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1623, 1624, 1625, 1626, 1627, 1628, 1629, 1630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1451, 1452, 1453, 1454, 1455, 1456, 1457, 1458, 1459, 1460, 1477, 1478, 1479, 1480, 1481, 1482, 1483, 1484, 1485, 1502, 1503, 1504, 1505, 1506, 1507, 1508, 1509, 1510, 1527, 1528, 1529, 1530, 1531, 1532, 1533, 1534, 1535, 1536, 1537, 1538, 1539, 1540, 1541, 1542, 1543, 1544, 1545, 1546, 1547, 1548, 1549, 1550, 1551, 1552, 1553, 1554, 1555, 1556, 1557, 1558, 1559, 1560, 1561, 1562, 1563, 1564, 1565, 1566, 1567, 1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1576, 1577, 1578, 1579, 1580, 1581, 1582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Program {name: 'CIB116D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1646, 1647, 1648, 1649, 1650, 1651, 1652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB045D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [583], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [656], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB045D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB045D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB045D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [1344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [537], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICPAP03'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB045D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB045D.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [766, 792], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB047E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [826, 853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '010-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [870, 900], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1574], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1600], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '710-9900-FIN', programName: 'CIB047E'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB047E'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB047E'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [1707], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SIC001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [475], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [632], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICPATA3'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB047E'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB047E.cbl', evidenceLines: [622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB062D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [653], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [686], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB062D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [722], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB062D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB062D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [752], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [230], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB062D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB062D.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB063D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [818], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [783], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB063D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB063D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [889], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB063D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICPAP03'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB063D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB063D.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-0100-INICIALIZA', programName: 'CIB064D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-0050-ABRE-CURSOR', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [603], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-0100-INICIO', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [662], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [695], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '700-9900-FIN', programName: 'CIB064D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [731], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB064D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [768], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'CIB064D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [761], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'DCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICPATA2'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB064D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB064D.cbl', evidenceLines: [303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '005-FECHAS', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [113, 123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '010-LEE-TIPO-CAMBIO', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '020-OBTEN-TIPO-24', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '030-GRABA-VALOR-48', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [211, 221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '810-TERMINA', programName: 'CIB065D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB065D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB065D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'DTIPCAMB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB065D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB065D.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB116D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB116D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [780], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-TASA-PARAMETRO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '520-VALOR-CONGTIA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [850], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '530-VALOR-PARAM-TO2', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [890], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '540-BUSCA-VENCIMIENTO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [923], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [998], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-VENCIM-BCO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1075], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS-CAS', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '565-LEE-VENCIMIENTOS-BCO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1234], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '580-BUSCA-GARANTIAS', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '585-BUSCA-GARANTIAS-P', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '590-BUSCA-PLUS-MINUS', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1442], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '622-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1468], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '625-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '626-ACTUALIZA-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1594], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '640-ACTUALIZA-CONGTIA', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1616], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '650-ACTUALIZA-CONTITU', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1639], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '660-ACTUALIZA-PARAM', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB116D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1757], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB116D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1773], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB116D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB116D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [1807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB116D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB116D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'CIB117D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [517], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '105-INICIALIZA', programName: 'CIB117D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [531], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '105-INICIALIZA', programName: 'CIB117D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [546, 560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB117D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB117D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [955], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB117D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [948], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB117D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB117D.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-VENCIM-CASA', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-VENCIM-BANCO', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '520-LEE-VENCIMIENTOS-CASA', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [520], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '530-LEE-VENCIMIENTOS-BANCO', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB118D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB118D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB118D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB118D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB118D.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '510-TASA-PAR-APLICA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '550-CURSOR-REGS-VIGS-FOPERCA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '555-CURSOR-REGS-VIGS-FOPERBA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [487], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '560-LEE-REGS-VIGS-FOPERCA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '570-LEE-REGS-VIGS-FOPERBA', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [571], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '740-TOT-CONCEPT-VENT-REPO', programName: 'CIB119D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [692], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB119D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [701], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB119D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [741], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB119D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB119D.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T202919Z-cib045d-cib047e-cib062d-cib063d-cib064d-cib065d-cib116d-cib117d-cib118d-cib119d'};

