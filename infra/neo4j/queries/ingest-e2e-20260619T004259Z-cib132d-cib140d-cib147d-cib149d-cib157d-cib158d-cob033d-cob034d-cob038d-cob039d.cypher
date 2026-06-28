// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d
// ============================================================================

MERGE (n:Copybook {name: 'DCARTERA'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [400], ingestion: 'auto', layer: 'dependency', name: 'DCARTERA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCONGTIA'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [420], ingestion: 'auto', layer: 'dependency', name: 'DCONGTIA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCONTITU'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [425], ingestion: 'auto', layer: 'dependency', name: 'DCONTITU', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCTAMARC'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [415], ingestion: 'auto', layer: 'dependency', name: 'DCTAMARC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCUENTA'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [410], ingestion: 'auto', layer: 'dependency', name: 'DCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DDEFOPER'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [405], ingestion: 'auto', layer: 'dependency', name: 'DDEFOPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DEMICOB'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [90], ingestion: 'auto', layer: 'dependency', name: 'DEMICOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFOLCTRL'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [257], ingestion: 'auto', layer: 'dependency', name: 'DFOLCTRL', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPECORI'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [390], ingestion: 'auto', layer: 'dependency', name: 'DOPECORI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERCOB'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [83], ingestion: 'auto', layer: 'dependency', name: 'DOPERCOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [116], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1379], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1412], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [228], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [278], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [242], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [405], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [76], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC231'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [84], ingestion: 'auto', layer: 'dependency', name: 'SIC231', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [76], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE028'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [512], ingestion: 'auto', layer: 'dependency', name: 'SICCE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [424], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [116], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [100], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICMF334'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'SICMF334', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICNF043'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [128], ingestion: 'auto', layer: 'dependency', name: 'SICNF043', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPAP70'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [71], ingestion: 'auto', layer: 'dependency', name: 'SICPAP70', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPAP73'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [122], ingestion: 'auto', layer: 'dependency', name: 'SICPAP73', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPT104'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [264], ingestion: 'auto', layer: 'dependency', name: 'SICPT104', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [130], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [73], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [69], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [413], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [62], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CARTERA'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165], ingestion: 'auto', layer: 'data-access', name: 'CARTERA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CTAMARC'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244], ingestion: 'auto', layer: 'data-access', name: 'CTAMARC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'DEFOPER'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1100, 1101, 1102, 1103, 1104, 1105, 1106], ingestion: 'auto', layer: 'data-access', name: 'DEFOPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'EMICOB'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [245, 246, 247, 248, 249, 250, 251, 252, 253, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323], ingestion: 'auto', layer: 'data-access', name: 'EMICOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'FOLCTRL'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [712, 713, 714, 715, 716, 717, 718], ingestion: 'auto', layer: 'data-access', name: 'FOLCTRL', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OF'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [121, 122, 123, 124, 125, 126, 127], ingestion: 'auto', layer: 'data-access', name: 'OF', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERCOB'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [338, 339, 340, 341, 342], ingestion: 'auto', layer: 'data-access', name: 'OPERCOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [257], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Inicializa el flujo operativo de CIB132D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [284], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '105-PROCESO-CURSORES', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-PROCESA-IMP', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [381], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-PROCESA-IMP', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-IMPRIME-ENCA', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [398], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-IMPRIME-ENCA', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-REGISTRO-CASA', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [414], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-REGISTRO-CASA', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB132D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-REGISTRO-BANCO', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [447], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-REGISTRO-BANCO', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB132D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-MOVER-CAMPOS', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [479], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-MOVER-CAMPOS', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-RUTINA-DE-ERRORES', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [500], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-RUTINA-DE-ERRORES', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Gestiona contingencias en CIB132D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [515], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '740-CERRAR-ARCHIVOS', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [528], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Gestiona contingencias en CIB132D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [544], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [568], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-FIN', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [588], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-FIN', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Cierra la ejecucion de CIB132D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [567], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [6], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [23], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [37], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [30], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [27], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [29], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [9], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [26], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [587], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [24], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [51], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [268], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [282], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Inicializa el flujo operativo de CIB140D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-LIMPIA-REPORTE', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [296], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-LIMPIA-REPORTE', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-EJECUTA-ABRE-LEE-CURSOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [310], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-EJECUTA-ABRE-LEE-CURSOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-MUEVE-INFORMACION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [333], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-MUEVE-INFORMACION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-PROCESA-INFORMACION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [349], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-GENERA-REGISTRO-IMP-ACTP', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [399], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-GENERA-REGISTRO-IMP-ACTP', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-MUEVE-DATOS-DE-DCLOPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [438], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-MUEVE-DATOS-DE-DCLOPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-MUEVE-DATOS-DE-W010OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [465], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-MUEVE-DATOS-DE-W010OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-GENERA-REGISTRO-IMP-NVONT', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [500], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-GENERA-REGISTRO-IMP-NVONT', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-OBTENER-RESIDUO-NOVACION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [524], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-OBTENER-RESIDUO-NOVACION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-OBTENER-IOPERA-RESIDUO-IND', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [542], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-OBTENER-IOPERA-RESIDUO-IND', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-EJECUTA-LEE-CURSOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [557], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-EJECUTA-LEE-CURSOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEF-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [575], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEF-PRIMER-CURSOR-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [608], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-PRIMER-CURSOR-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-DEF-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [630], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-DEF-SEGUND-CURSOR-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-LEE-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [666], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-LEE-SEGUND-CURSOR-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-OBTIENE-FOLIO', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [687], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-OBTIENE-FOLIO', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-ACTUALIZA-FOLIO', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [711], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-ACTUALIZA-FOLIO', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Persiste actualizaciones de negocio en CIB140D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-ACTUALIZA-PRIMER-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [735], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-ACTUALIZA-PRIMER-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Persiste actualizaciones de negocio en CIB140D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '580-ACTUALIZA-SEGUND-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [757], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '580-ACTUALIZA-SEGUND-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Persiste actualizaciones de negocio en CIB140D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '590-INSERTA-NUEVO-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [779], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '590-INSERTA-NUEVO-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Persiste actualizaciones de negocio en CIB140D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-LEE-EOPERA-DEFOPER', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [813], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-LEE-EOPERA-DEFOPER', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-CIERRA-PRIMER-CURSOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [837], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-CIERRA-PRIMER-CURSOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Cierra la ejecucion de CIB140D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-CIERRA-SEGUND-CURSOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [845], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-CIERRA-SEGUND-CURSOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Cierra la ejecucion de CIB140D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [853], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Cierra la ejecucion de CIB140D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [863], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [881], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [899], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Gestiona contingencias en CIB140D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB140D', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB140D', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [20], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [32], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [26], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [24], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [25], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [23], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-04-TIPONOV', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [305], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-04-TIPONOV', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [21], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [43], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [204], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [223], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Inicializa el flujo operativo de CIB147D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [243], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-PROCESO-CURSORES', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [276], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Inicializa el flujo operativo de CIB147D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [284], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [298], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-DECIDE-IOPERA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-GENERA-REGISTRO-ARREGLO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [314], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-GENERA-REGISTRO-ARREGLO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [327], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROCESA-CORTE', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-PROCESA-IMPRIME', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [335], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-PROCESA-IMPRIME', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-GENERA-REGISTRO-IMPRESION', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [344], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-GENERA-REGISTRO-IMPRESION', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '08-DIC-1995', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [13], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '08-DIC-1995', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [376], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEFINE-CURSOR-DIVERS-CASA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Cierra la ejecucion de CIB147D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [406], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-DEFINE-CURSOR-DIVERS-BANCO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Cierra la ejecucion de CIB147D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [436], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-DIVERS-CASA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB147D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [471], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-DIVERS-BANCO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB147D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [506], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Cierra la ejecucion de CIB147D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [516], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [532], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [549], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Gestiona contingencias en CIB147D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [566], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-FIN', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [586], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-FIN', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Cierra la ejecucion de CIB147D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [565], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB147D', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB147D', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [24], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [12], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [36], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [30], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [10], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [27], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [585], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [25], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-MONTO-NETO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [279], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-MONTO-NETO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [47], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [185], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [205], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Inicializa el flujo operativo de CIB149D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [225], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-PROCESO-CURSORES', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [258], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Inicializa el flujo operativo de CIB149D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [266], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [280], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-DECIDE-IOPERA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-GENERA-REGISTRO-ARREGLO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [296], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-GENERA-REGISTRO-ARREGLO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [307], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROCESA-CORTE', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-PROCESA-IMPRIME', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [315], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-PROCESA-IMPRIME', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-GENERA-REGISTRO-IMPRESION', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [324], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-GENERA-REGISTRO-IMPRESION', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '08-DIC-1995', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [10], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '08-DIC-1995', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [347], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEFINE-CURSOR-DIVERS-CASA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Cierra la ejecucion de CIB149D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [374], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-DEFINE-CURSOR-DIVERS-BANCO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Cierra la ejecucion de CIB149D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [401], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-DIVERS-CASA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB149D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [430], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-DIVERS-BANCO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB149D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [459], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Cierra la ejecucion de CIB149D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [469], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [485], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [502], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Gestiona contingencias en CIB149D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [519], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-FIN', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [523], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-FIN', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Cierra la ejecucion de CIB149D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [518], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB149D', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB149D', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [20], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [32], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [26], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [24], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [25], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [23], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [522], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [21], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-MONTO-NETO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [261], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-MONTO-NETO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [43], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [414], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-PROCESO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [435], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-PROCESO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [465], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Inicializa el flujo operativo de CIB157D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-FECHA-VENCIMIENTO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [478], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-FECHA-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [496], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-INICIA-WAREAS-REPORTE', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACTUALIZA-N', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [508], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACTUALIZA-N', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-ACTUALIZA-T', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [543], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-ACTUALIZA-T', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-ACTUALIZA-G', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [572], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-ACTUALIZA-G', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-DIAS-VENCIMIENTO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [601], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-DIAS-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-BUSCA-IREF', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [617], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-BUSCA-IREF', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB157D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-PROCESA-LIQUIDACIONES', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [626], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-PROCESA-LIQUIDACIONES', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '085-TOTALES', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [660], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '085-TOTALES', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-CARGO-ABONO-ISR', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [687], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-CARGO-ABONO-ISR', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-PLUSVALIA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [700], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-PLUSVALIA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-MINUSVALIA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [726], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-MINUSVALIA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '130-CALCULA-ISR', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [753], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '130-CALCULA-ISR', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-ACTUALIZA-CARTERA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [765], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-ACTUALIZA-CARTERA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-GENERA-ISR', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [781], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-GENERA-ISR', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [797], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-TIIE-APLICA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-VALOR-PARAM-T84', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [833], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-VALOR-PARAM-T84', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-DEFINE-CURSOR-LIQUID-CASA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [860], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-DEFINE-CURSOR-LIQUID-CASA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Cierra la ejecucion de CIB157D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-DEFINE-CURSOR-LIQUID-BCO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [903], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-DEFINE-CURSOR-LIQUID-BCO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Cierra la ejecucion de CIB157D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [945], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-LIQUIDACIONES-CAS', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB157D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1004], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '565-LEE-LIQUIDACIONES-BCO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB157D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1063], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-BUSCA-EOPERA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB157D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1087], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-CARTERA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1114], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-INSERTA-EN-CARTERA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1143], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1168], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-INSERTA-EN-OPECORI', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1242], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Cierra la ejecucion de CIB157D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1252], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1271], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1311], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOT-CONCEPTOS-REPO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1334], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Gestiona contingencias en CIB157D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1351], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1371], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Cierra la ejecucion de CIB157D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1350], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB157D', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB157D', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [19], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [11], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [29], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [25], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [23], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [24], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [9], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [22], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1370], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [20], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [40], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [432], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-PROCESO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [454], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-PROCESO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [473], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Inicializa el flujo operativo de CIB158D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [495], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Inicializa el flujo operativo de CIB158D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-FECHA-VENCIMIENTO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [503], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-FECHA-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [521], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-INICIA-WAREAS-REPORTE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-PROCESA-LIQUIDACION', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [530], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-PROCESA-LIQUIDACION', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-ACTUALIZA-N', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [557], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-ACTUALIZA-N', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-ACTUALIZA-T', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [592], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-ACTUALIZA-T', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '056-ACTUALIZA-G', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [607], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '056-ACTUALIZA-G', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-IREF-SIGUIENTE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [627], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-IREF-SIGUIENTE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-DIAS-VENCIMIENTO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [636], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-DIAS-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-CARGO-ABONO-ISR', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [652], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-CARGO-ABONO-ISR', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-PLUSVALIA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [671], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-PLUSVALIA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-MINUSVALIA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [702], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-MINUSVALIA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-ACTUALIZA-CARTERA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [733], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-ACTUALIZA-CARTERA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-GENERA-ISR', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [750], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-GENERA-ISR', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-VENCE-INPC', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [766], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-VENCE-INPC', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-INPC-REAL', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [803], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-INPC-REAL', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-VALOR-PARAM-T84', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [835], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-VALOR-PARAM-T84', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '545-BUSCA-LIQUIDACION', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [864], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '545-BUSCA-LIQUIDACION', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB158D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-DEFINE-CURSOR-LIQUIDA-CAS', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [897], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-DEFINE-CURSOR-LIQUIDA-CAS', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Cierra la ejecucion de CIB158D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-DEFINE-CURSOR-LIQUIDA-BCO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [945], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-DEFINE-CURSOR-LIQUIDA-BCO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Cierra la ejecucion de CIB158D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [993], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-LIQUIDACIONES-CAS', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB158D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1046], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '565-LEE-LIQUIDACIONES-BCO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB158D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1099], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-BUSCA-EOPERA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB158D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1123], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-CARTERA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1150], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-INSERTA-EN-CARTERA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1179], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1205], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-INSERTA-EN-OPECORI', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1279], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Cierra la ejecucion de CIB158D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1289], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1311], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1349], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOT-CONCEPTOS-REPO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1369], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Gestiona contingencias en CIB158D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1386], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1406], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Cierra la ejecucion de CIB158D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1385], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [9], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB158D', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [8], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB158D', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [22], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [13], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [34], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [28], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [26], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [27], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [11], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [25], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [7], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1405], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [45], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [124], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-OBTIENE-FECHA-HABIL', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [138], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-OBTIENE-FECHA-HABIL', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-CALCULO-POSIC-Y-EFTVO', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [161], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-CALCULO-POSIC-Y-EFTVO', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESA-REPORTE', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [153], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESA-REPORTE', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-OBTEN-POSICION-ANTERIOR', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [357], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-OBTEN-POSICION-ANTERIOR', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB033D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACTUALIZA-POSICION', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [387], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACTUALIZA-POSICION', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Persiste actualizaciones de negocio en COB033D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-TERMINA', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [427], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-TERMINA', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Cierra la ejecucion de COB033D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [438], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Gestiona contingencias en COB033D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB033D', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB033D', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [25], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [35], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [32], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'GOBACK', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [428], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'GOBACK', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [29], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [31], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [118], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [28], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [26], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [37], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [226], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [240], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [271], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-TASAS-PONDERADAS', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [239], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-TASAS-PONDERADAS', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [275], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [281], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-DESLIZAMIENTO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [274], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-DESLIZAMIENTO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [284], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [290], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-FECHA-DE-HOY', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [283], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-FECHA-DE-HOY', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [293], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [318], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-COSTO-RECUPERACION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [292], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-COSTO-RECUPERACION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [322], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [336], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-ABRE-CURSOR-PARAM', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [321], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-ABRE-CURSOR-PARAM', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [340], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [354], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ABRE-CURSOR-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [339], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ABRE-CURSOR-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [358], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [384], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '035-PROCESA-REGISTRO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [357], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '035-PROCESA-REGISTRO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [388], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [420], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-COSTOS-PROMEDIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [387], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-COSTOS-PROMEDIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '045-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [424], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '045-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '045-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [499], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '045-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '045-COSTO-RECUPERACION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [423], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '045-COSTO-RECUPERACION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [504], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [561], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-COSTO-OPORTUNIDAD', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [503], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-COSTO-OPORTUNIDAD', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [565], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [595], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-TRAE-TASA-RECUPERACION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [564], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-TRAE-TASA-RECUPERACION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [599], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [631], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-TRAE-TASA-OPORTUNIDAD', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [598], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-TRAE-TASA-OPORTUNIDAD', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [635], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [674], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-ACTUALIZA-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [634], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-ACTUALIZA-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Persiste actualizaciones de negocio en COB034D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [678], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [724], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-AISLADAS-NO-ASIGNADAS', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [677], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-AISLADAS-NO-ASIGNADAS', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [728], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [755], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-DIAS-SIG-HABIL', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [727], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-DIAS-SIG-HABIL', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [759], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [784], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-COSTO-RECUPERACION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [758], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-COSTO-RECUPERACION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [788], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [804], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [787], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-CURSOR-PARAM', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB034D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [808], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [835], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-PARAM', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [807], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-PARAM', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB034D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [839], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [859], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-LEE-CURSOR-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [838], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-LEE-CURSOR-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB034D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [863], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [892], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-EMICOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [862], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-EMICOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB034D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [896], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [936], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [895], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Persiste actualizaciones de negocio en COB034D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [918], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-ACTUALIZA-OPERCOB', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [917], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-ACTUALIZA-OPERCOB', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Persiste actualizaciones de negocio en COB034D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [946], executionOrder: 8300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Inicializa el flujo operativo de COB034D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [977], executionOrder: 8400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [945], executionOrder: 8200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Gestiona contingencias en COB034D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [983], executionOrder: 8600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Cierra la ejecucion de COB034D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [982], executionOrder: 8500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB034D', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB034D', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [27], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [46], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [34], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [31], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [33], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [30], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [28], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'})
SET n += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [47], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB034D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', summary: 'Orquesta una fase funcional de COB034D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [102], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-0200-PROCESO-PRINCIPAL', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [122], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [127], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-ACTUA-OP-DEL-DIA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [120], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-ACTUA-OP-DEL-DIA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0100-FECHOY', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [131], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0100-FECHOY', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0200-FECHABIL', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [138], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0200-FECHABIL', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-0300-EMISORA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [153], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-0300-EMISORA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [176], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ACTUA-EMISION-LIQUIDA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [130], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ACTUA-EMISION-LIQUIDA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [180], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [183], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ELIMI-NOASIG-NOINVENT', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [179], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ELIMI-NOASIG-NOINVENT', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [186], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [204], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-OP-DEL-DIA-ASIGNADAS', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [185], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-OP-DEL-DIA-ASIGNADAS', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [208], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [225], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-OP-DEL-DIA-INVENTARIADAS', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [207], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-OP-DEL-DIA-INVENTARIADAS', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [229], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [247], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-OP-DEL-DIA-NASI-NINV', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [228], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-OP-DEL-DIA-NASI-NINV', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [251], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [269], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-OPERACIONES-QUE-LIQUIDAN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [250], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-OPERACIONES-QUE-LIQUIDAN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [273], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [291], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-MARCA-BAJA-OP-LMANANA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [272], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-MARCA-BAJA-OP-LMANANA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '660-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [295], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '660-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '660-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [313], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '660-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '660-VIGENTES-ASIGNADAS', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [294], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '660-VIGENTES-ASIGNADAS', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '670-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [317], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '670-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '670-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [334], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '670-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '670-VIGENTES-INVENTARIADAS', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [316], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '670-VIGENTES-INVENTARIADAS', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '680-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [338], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '680-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '680-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [351], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '680-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '680-ELIMI-OP-LMANANA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [337], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '680-ELIMI-OP-LMANANA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '690-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [355], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '690-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '690-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [371], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '690-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '690-ELIMI-NOASIG-NOINVENT', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [354], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '690-ELIMI-NOASIG-NOINVENT', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '695-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [375], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '695-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '695-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [394], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '695-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '695-RESET-COSTOS-PROMEDIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [374], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '695-RESET-COSTOS-PROMEDIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-0100-INICIO', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [405], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-0100-INICIO', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Inicializa el flujo operativo de COB038D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [411], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [404], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Gestiona contingencias en COB038D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-9900-FIN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [418], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-9900-FIN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Cierra la ejecucion de COB038D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [417], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB038D', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB038D', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [25], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [44], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [32], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [29], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [31], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [28], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [26], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'})
SET n += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [45], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB038D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', summary: 'Orquesta una fase funcional de COB038D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [109], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '005-DECLARA-OPERCOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [120], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '005-DECLARA-OPERCOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [148], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Inicializa el flujo operativo de COB039D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-ACCESA-EMICOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [220], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-ACCESA-EMICOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-ACTUALIZA-EMICOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [244], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-ACTUALIZA-EMICOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Persiste actualizaciones de negocio en COB039D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-CALCULOS-VTAS', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [264], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-CALCULOS-VTAS', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-CALCULOS-CPAS', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [280], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-CALCULOS-CPAS', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-INSERTA-EMICOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [296], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-INSERTA-EMICOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Persiste actualizaciones de negocio en COB039D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-ACTUALIZA-OPERCOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [336], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-ACTUALIZA-OPERCOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Persiste actualizaciones de negocio en COB039D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-LEE-OPERCOB', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [353], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-LEE-OPERCOB', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB039D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [377], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Cierra la ejecucion de COB039D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '850-COMMIT-GRAL', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [391], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '850-COMMIT-GRAL', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [411], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Gestiona contingencias en COB039D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB039D', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB039D', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [24], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [34], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [31], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [28], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [30], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [103], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [27], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [25], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'})
SET n += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [36], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB039D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', summary: 'Orquesta una fase funcional de COB039D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB132D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB132D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB132D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'CIB140D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB140D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB140D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'CIB147D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB147D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB147D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'CIB149D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB149D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB149D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'CIB157D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB157D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB157D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'CIB158D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'CIB158D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/CIB158D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'COB033D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'COB033D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB033D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'COB034D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'COB034D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB034D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'COB038D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'COB038D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB038D.cbl', viewTag: 'program'};

MERGE (n:Program {name: 'COB039D'})
SET n += {ingestion: 'auto', layer: 'program', name: 'COB039D', nodeType: 'program', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d', sourceFile: 'src/COB039D.cbl', viewTag: 'program'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '100-INICIO', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '110-PROCESA-IMP', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '400-IMPRIME-ENCA', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '500-LEE-REGISTRO-CASA', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '550-LEE-REGISTRO-BANCO', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '600-MOVER-CAMPOS', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '710-RUTINA-DE-ERRORES', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [528], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'FILE', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '020-LIMPIA-REPORTE', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '030-EJECUTA-ABRE-LEE-CURSOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '040-MUEVE-INFORMACION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '050-PROCESA-INFORMACION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '060-GENERA-REGISTRO-IMP-ACTP', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '070-MUEVE-DATOS-DE-DCLOPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '080-MUEVE-DATOS-DE-W010OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [465], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '090-GENERA-REGISTRO-IMP-NVONT', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '100-OBTENER-RESIDUO-NOVACION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '110-OBTENER-IOPERA-RESIDUO-IND', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [542], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '120-EJECUTA-LEE-CURSOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '510-DEF-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [575], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '520-LEE-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '530-DEF-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '540-LEE-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '550-OBTIENE-FOLIO', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '560-ACTUALIZA-FOLIO', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [711], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '570-ACTUALIZA-PRIMER-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '580-ACTUALIZA-SEGUND-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [757], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '590-INSERTA-NUEVO-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [779], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '600-LEE-EOPERA-DEFOPER', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [813], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '610-CIERRA-PRIMER-CURSOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [837], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '620-CIERRA-SEGUND-CURSOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [845], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [863], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [899], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'CIB140D', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'FILE', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'R1-04-TIPONOV', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '050-GENERA-REGISTRO-ARREGLO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '065-PROCESA-IMPRIME', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '070-GENERA-REGISTRO-IMPRESION', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '08-DIC-1995', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [13], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [436], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [532], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [549], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [566], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [586], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'CIB147D', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [12], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'FILE', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'W010-MONTO-NETO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '050-GENERA-REGISTRO-ARREGLO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '065-PROCESA-IMPRIME', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '070-GENERA-REGISTRO-IMPRESION', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '08-DIC-1995', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [430], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [485], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'CIB149D', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'FILE', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'W010-MONTO-NETO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '010-PROCESO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [435], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '015-INICIO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [465], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '020-FECHA-VENCIMIENTO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '040-ACTUALIZA-N', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '060-ACTUALIZA-T', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '065-ACTUALIZA-G', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [572], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '070-DIAS-VENCIMIENTO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [601], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '075-BUSCA-IREF', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '080-PROCESA-LIQUIDACIONES', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [626], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '085-TOTALES', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '100-CARGO-ABONO-ISR', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '110-PLUSVALIA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '120-MINUSVALIA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [726], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '130-CALCULA-ISR', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '150-ACTUALIZA-CARTERA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [765], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '160-GENERA-ISR', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '510-VALOR-PARAM-T84', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [833], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '550-DEFINE-CURSOR-LIQUID-CASA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [860], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '555-DEFINE-CURSOR-LIQUID-BCO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [903], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1063], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1087], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'CIB157D', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'FILE', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '010-PROCESO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '015-INICIO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [495], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '025-FECHA-VENCIMIENTO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [521], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '040-PROCESA-LIQUIDACION', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '050-ACTUALIZA-N', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '055-ACTUALIZA-T', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '056-ACTUALIZA-G', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [607], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '065-IREF-SIGUIENTE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '075-DIAS-VENCIMIENTO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '100-CARGO-ABONO-ISR', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '110-PLUSVALIA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [671], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '120-MINUSVALIA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '150-ACTUALIZA-CARTERA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '160-GENERA-ISR', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [750], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '510-VENCE-INPC', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '520-INPC-REAL', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [803], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '540-VALOR-PARAM-T84', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '545-BUSCA-LIQUIDACION', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [864], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '550-DEFINE-CURSOR-LIQUIDA-CAS', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [897], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '555-DEFINE-CURSOR-LIQUIDA-BCO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [993], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1046], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1099], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'CIB158D', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [13], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'FILE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '000-CONTROL', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '010-OBTIENE-FECHA-HABIL', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '020-CALCULO-POSIC-Y-EFTVO', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '020-PROCESA-REPORTE', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '030-OBTEN-POSICION-ANTERIOR', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '040-ACTUALIZA-POSICION', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '700-TERMINA', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'COB033D', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'FILE', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'GOBACK', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'LINKAGE', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [226], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '005-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '005-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '005-TASAS-PONDERADAS', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '010-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '010-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '010-DESLIZAMIENTO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '015-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '015-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '015-FECHA-DE-HOY', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [293], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '020-COSTO-RECUPERACION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '025-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '025-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '025-ABRE-CURSOR-PARAM', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '030-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '030-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '030-ABRE-CURSOR-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '035-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [358], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '035-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '035-PROCESA-REGISTRO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '040-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '040-COSTOS-PROMEDIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '045-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '045-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '045-COSTO-RECUPERACION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '050-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '050-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '050-COSTO-OPORTUNIDAD', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '055-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '055-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [595], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '055-TRAE-TASA-RECUPERACION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [564], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '060-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '060-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [631], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '060-TRAE-TASA-OPORTUNIDAD', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [598], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '065-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '065-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [674], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '065-ACTUALIZA-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [634], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '070-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '070-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '070-AISLADAS-NO-ASIGNADAS', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '075-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [728], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '075-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [755], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '075-DIAS-SIG-HABIL', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [727], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '080-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '080-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '080-COSTO-RECUPERACION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [758], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '500-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '500-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [804], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '500-LEE-CURSOR-PARAM', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [787], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '510-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '510-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '510-LEE-PARAM', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '515-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [839], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '515-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [859], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '515-LEE-CURSOR-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [838], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '520-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [863], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '520-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [892], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '520-LEE-EMICOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [862], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [896], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '600-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [936], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '600-ACTUALIZA-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [918], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '610-ACTUALIZA-OPERCOB', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [917], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [946], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [977], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [983], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [982], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'COB034D', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'FILE', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '020-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '020-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '020-ACTUA-OP-DEL-DIA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-0100-FECHOY', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-0200-FECHABIL', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-0300-EMISORA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '030-ACTUA-EMISION-LIQUIDA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '040-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '040-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '040-ELIMI-NOASIG-NOINVENT', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '600-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '600-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '600-OP-DEL-DIA-ASIGNADAS', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '610-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '610-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '610-OP-DEL-DIA-INVENTARIADAS', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '630-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '630-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '630-OP-DEL-DIA-NASI-NINV', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '640-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '640-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '640-OPERACIONES-QUE-LIQUIDAN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '650-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '650-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '650-MARCA-BAJA-OP-LMANANA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '660-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '660-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '660-VIGENTES-ASIGNADAS', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '670-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '670-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '670-VIGENTES-INVENTARIADAS', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [316], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '680-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '680-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '680-ELIMI-OP-LMANANA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '690-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [355], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '690-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '690-ELIMI-NOASIG-NOINVENT', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '695-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [375], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '695-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '695-RESET-COSTOS-PROMEDIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '980-0100-INICIO', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '980-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '990-9900-FIN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'COB038D', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'FILE', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '000-CONTROL', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '005-DECLARA-OPERCOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '010-INICIO', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '020-ACCESA-EMICOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '030-ACTUALIZA-EMICOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '040-CALCULOS-VTAS', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '050-CALCULOS-CPAS', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '060-INSERTA-EMICOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '070-ACTUALIZA-OPERCOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '510-LEE-OPERCOB', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '700-FIN', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '850-COMMIT-GRAL', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'COB039D', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'FILE', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'LINKAGE', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'CIB132D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [306, 320, 363, 374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-DEF-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-LEE-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '530-DEF-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '540-LEE-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '550-OBTIENE-FOLIO', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '560-ACTUALIZA-FOLIO', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '570-ACTUALIZA-PRIMER-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '580-ACTUALIZA-SEGUND-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [773], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '590-INSERTA-NUEVO-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-LEE-EOPERA-DEFOPER', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [831], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [893], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DFOLCTRL'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB147D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [552], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '999-0100-FIN', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB149D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '999-0100-FIN', programName: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-VALOR-PARAM-T84', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-LIQUID-CASA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-LIQUID-BCO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [938], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1081], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB157D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [402], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-VENCE-INPC', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [789], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-INPC-REAL', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [826], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '540-VALOR-PARAM-T84', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [855], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '545-BUSCA-LIQUIDACION', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-LIQUIDA-CAS', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-LIQUIDA-BCO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [985], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1036], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1089], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB158D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '010-OBTIENE-FECHA-HABIL', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '020-CALCULO-POSIC-Y-EFTVO', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [182, 207, 236, 262, 287, 314, 338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '030-OBTEN-POSICION-ANTERIOR', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '040-ACTUALIZA-POSICION', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB033D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'GOBACK', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SICPAP70'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB034D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '020-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '025-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '065-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [644, 658, 672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '070-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [690, 705, 721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [825], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [912], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-9900-FIN', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [943], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB034D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB038D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '660-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '670-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '680-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '690-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '695-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '695-9900-FIN', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB038D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '005-DECLARA-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [132, 141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '020-ACCESA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '030-ACTUALIZA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '060-INSERTA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '070-ACTUALIZA-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-LEE-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '700-FIN', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '850-COMMIT-GRAL', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [398, 405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB039D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'DFOLCTRL'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [893], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [552], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [402], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SICPAP70'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [943], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB132D'}), (b:DBTable {name: 'CTAMARC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [814, 815, 816, 817, 818, 819, 820], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'FOLCTRL'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [688, 689, 690, 691, 692, 693, 694], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB147D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB149D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1064, 1065, 1066, 1067, 1068, 1069, 1070], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [798, 799, 800, 801, 802, 803, 804, 805, 806, 835, 836, 837, 838, 839, 840, 841], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1100, 1101, 1102, 1103, 1104, 1105, 1106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [767, 768, 769, 770, 771, 772, 773, 804, 805, 806, 807, 810, 812, 813, 837, 838, 839, 840, 841, 842, 843], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [165, 166, 167, 168, 169, 170, 171, 172, 190, 191, 192, 193, 194, 195, 196, 197, 218, 219, 220, 221, 222, 223, 224, 225, 226, 244, 245, 246, 247, 248, 249, 250, 251, 252, 297, 298, 299, 300, 301, 302, 303, 304, 321, 322, 323, 324, 325, 326, 327, 328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [139, 140, 141, 142, 143, 144, 272, 273, 274, 275, 276, 277, 358, 359, 360, 361, 362, 363, 364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [340, 341, 342, 343, 344, 345, 357, 358, 359, 360, 361, 362, 363, 364, 365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [121, 122, 123, 124, 125, 126, 127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'FOLCTRL'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [712, 713, 714, 715, 716, 717, 718], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [736, 737, 738, 739, 740, 741, 742, 743, 758, 759, 760, 761, 762, 763, 764, 765, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'CARTERA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197, 1198, 1199, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'CARTERA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [292, 293, 294, 295, 296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB033D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [409, 410, 411, 412, 413, 414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'OF'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB034D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [340, 341, 342, 343, 344, 345, 357, 358, 359, 360, 361, 362, 363, 364, 365, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB038D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 253, 254, 255, 256, 257, 258, 259, 260, 261, 262, 263, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'EMICOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [245, 246, 247, 248, 249, 250, 251, 252, 253, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'OF'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [121, 122, 123, 124, 125, 126, 127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Program {name: 'COB039D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [338, 339, 340, 341, 342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'CIB132D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [306, 320, 363, 374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-DEF-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-LEE-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '530-DEF-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '540-LEE-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '550-OBTIENE-FOLIO', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '560-ACTUALIZA-FOLIO', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '570-ACTUALIZA-PRIMER-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '580-ACTUALIZA-SEGUND-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [773], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '590-INSERTA-NUEVO-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-LEE-EOPERA-DEFOPER', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [831], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [893], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DFOLCTRL'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB147D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [552], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '999-0100-FIN', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB149D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '999-0100-FIN', programName: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-VALOR-PARAM-T84', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-LIQUID-CASA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-LIQUID-BCO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [938], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1081], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB157D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [402], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-VENCE-INPC', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [789], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-INPC-REAL', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [826], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '540-VALOR-PARAM-T84', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [855], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '545-BUSCA-LIQUIDACION', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-LIQUIDA-CAS', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-LIQUIDA-BCO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [985], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1036], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1089], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB158D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '010-OBTIENE-FECHA-HABIL', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '020-CALCULO-POSIC-Y-EFTVO', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [182, 207, 236, 262, 287, 314, 338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '030-OBTEN-POSICION-ANTERIOR', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '040-ACTUALIZA-POSICION', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB033D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'GOBACK', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SICPAP70'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB034D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '005-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '020-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '025-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '030-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '065-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [644, 658, 672], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '070-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [690, 705, 721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '500-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [825], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '515-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '520-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [912], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-9900-FIN', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [943], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'COB034D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB034D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [134], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB034D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB034D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '000-0200-PROCESO-PRINCIPAL', programName: 'COB038D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '600-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '610-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '630-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '640-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '650-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '660-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '670-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '680-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '690-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '695-0100-INICIO', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '695-9900-FIN', programName: 'COB038D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '990-9900-FIN', programName: 'COB038D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [61], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SIC231'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [73], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB038D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB038D.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '005-DECLARA-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [132, 141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '020-ACCESA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '030-ACTUALIZA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '060-INSERTA-EMICOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '070-ACTUALIZA-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '510-LEE-OPERCOB', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '700-FIN', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '850-COMMIT-GRAL', programName: 'COB039D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [398, 405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB039D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'DEMICOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SICMF334'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB039D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB039D.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260619T004259Z-cib132d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d-cob034d-cob038d-cob039d'};

