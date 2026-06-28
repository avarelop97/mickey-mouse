// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d
// ============================================================================

MERGE (n:Copybook {name: 'DCARTERA'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [400], ingestion: 'auto', layer: 'dependency', name: 'DCARTERA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCONGTIA'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [420], ingestion: 'auto', layer: 'dependency', name: 'DCONGTIA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCONTITU'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [425], ingestion: 'auto', layer: 'dependency', name: 'DCONTITU', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCTAMARC'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [415], ingestion: 'auto', layer: 'dependency', name: 'DCTAMARC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DCUENTA'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [410], ingestion: 'auto', layer: 'dependency', name: 'DCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DDEFOPER'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [405], ingestion: 'auto', layer: 'dependency', name: 'DDEFOPER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFOLCTRL'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [257], ingestion: 'auto', layer: 'dependency', name: 'DFOLCTRL', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPECORI'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [390], ingestion: 'auto', layer: 'dependency', name: 'DOPECORI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DOPERCOB'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [105], ingestion: 'auto', layer: 'dependency', name: 'DOPERCOB', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DPARAM'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [112], ingestion: 'auto', layer: 'dependency', name: 'DPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CE028'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1379], ingestion: 'auto', layer: 'dependency', name: 'SI2CE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2CM026'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1412], ingestion: 'auto', layer: 'dependency', name: 'SI2CM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2FH027'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [228], ingestion: 'auto', layer: 'dependency', name: 'SI2FH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SI2R1025'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [278], ingestion: 'auto', layer: 'dependency', name: 'SI2R1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC000'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [242], ingestion: 'auto', layer: 'dependency', name: 'SIC000', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC004'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [434], ingestion: 'auto', layer: 'dependency', name: 'SIC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIC005'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [98], ingestion: 'auto', layer: 'dependency', name: 'SIC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICAM029'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [271], ingestion: 'auto', layer: 'dependency', name: 'SICAM029', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCE028'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [512], ingestion: 'auto', layer: 'dependency', name: 'SICCE028', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICCM026'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [529], ingestion: 'auto', layer: 'dependency', name: 'SICCM026', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFH027'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [88], ingestion: 'auto', layer: 'dependency', name: 'SICFH027', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICFP024'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [278], ingestion: 'auto', layer: 'dependency', name: 'SICFP024', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICIP023'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [251], ingestion: 'auto', layer: 'dependency', name: 'SICIP023', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICNF043'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [128], ingestion: 'auto', layer: 'dependency', name: 'SICNF043', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPAP70'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [71], ingestion: 'auto', layer: 'dependency', name: 'SICPAP70', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPAP73'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [52], ingestion: 'auto', layer: 'dependency', name: 'SICPAP73', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICPT104'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [264], ingestion: 'auto', layer: 'dependency', name: 'SICPT104', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICR1025'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [130], ingestion: 'auto', layer: 'dependency', name: 'SICR1025', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICTAT84'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [279], ingestion: 'auto', layer: 'dependency', name: 'SICTAT84', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SICVS011'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [256], ingestion: 'auto', layer: 'dependency', name: 'SICVS011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB001'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [91], ingestion: 'auto', layer: 'dependency', name: 'SIXAB001', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SIXAB002'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [440], ingestion: 'auto', layer: 'dependency', name: 'SIXAB002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [46], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'CARTERA'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165], ingestion: 'auto', layer: 'data-access', name: 'CARTERA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CONGTIA'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1471, 1472, 1473, 1474, 1475, 1476, 1477, 1478], ingestion: 'auto', layer: 'data-access', name: 'CONGTIA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CONTITU'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1493, 1494, 1495, 1496, 1497, 1498, 1499, 1500], ingestion: 'auto', layer: 'data-access', name: 'CONTITU', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CTAMARC'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244], ingestion: 'auto', layer: 'data-access', name: 'CTAMARC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'DEFOPER'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1100, 1101, 1102, 1103, 1104, 1105, 1106], ingestion: 'auto', layer: 'data-access', name: 'DEFOPER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'FOLCTRL'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [712, 713, 714, 715, 716, 717, 718], ingestion: 'auto', layer: 'data-access', name: 'FOLCTRL', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPECORI'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261], ingestion: 'auto', layer: 'data-access', name: 'OPECORI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OPERCOB'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [292, 293, 294, 295, 296], ingestion: 'auto', layer: 'data-access', name: 'OPERCOB', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [409, 410, 411, 412, 413, 414], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'data-access'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB130D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que futuros vencimiento de indices.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB130D', nodeType: 'business-function', objective: 'FUTUROS VENCIMIENTO DE INDICES.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB132D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB132D', nodeType: 'business-function', objective: 'Capacidad funcional principal de CIB132D.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB138D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que futuros novaciones de inpc. modifico: rogelio perez melendez fecha : febrero 1996.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. MAYO 1995. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB138D', nodeType: 'business-function', objective: 'FUTUROS NOVACIONES DE INPC. MODIFICO: ROGELIO PEREZ MELENDEZ FECHA : FEBRERO 1996.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB139D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que futuros novaciones de tasa. incluye cambios de anio 2000 ifoladm, inova 23/10/98. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. MAYO 1995. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB139D', nodeType: 'business-function', objective: 'FUTUROS NOVACIONES DE TASA. INCLUYE CAMBIOS DE ANIO 2000 IFOLADM, INOVA 23/10/98', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB140D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. 12 JUNIO 1995. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB140D', nodeType: 'business-function', objective: 'Capacidad funcional principal de CIB140D.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB147D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que futuros diversificacion por intermediario modifico: rogelio perez melendez fecha : febrero 1996.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. 08-DIC-1995. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB147D', nodeType: 'business-function', objective: 'FUTUROS DIVERSIFICACION POR INTERMEDIARIO MODIFICO: ROGELIO PEREZ MELENDEZ FECHA : FEBRERO 1996.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB149D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. 08-DIC-1995. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB149D', nodeType: 'business-function', objective: 'Capacidad funcional principal de CIB149D.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB157D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que futuros liquidacion de tasas.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB157D', nodeType: 'business-function', objective: 'FUTUROS LIQUIDACION DE TASAS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_CIB158D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que futuros liquidacion de indices.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_CIB158D', nodeType: 'business-function', objective: 'FUTUROS LIQUIDACION DE INDICES.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_COB033D'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que al final de cada dia,calcular y actualizar la posicion y efectivo a partir de las que vencen el dia de hoy y de las que liquidan. fecha de ultima modificacion:. Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_COB033D', nodeType: 'business-function', objective: 'AL FINAL DE CADA DIA,CALCULAR Y ACTUALIZAR LA POSICION Y EFECTIVO A PARTIR DE LAS QUE VENCEN EL DIA DE HOY Y DE LAS QUE LIQUIDAN. FECHA DE ULTIMA MODIFICACION:', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'functional'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [422], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-PROCESO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [442], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-PROCESO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [467], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Inicializa el flujo operativo de CIB130D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [487], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Inicializa el flujo operativo de CIB130D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [495], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-INICIA-WAREAS-REPORTE', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-PROCESA-VENCIMIENTOS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [504], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-PROCESA-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-ACTUALIZA-N', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [529], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-ACTUALIZA-N', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '051-ACTUALIZA-P', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [562], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '051-ACTUALIZA-P', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-ACTUALIZA-T', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [574], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-ACTUALIZA-T', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '056-ACTUALIZA-G', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [588], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '056-ACTUALIZA-G', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-INSERTA-PLUS-MINUS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [607], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-INSERTA-PLUS-MINUS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-IREF-SIGUIENTE', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [640], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-IREF-SIGUIENTE', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-VENCIMIENTO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [649], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-DIAS-VENCIMIENTO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [682], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-DIAS-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-TERMINA-GARANTIAS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [698], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-TERMINA-GARANTIAS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Cierra la ejecucion de CIB130D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-VENCE-INPC', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [724], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-VENCE-INPC', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-INPC-REAL', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [761], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-INPC-REAL', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-VALOR-PARAM-TO2', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [793], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-VALOR-PARAM-TO2', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '545-BUSCA-VENCIMIENTO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [827], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '545-BUSCA-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB130D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-DEFINE-CURSOR-VENCIM-CAS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [856], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-DEFINE-CURSOR-VENCIM-CAS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Cierra la ejecucion de CIB130D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-DEFINE-CURSOR-VENCIM-BCO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [932], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-DEFINE-CURSOR-VENCIM-BCO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Cierra la ejecucion de CIB130D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-VENCIMIENTOS-CAS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1008], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-VENCIMIENTOS-CAS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB130D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '565-LEE-VENCIMIENTOS-BCO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1069], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '565-LEE-VENCIMIENTOS-BCO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB130D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1130], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-BUSCA-EOPERA', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB130D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '580-BUSCA-GARANTIAS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1154], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '580-BUSCA-GARANTIAS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB130D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '585-BUSCA-GARANTIAS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1204], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '585-BUSCA-GARANTIAS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB130D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '590-BUSCA-PLUS-MINUS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1238], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '590-BUSCA-PLUS-MINUS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB130D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-OPECORI', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1273], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1295], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '625-ACTUALIZA-OPECORI', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1321], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '625-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '626-ACTUALIZA-OPECORI', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1347], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '626-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1373], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-INSERTA-EN-OPECORI', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '635-ACTUALIZA-PARAM', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1447], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '635-ACTUALIZA-PARAM', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '640-ACTUALIZA-CONGTIA', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1470], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '640-ACTUALIZA-CONGTIA', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '650-ACTUALIZA-CONTITU', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1492], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '650-ACTUALIZA-CONTITU', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Persiste actualizaciones de negocio en CIB130D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1515], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Cierra la ejecucion de CIB130D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1525], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1547], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1585], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOT-CONCEPTOS-REPO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1605], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Gestiona contingencias en CIB130D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1622], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1642], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Cierra la ejecucion de CIB130D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1621], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [9], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB130D', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [8], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB130D', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [22], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [13], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [34], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [28], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [26], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [27], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [11], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [25], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [7], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1641], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'})
SET n += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [45], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB130D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', summary: 'Orquesta una fase funcional de CIB130D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-INICIO', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [257], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-INICIO', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Inicializa el flujo operativo de CIB132D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [284], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '105-PROCESO-CURSORES', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-PROCESA-IMP', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [381], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-PROCESA-IMP', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400-IMPRIME-ENCA', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [398], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400-IMPRIME-ENCA', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-LEE-REGISTRO-CASA', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [414], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-LEE-REGISTRO-CASA', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB132D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-LEE-REGISTRO-BANCO', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [447], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-LEE-REGISTRO-BANCO', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB132D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-MOVER-CAMPOS', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [479], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-MOVER-CAMPOS', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-RUTINA-DE-ERRORES', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [500], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-RUTINA-DE-ERRORES', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Gestiona contingencias en CIB132D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [515], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '740-CERRAR-ARCHIVOS', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [528], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Gestiona contingencias en CIB132D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [544], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '990-CIF-CTL', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [568], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-FIN', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [588], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-FIN', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Cierra la ejecucion de CIB132D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [567], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [6], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [23], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [37], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [30], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [27], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [29], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [9], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [26], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [587], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [24], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'})
SET n += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [51], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB132D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', summary: 'Orquesta una fase funcional de CIB132D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [413], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [450], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Inicializa el flujo operativo de CIB138D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [462], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Inicializa el flujo operativo de CIB138D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-PROCESA-VENCIMIENTOS', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [483], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-PROCESA-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-BUSCA-PREVIA-CONCERTADA', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [497], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-BUSCA-PREVIA-CONCERTADA', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB138D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '501-BUSCA-CTA-PAGAR-COBRAR', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [547], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '501-BUSCA-CTA-PAGAR-COBRAR', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB138D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [602], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-DEFINE-CURSOR-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Cierra la ejecucion de CIB138D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [681], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-DEFINE-CURSOR-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Cierra la ejecucion de CIB138D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [762], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB138D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '565-LEE-VENCIMIENTOS', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [867], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '565-LEE-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB138D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [971], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-BUSCA-EOPERA', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB138D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [994], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Cierra la ejecucion de CIB138D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1004], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1023], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '721-REP-CONCEPTOS', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1053], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '721-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '722-REP-CONCEPTOS', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1082], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '722-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1136], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Gestiona contingencias en CIB138D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1153], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1173], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Cierra la ejecucion de CIB138D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1152], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB138D', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB138D', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [22], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [11], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [32], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [28], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [26], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [27], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [9], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [25], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1172], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'})
SET n += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [43], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB138D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', summary: 'Orquesta una fase funcional de CIB138D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [451], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [493], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Inicializa el flujo operativo de CIB139D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [507], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Inicializa el flujo operativo de CIB139D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-PROCESA-VENCIMIENTOS', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [528], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-PROCESA-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '500-BUSCA-PREVIA-CONCERTADA', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [541], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '500-BUSCA-PREVIA-CONCERTADA', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB139D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '501-BUSCA-CTA-PAGAR-COBRAR', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [605], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '501-BUSCA-CTA-PAGAR-COBRAR', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB139D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [675], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-DEFINE-CURSOR-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Cierra la ejecucion de CIB139D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [773], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-DEFINE-CURSOR-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Cierra la ejecucion de CIB139D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [872], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB139D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '565-LEE-VENCIMIENTOS', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1007], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '565-LEE-VENCIMIENTOS', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB139D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1142], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-BUSCA-EOPERA', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB139D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '580-TASA-PARAMETRO', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1166], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '580-TASA-PARAMETRO', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1192], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Cierra la ejecucion de CIB139D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1202], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1219], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '721-REP-CONCEPTOS', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1269], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '721-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '722-REP-CONCEPTOS', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1311], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '722-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-SUMA-TOTALES', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1353], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-SUMA-TOTALES', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '810-SUMA-TOTALES-FIN', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1411], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '810-SUMA-TOTALES-FIN', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Cierra la ejecucion de CIB139D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1443], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Gestiona contingencias en CIB139D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1461], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1478], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Cierra la ejecucion de CIB139D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1460], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB139D', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB139D', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [19], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [8], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [29], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [25], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [23], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [24], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [6], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [22], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1477], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [20], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'})
SET n += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [40], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB139D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', summary: 'Orquesta una fase funcional de CIB139D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [268], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [282], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Inicializa el flujo operativo de CIB140D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-LIMPIA-REPORTE', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [296], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-LIMPIA-REPORTE', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-EJECUTA-ABRE-LEE-CURSOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [310], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-EJECUTA-ABRE-LEE-CURSOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-MUEVE-INFORMACION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [333], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-MUEVE-INFORMACION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-PROCESA-INFORMACION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [349], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-GENERA-REGISTRO-IMP-ACTP', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [399], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-GENERA-REGISTRO-IMP-ACTP', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-MUEVE-DATOS-DE-DCLOPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [438], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-MUEVE-DATOS-DE-DCLOPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-MUEVE-DATOS-DE-W010OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [465], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-MUEVE-DATOS-DE-W010OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '090-GENERA-REGISTRO-IMP-NVONT', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [500], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '090-GENERA-REGISTRO-IMP-NVONT', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-OBTENER-RESIDUO-NOVACION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [524], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-OBTENER-RESIDUO-NOVACION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-OBTENER-IOPERA-RESIDUO-IND', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [542], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-OBTENER-IOPERA-RESIDUO-IND', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-EJECUTA-LEE-CURSOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [557], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-EJECUTA-LEE-CURSOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEF-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [575], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEF-PRIMER-CURSOR-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [608], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-PRIMER-CURSOR-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-DEF-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [630], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-DEF-SEGUND-CURSOR-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-LEE-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [666], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-LEE-SEGUND-CURSOR-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-OBTIENE-FOLIO', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [687], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-OBTIENE-FOLIO', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-ACTUALIZA-FOLIO', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [711], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-ACTUALIZA-FOLIO', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Persiste actualizaciones de negocio en CIB140D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-ACTUALIZA-PRIMER-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [735], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-ACTUALIZA-PRIMER-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Persiste actualizaciones de negocio en CIB140D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '580-ACTUALIZA-SEGUND-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [757], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '580-ACTUALIZA-SEGUND-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Persiste actualizaciones de negocio en CIB140D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '590-INSERTA-NUEVO-OPECORI', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [779], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '590-INSERTA-NUEVO-OPECORI', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Persiste actualizaciones de negocio en CIB140D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-LEE-EOPERA-DEFOPER', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [813], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-LEE-EOPERA-DEFOPER', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB140D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-CIERRA-PRIMER-CURSOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [837], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-CIERRA-PRIMER-CURSOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Cierra la ejecucion de CIB140D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-CIERRA-SEGUND-CURSOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [845], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-CIERRA-SEGUND-CURSOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Cierra la ejecucion de CIB140D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [853], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Cierra la ejecucion de CIB140D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [863], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [881], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [899], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Gestiona contingencias en CIB140D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB140D', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB140D', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [20], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [32], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [26], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [24], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [25], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [23], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-04-TIPONOV', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [305], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-04-TIPONOV', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [21], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'})
SET n += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [43], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB140D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', summary: 'Orquesta una fase funcional de CIB140D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [204], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [223], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Inicializa el flujo operativo de CIB147D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [243], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-PROCESO-CURSORES', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [276], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Inicializa el flujo operativo de CIB147D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [284], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [298], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-DECIDE-IOPERA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-GENERA-REGISTRO-ARREGLO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [314], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-GENERA-REGISTRO-ARREGLO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [327], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROCESA-CORTE', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-PROCESA-IMPRIME', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [335], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-PROCESA-IMPRIME', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-GENERA-REGISTRO-IMPRESION', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [344], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-GENERA-REGISTRO-IMPRESION', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '08-DIC-1995', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [13], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '08-DIC-1995', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [376], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEFINE-CURSOR-DIVERS-CASA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Cierra la ejecucion de CIB147D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [406], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-DEFINE-CURSOR-DIVERS-BANCO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Cierra la ejecucion de CIB147D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [436], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-DIVERS-CASA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB147D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [471], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-DIVERS-BANCO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB147D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [506], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Cierra la ejecucion de CIB147D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [516], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [532], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [549], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Gestiona contingencias en CIB147D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [566], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-FIN', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [586], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-FIN', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Cierra la ejecucion de CIB147D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [565], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB147D', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB147D', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [24], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [12], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [36], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [30], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [28], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [29], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [10], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [27], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [585], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [25], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-MONTO-NETO', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [279], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-MONTO-NETO', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'})
SET n += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [47], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB147D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', summary: 'Orquesta una fase funcional de CIB147D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [185], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [205], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Inicializa el flujo operativo de CIB149D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [225], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-PROCESO-CURSORES', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [258], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Inicializa el flujo operativo de CIB149D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [266], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-PROCESA-INFORMACION', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [280], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-DECIDE-IOPERA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-GENERA-REGISTRO-ARREGLO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [296], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-GENERA-REGISTRO-ARREGLO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [307], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-PROCESA-CORTE', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-PROCESA-IMPRIME', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [315], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-PROCESA-IMPRIME', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-GENERA-REGISTRO-IMPRESION', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [324], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-GENERA-REGISTRO-IMPRESION', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '08-DIC-1995', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [10], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '08-DIC-1995', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [347], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-DEFINE-CURSOR-DIVERS-CASA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Cierra la ejecucion de CIB149D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [374], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '515-DEFINE-CURSOR-DIVERS-BANCO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Cierra la ejecucion de CIB149D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [401], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-LEE-DIVERS-CASA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB149D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [430], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '530-LEE-DIVERS-BANCO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB149D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [459], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Cierra la ejecucion de CIB149D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [469], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [485], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [502], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Gestiona contingencias en CIB149D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [519], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-FIN', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [523], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-FIN', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Cierra la ejecucion de CIB149D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [518], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB149D', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB149D', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [20], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [32], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [26], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [24], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [25], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [23], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [522], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [21], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'W010-MONTO-NETO', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [261], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'W010-MONTO-NETO', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'})
SET n += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [43], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB149D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', summary: 'Orquesta una fase funcional de CIB149D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [414], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-PROCESO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [435], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-PROCESO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [465], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Inicializa el flujo operativo de CIB157D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-FECHA-VENCIMIENTO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [478], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-FECHA-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [496], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-INICIA-WAREAS-REPORTE', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACTUALIZA-N', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [508], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACTUALIZA-N', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '060-ACTUALIZA-T', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [543], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '060-ACTUALIZA-T', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-ACTUALIZA-G', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [572], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-ACTUALIZA-G', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '070-DIAS-VENCIMIENTO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [601], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '070-DIAS-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-BUSCA-IREF', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [617], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-BUSCA-IREF', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB157D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '080-PROCESA-LIQUIDACIONES', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [626], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '080-PROCESA-LIQUIDACIONES', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '085-TOTALES', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [660], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '085-TOTALES', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-CARGO-ABONO-ISR', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [687], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-CARGO-ABONO-ISR', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-PLUSVALIA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [700], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-PLUSVALIA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-MINUSVALIA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [726], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-MINUSVALIA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '130-CALCULA-ISR', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [753], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '130-CALCULA-ISR', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-ACTUALIZA-CARTERA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [765], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-ACTUALIZA-CARTERA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-GENERA-ISR', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [781], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-GENERA-ISR', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [797], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '505-TIIE-APLICA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-VALOR-PARAM-T84', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [833], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-VALOR-PARAM-T84', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-DEFINE-CURSOR-LIQUID-CASA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [860], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-DEFINE-CURSOR-LIQUID-CASA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Cierra la ejecucion de CIB157D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-DEFINE-CURSOR-LIQUID-BCO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [903], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-DEFINE-CURSOR-LIQUID-BCO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Cierra la ejecucion de CIB157D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [945], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-LIQUIDACIONES-CAS', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB157D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1004], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '565-LEE-LIQUIDACIONES-BCO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB157D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1063], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-BUSCA-EOPERA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB157D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1087], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-CARTERA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1114], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-INSERTA-EN-CARTERA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1143], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1168], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-INSERTA-EN-OPECORI', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Persiste actualizaciones de negocio en CIB157D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1242], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Cierra la ejecucion de CIB157D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1252], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1271], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1311], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOT-CONCEPTOS-REPO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1334], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Gestiona contingencias en CIB157D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1351], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1371], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Cierra la ejecucion de CIB157D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1350], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [7], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB157D', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB157D', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [19], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [11], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [29], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [25], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [23], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [24], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [9], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [22], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1370], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [20], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'})
SET n += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [40], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB157D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', summary: 'Orquesta una fase funcional de CIB157D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [432], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-PROCESO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [454], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-PROCESO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '015-INICIO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [473], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '015-INICIO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Inicializa el flujo operativo de CIB158D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [495], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-INICIALIZA-WAREAS', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Inicializa el flujo operativo de CIB158D, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '025-FECHA-VENCIMIENTO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [503], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '025-FECHA-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [521], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-INICIA-WAREAS-REPORTE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-PROCESA-LIQUIDACION', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [530], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-PROCESA-LIQUIDACION', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '050-ACTUALIZA-N', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [557], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '050-ACTUALIZA-N', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '055-ACTUALIZA-T', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [592], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '055-ACTUALIZA-T', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '056-ACTUALIZA-G', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [607], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '056-ACTUALIZA-G', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '065-IREF-SIGUIENTE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [627], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '065-IREF-SIGUIENTE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '075-DIAS-VENCIMIENTO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [636], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '075-DIAS-VENCIMIENTO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-CARGO-ABONO-ISR', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [652], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-CARGO-ABONO-ISR', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '110-PLUSVALIA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [671], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '110-PLUSVALIA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '120-MINUSVALIA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [702], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '120-MINUSVALIA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '150-ACTUALIZA-CARTERA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [733], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '150-ACTUALIZA-CARTERA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '160-GENERA-ISR', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [750], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '160-GENERA-ISR', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '510-VENCE-INPC', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [766], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '510-VENCE-INPC', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '520-INPC-REAL', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [803], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '520-INPC-REAL', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '540-VALOR-PARAM-T84', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [835], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '540-VALOR-PARAM-T84', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '545-BUSCA-LIQUIDACION', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [864], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '545-BUSCA-LIQUIDACION', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB158D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '550-DEFINE-CURSOR-LIQUIDA-CAS', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [897], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '550-DEFINE-CURSOR-LIQUIDA-CAS', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Cierra la ejecucion de CIB158D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '555-DEFINE-CURSOR-LIQUIDA-BCO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [945], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '555-DEFINE-CURSOR-LIQUIDA-BCO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Cierra la ejecucion de CIB158D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [993], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '560-LEE-LIQUIDACIONES-CAS', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB158D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1046], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '565-LEE-LIQUIDACIONES-BCO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB158D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1099], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '570-BUSCA-EOPERA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por CIB158D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1123], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '600-ACTUALIZA-CARTERA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1150], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610-INSERTA-EN-CARTERA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1179], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '620-ACTUALIZA-OPECORI', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1205], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '630-INSERTA-EN-OPECORI', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Persiste actualizaciones de negocio en CIB158D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-FIN', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1279], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-FIN', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Cierra la ejecucion de CIB158D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '705-ENCABEZADO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1289], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '705-ENCABEZADO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1311], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '720-REP-CONCEPTOS', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1349], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '730-TOT-CONCEPTOS-REPO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1369], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Gestiona contingencias en CIB158D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1386], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-0100-CONSTRUYE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-9900-FIN', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1406], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-9900-FIN', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Cierra la ejecucion de CIB158D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1385], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-CONST-ENCA-BANCO', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [9], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CIB158D', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [8], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CIB158D', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [22], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [13], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [34], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [28], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-9121', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [26], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-9121', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [27], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [11], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [25], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [7], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'R1-01-CIA', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1405], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'R1-01-CIA', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [23], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'})
SET n += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [45], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'CIB158D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', summary: 'Orquesta una fase funcional de CIB158D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000-CONTROL', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [124], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000-CONTROL', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-OBTIENE-FECHA-HABIL', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [138], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-OBTIENE-FECHA-HABIL', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-CALCULO-POSIC-Y-EFTVO', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [161], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-CALCULO-POSIC-Y-EFTVO', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESA-REPORTE', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [153], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESA-REPORTE', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-OBTEN-POSICION-ANTERIOR', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [357], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-OBTEN-POSICION-ANTERIOR', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por COB033D y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '040-ACTUALIZA-POSICION', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [387], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '040-ACTUALIZA-POSICION', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Persiste actualizaciones de negocio en COB033D, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '700-TERMINA', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [427], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '700-TERMINA', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Cierra la ejecucion de COB033D, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980-ABORTA', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [438], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980-ABORTA', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Gestiona contingencias en COB033D, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [4], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'COB033D', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [3], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'COB033D', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [25], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-WRITTEN', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [9], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-WRITTEN', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [35], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [32], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'GOBACK', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [428], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'GOBACK', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'IBM-4381', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [29], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'IBM-4381', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [31], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [7], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [118], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [28], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'OBJECT-COMPUTER', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'PROGRAM-ID', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [2], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'PROGRAM-ID', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [26], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SOURCE-COMPUTER', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'})
SET n += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [37], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'COB033D', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', summary: 'Orquesta una fase funcional de COB033D, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'CIB130D'})
SET n += {description: 'Programa COBOL que futuros vencimiento de indices.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /.', ingestion: 'auto', layer: 'program', name: 'CIB130D', nodeType: 'program', objective: 'FUTUROS VENCIMIENTO DE INDICES.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB132D'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'CIB132D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB138D'})
SET n += {description: 'Programa COBOL que futuros novaciones de inpc. modifico: rogelio perez melendez fecha : febrero 1996.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. MAYO 1995. /.', ingestion: 'auto', layer: 'program', name: 'CIB138D', nodeType: 'program', objective: 'FUTUROS NOVACIONES DE INPC. MODIFICO: ROGELIO PEREZ MELENDEZ FECHA : FEBRERO 1996.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. MAYO 1995. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB139D'})
SET n += {description: 'Programa COBOL que futuros novaciones de tasa. incluye cambios de anio 2000 ifoladm, inova 23/10/98. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. MAYO 1995. /.', ingestion: 'auto', layer: 'program', name: 'CIB139D', nodeType: 'program', objective: 'FUTUROS NOVACIONES DE TASA. INCLUYE CAMBIOS DE ANIO 2000 IFOLADM, INOVA 23/10/98', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. MAYO 1995. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB140D'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. 12 JUNIO 1995. /.', ingestion: 'auto', layer: 'program', name: 'CIB140D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. 12 JUNIO 1995. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB147D'})
SET n += {description: 'Programa COBOL que futuros diversificacion por intermediario modifico: rogelio perez melendez fecha : febrero 1996.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. 08-DIC-1995. /.', ingestion: 'auto', layer: 'program', name: 'CIB147D', nodeType: 'program', objective: 'FUTUROS DIVERSIFICACION POR INTERMEDIARIO MODIFICO: ROGELIO PEREZ MELENDEZ FECHA : FEBRERO 1996.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. 08-DIC-1995. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB149D'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. 08-DIC-1995. /.', ingestion: 'auto', layer: 'program', name: 'CIB149D', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. 08-DIC-1995. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB157D'})
SET n += {description: 'Programa COBOL que futuros liquidacion de tasas.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /.', ingestion: 'auto', layer: 'program', name: 'CIB157D', nodeType: 'program', objective: 'FUTUROS LIQUIDACION DE TASAS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'CIB158D'})
SET n += {description: 'Programa COBOL que futuros liquidacion de indices.. Pertenece a: CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /.', ingestion: 'auto', layer: 'program', name: 'CIB158D', nodeType: 'program', objective: 'FUTUROS LIQUIDACION DE INDICES.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', system: 'CASA DE BOLSA PROBURSA, S A DE C V. ABRIL 1996. /', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'COB033D'})
SET n += {description: 'Programa COBOL que al final de cada dia,calcular y actualizar la posicion y efectivo a partir de las que vencen el dia de hoy y de las que liquidan. fecha de ultima modificacion:. Pertenece a: CASA DE BOLSA PROBURSA, SA DE CV..', ingestion: 'auto', layer: 'program', name: 'COB033D', nodeType: 'program', objective: 'AL FINAL DE CADA DIA,CALCULAR Y ACTUALIZAR LA POSICION Y EFECTIVO A PARTIR DE LAS QUE VENCEN EL DIA DE HOY Y DE LAS QUE LIQUIDAN. FECHA DE ULTIMA MODIFICACION:', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', system: 'CASA DE BOLSA PROBURSA, SA DE CV.', viewTag: 'cobol-program'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB130D', name: 'CIB130D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB130D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB130D', ingestion: 'auto', layer: 'functional', name: 'CIB130D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB130D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB132D', name: 'CIB132D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB132D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB132D', ingestion: 'auto', layer: 'functional', name: 'CIB132D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB132D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB138D', name: 'CIB138D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB138D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB138D', ingestion: 'auto', layer: 'functional', name: 'CIB138D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB138D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB139D', name: 'CIB139D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB139D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB139D', ingestion: 'auto', layer: 'functional', name: 'CIB139D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB139D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB140D', name: 'CIB140D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB140D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB140D', ingestion: 'auto', layer: 'functional', name: 'CIB140D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB140D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB147D', name: 'CIB147D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB147D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB147D', ingestion: 'auto', layer: 'functional', name: 'CIB147D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB147D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB149D', name: 'CIB149D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB149D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB149D', ingestion: 'auto', layer: 'functional', name: 'CIB149D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB149D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB157D', name: 'CIB157D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB157D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB157D', ingestion: 'auto', layer: 'functional', name: 'CIB157D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB157D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB158D', name: 'CIB158D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de CIB158D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_CIB158D', ingestion: 'auto', layer: 'functional', name: 'CIB158D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/CIB158D.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB033D', name: 'COB033D_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de COB033D para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_COB033D', ingestion: 'auto', layer: 'functional', name: 'COB033D_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d', sourceFile: 'src/COB033D.cbl', viewTag: 'functional'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '010-PROCESO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [442], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '015-INICIO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [467], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [487], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [495], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '040-PROCESA-VENCIMIENTOS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '050-ACTUALIZA-N', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '051-ACTUALIZA-P', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [562], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '055-ACTUALIZA-T', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [574], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '056-ACTUALIZA-G', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '060-INSERTA-PLUS-MINUS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [607], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '065-IREF-SIGUIENTE', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '070-VENCIMIENTO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '075-DIAS-VENCIMIENTO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [682], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '080-TERMINA-GARANTIAS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [698], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '510-VENCE-INPC', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [724], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '520-INPC-REAL', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [761], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '540-VALOR-PARAM-TO2', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [793], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '545-BUSCA-VENCIMIENTO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [827], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '550-DEFINE-CURSOR-VENCIM-CAS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [856], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '555-DEFINE-CURSOR-VENCIM-BCO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [932], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '560-LEE-VENCIMIENTOS-CAS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1008], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '565-LEE-VENCIMIENTOS-BCO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1069], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '580-BUSCA-GARANTIAS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '585-BUSCA-GARANTIAS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '590-BUSCA-PLUS-MINUS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '600-ACTUALIZA-OPECORI', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '625-ACTUALIZA-OPECORI', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '626-ACTUALIZA-OPECORI', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '635-ACTUALIZA-PARAM', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '640-ACTUALIZA-CONGTIA', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '650-ACTUALIZA-CONTITU', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1492], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1525], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1622], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1621], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'CIB130D', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [13], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'FILE', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1641], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '100-INICIO', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '110-PROCESA-IMP', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '400-IMPRIME-ENCA', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '500-LEE-REGISTRO-CASA', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '550-LEE-REGISTRO-BANCO', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '600-MOVER-CAMPOS', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '710-RUTINA-DE-ERRORES', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [515], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [528], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [567], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'FILE', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [51], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '080-PROCESA-VENCIMIENTOS', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [483], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '500-BUSCA-PREVIA-CONCERTADA', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [497], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '501-BUSCA-CTA-PAGAR-COBRAR', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '550-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '555-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [681], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [762], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '565-LEE-VENCIMIENTOS', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [867], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [971], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [994], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1023], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '721-REP-CONCEPTOS', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1053], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '722-REP-CONCEPTOS', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1082], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'CIB138D', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'FILE', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '080-PROCESA-VENCIMIENTOS', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [528], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '500-BUSCA-PREVIA-CONCERTADA', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '501-BUSCA-CTA-PAGAR-COBRAR', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '550-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '555-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [773], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [872], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '565-LEE-VENCIMIENTOS', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1007], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '580-TASA-PARAMETRO', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '721-REP-CONCEPTOS', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '722-REP-CONCEPTOS', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '800-SUMA-TOTALES', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '810-SUMA-TOTALES-FIN', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1460], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'CIB139D', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'FILE', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '020-LIMPIA-REPORTE', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '030-EJECUTA-ABRE-LEE-CURSOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '040-MUEVE-INFORMACION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [333], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '050-PROCESA-INFORMACION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '060-GENERA-REGISTRO-IMP-ACTP', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '070-MUEVE-DATOS-DE-DCLOPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '080-MUEVE-DATOS-DE-W010OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [465], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '090-GENERA-REGISTRO-IMP-NVONT', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '100-OBTENER-RESIDUO-NOVACION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '110-OBTENER-IOPERA-RESIDUO-IND', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [542], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '120-EJECUTA-LEE-CURSOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '510-DEF-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [575], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '520-LEE-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '530-DEF-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '540-LEE-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '550-OBTIENE-FOLIO', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '560-ACTUALIZA-FOLIO', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [711], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '570-ACTUALIZA-PRIMER-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '580-ACTUALIZA-SEGUND-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [757], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '590-INSERTA-NUEVO-OPECORI', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [779], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '600-LEE-EOPERA-DEFOPER', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [813], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '610-CIERRA-PRIMER-CURSOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [837], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '620-CIERRA-SEGUND-CURSOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [845], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [863], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [881], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [899], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'CIB140D', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'FILE', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'R1-04-TIPONOV', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [204], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '050-GENERA-REGISTRO-ARREGLO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [327], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '065-PROCESA-IMPRIME', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '070-GENERA-REGISTRO-IMPRESION', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '08-DIC-1995', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [13], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [436], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [471], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [532], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [549], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [566], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [586], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'CIB147D', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [12], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'FILE', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [36], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'W010-MONTO-NETO', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '010-INICIO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '015-PROCESO-CURSORES', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '030-PROCESA-INFORMACION', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '040-DECIDE-IOPERA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '050-GENERA-REGISTRO-ARREGLO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '060-PROCESA-CORTE', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '065-PROCESA-IMPRIME', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '070-GENERA-REGISTRO-IMPRESION', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '08-DIC-1995', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [10], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [430], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [485], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'CIB149D', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'FILE', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [21], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'W010-MONTO-NETO', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [43], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '010-PROCESO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [435], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '015-INICIO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [465], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '020-FECHA-VENCIMIENTO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '040-ACTUALIZA-N', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '060-ACTUALIZA-T', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '065-ACTUALIZA-G', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [572], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '070-DIAS-VENCIMIENTO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [601], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '075-BUSCA-IREF', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '080-PROCESA-LIQUIDACIONES', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [626], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '085-TOTALES', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '100-CARGO-ABONO-ISR', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '110-PLUSVALIA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [700], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '120-MINUSVALIA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [726], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '130-CALCULA-ISR', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '150-ACTUALIZA-CARTERA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [765], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '160-GENERA-ISR', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '510-VALOR-PARAM-T84', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [833], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '550-DEFINE-CURSOR-LIQUID-CASA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [860], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '555-DEFINE-CURSOR-LIQUID-BCO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [903], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1004], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1063], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1087], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1334], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1351], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'CIB157D', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [19], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'FILE', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [20], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '000-CONTROL', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '010-PROCESO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '015-INICIO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '020-INICIALIZA-WAREAS', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [495], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '025-FECHA-VENCIMIENTO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [503], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '030-INICIA-WAREAS-REPORTE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [521], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '040-PROCESA-LIQUIDACION', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '050-ACTUALIZA-N', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '055-ACTUALIZA-T', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '056-ACTUALIZA-G', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [607], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '065-IREF-SIGUIENTE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [627], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '075-DIAS-VENCIMIENTO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '100-CARGO-ABONO-ISR', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '110-PLUSVALIA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [671], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '120-MINUSVALIA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '150-ACTUALIZA-CARTERA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '160-GENERA-ISR', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [750], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '510-VENCE-INPC', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '520-INPC-REAL', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [803], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '540-VALOR-PARAM-T84', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '545-BUSCA-LIQUIDACION', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [864], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '550-DEFINE-CURSOR-LIQUIDA-CAS', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [897], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '555-DEFINE-CURSOR-LIQUIDA-BCO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [945], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [993], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1046], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1099], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '700-FIN', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '705-ENCABEZADO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '999-0100-CONSTRUYE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: '999-CONST-ENCA-BANCO', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'AUTHOR', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'CIB158D', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [8], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [22], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [13], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'FILE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'IBM-9121', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [27], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [11], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'R1-01-CIA', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [23], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [45], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '000-CONTROL', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '010-OBTIENE-FECHA-HABIL', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '020-CALCULO-POSIC-Y-EFTVO', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '020-PROCESA-REPORTE', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '030-OBTEN-POSICION-ANTERIOR', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [357], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '040-ACTUALIZA-POSICION', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '700-TERMINA', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'AUTHOR', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'COB033D', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'DATE-WRITTEN', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [9], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'FILE', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'GOBACK', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'IBM-4381', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'INSTALLATION', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'LINKAGE', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'OBJECT-COMPUTER', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'PROGRAM-ID', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [2], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'SOURCE-COMPUTER', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [26], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB130D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB130D', name: 'CIB130D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB132D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB132D', name: 'CIB132D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB138D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB138D', name: 'CIB138D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB139D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB139D', name: 'CIB139D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB140D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB140D', name: 'CIB140D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB147D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB147D', name: 'CIB147D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB149D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB149D', name: 'CIB149D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB157D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB157D', name: 'CIB157D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_CIB158D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB158D', name: 'CIB158D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_COB033D'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB033D', name: 'COB033D_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB130D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB130D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [476], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-VENCE-INPC', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-INPC-REAL', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '540-VALOR-PARAM-TO2', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '545-BUSCA-VENCIMIENTO', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [845], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-VENCIM-CAS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [924], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-VENCIM-BCO', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1000], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS-CAS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1051], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-VENCIMIENTOS-BCO', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '580-BUSCA-GARANTIAS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '585-BUSCA-GARANTIAS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '590-BUSCA-PLUS-MINUS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '625-ACTUALIZA-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '626-ACTUALIZA-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1441], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '635-ACTUALIZA-PARAM', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '640-ACTUALIZA-CONGTIA', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '650-ACTUALIZA-CONTITU', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB130D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB130D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB130D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'CIB132D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [306, 320, 363, 374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '500-BUSCA-PREVIA-CONCERTADA', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '501-BUSCA-CTA-PAGAR-COBRAR', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [796], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [901], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '722-REP-CONCEPTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB138D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SICTAT84'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '500-BUSCA-PREVIA-CONCERTADA', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '501-BUSCA-CTA-PAGAR-COBRAR', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [765], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [863], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [914], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [911], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1046], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '580-TASA-PARAMETRO', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '810-SUMA-TOTALES-FIN', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB139D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1446], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SICTAT84'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-DEF-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-LEE-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '530-DEF-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '540-LEE-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-OBTIENE-FOLIO', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-ACTUALIZA-FOLIO', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-ACTUALIZA-PRIMER-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '580-ACTUALIZA-SEGUND-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [773], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '590-INSERTA-NUEVO-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '600-LEE-EOPERA-DEFOPER', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [831], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [893], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DFOLCTRL'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB147D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [552], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-0100-FIN', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB149D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-0100-FIN', programName: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-VALOR-PARAM-T84', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-LIQUID-CASA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-LIQUID-BCO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [938], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1081], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB157D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [402], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-VENCE-INPC', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [789], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-INPC-REAL', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [826], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '540-VALOR-PARAM-T84', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [855], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '545-BUSCA-LIQUIDACION', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-LIQUIDA-CAS', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-LIQUIDA-BCO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [985], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1036], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1089], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB158D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '010-OBTIENE-FECHA-HABIL', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '020-CALCULO-POSIC-Y-EFTVO', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [182, 207, 236, 262, 287, 314, 338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '030-OBTEN-POSICION-ANTERIOR', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '040-ACTUALIZA-POSICION', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB033D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'GOBACK', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SICPAP70'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB130D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB132D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB138D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB139D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB140D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB147D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB149D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB157D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Functionality {name: 'FUNCTIONALITY_CIB158D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Functionality {name: 'FUNCTIONALITY_COB033D'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SICTAT84'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SICTAT84'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1446], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'DFOLCTRL'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [893], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [552], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [402], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SICPAP70'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1131, 1132, 1133, 1134, 1135, 1136, 1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 914, 915, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 990, 991, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165, 1166, 1167, 1168, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [725, 726, 727, 728, 729, 730, 731, 762, 763, 764, 765, 768, 770, 771, 794, 795, 796, 797, 798, 799, 800, 801], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB132D'}), (b:DBTable {name: 'CTAMARC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [972, 973, 974, 975, 976, 977], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB138D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 663, 664, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 742, 743, 744], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1143, 1144, 1145, 1146, 1147, 1148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 754, 755, 756, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 852, 853, 854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB139D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1168, 1169, 1170, 1171, 1172, 1173, 1174, 1175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [814, 815, 816, 817, 818, 819, 820], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'FOLCTRL'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [688, 689, 690, 691, 692, 693, 694], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB147D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB149D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1064, 1065, 1066, 1067, 1068, 1069, 1070], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [798, 799, 800, 801, 802, 803, 804, 805, 806, 835, 836, 837, 838, 839, 840, 841], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'DEFOPER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1100, 1101, 1102, 1103, 1104, 1105, 1106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 946, 947, 948, 949, 950, 951, 952, 953, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975, 976], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [767, 768, 769, 770, 771, 772, 773, 804, 805, 806, 807, 810, 812, 813, 837, 838, 839, 840, 841, 842, 843], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [165, 166, 167, 168, 169, 170, 171, 172, 190, 191, 192, 193, 194, 195, 196, 197, 218, 219, 220, 221, 222, 223, 224, 225, 226, 244, 245, 246, 247, 248, 249, 250, 251, 252, 297, 298, 299, 300, 301, 302, 303, 304, 321, 322, 323, 324, 325, 326, 327, 328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [139, 140, 141, 142, 143, 144, 272, 273, 274, 275, 276, 277, 358, 359, 360, 361, 362, 363, 364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB130D', name: 'CIB130D_PROCESSING'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB130D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1642], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB132D', name: 'CIB132D_PROCESSING'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB132D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB138D', name: 'CIB138D_PROCESSING'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB138D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB139D', name: 'CIB139D_PROCESSING'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB139D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB140D', name: 'CIB140D_PROCESSING'}), (b:Paragraph {name: '980-ABORTA', programName: 'CIB140D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [899], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB147D', name: 'CIB147D_PROCESSING'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB147D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [586], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB149D', name: 'CIB149D_PROCESSING'}), (b:Paragraph {name: '999-0100-FIN', programName: 'CIB149D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB157D', name: 'CIB157D_PROCESSING'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB157D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_CIB158D', name: 'CIB158D_PROCESSING'}), (b:Paragraph {name: '999-9900-FIN', programName: 'CIB158D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_COB033D', name: 'COB033D_PROCESSING'}), (b:Paragraph {name: '980-ABORTA', programName: 'COB033D'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:DBTable {name: 'CONGTIA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1471, 1472, 1473, 1474, 1475, 1476, 1477, 1478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:DBTable {name: 'CONTITU'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1493, 1494, 1495, 1496, 1497, 1498, 1499, 1500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1274, 1275, 1276, 1277, 1278, 1279, 1280, 1281, 1282, 1283, 1296, 1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1322, 1323, 1324, 1325, 1326, 1327, 1328, 1329, 1330, 1331, 1348, 1349, 1350, 1351, 1352, 1353, 1354, 1355, 1356, 1357, 1374, 1375, 1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391, 1392, 1393, 1394, 1395, 1396, 1397, 1398, 1399, 1400, 1401, 1402, 1403, 1404, 1405, 1406, 1407, 1408, 1409, 1410, 1411, 1412, 1413, 1414, 1415, 1416, 1417, 1418, 1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1427, 1428, 1429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB130D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1448, 1449, 1450, 1451, 1452, 1453, 1454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'FOLCTRL'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [712, 713, 714, 715, 716, 717, 718], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB140D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [736, 737, 738, 739, 740, 741, 742, 743, 758, 759, 760, 761, 762, 763, 764, 765, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'CARTERA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1089, 1090, 1091, 1092, 1093, 1094, 1095, 1096, 1097, 1098, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB157D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1144, 1145, 1146, 1147, 1148, 1149, 1150, 1151, 1152, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197, 1198, 1199, 1200, 1201, 1202, 1203, 1204, 1205, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'CARTERA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 1163, 1164, 1165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'CIB158D'}), (b:DBTable {name: 'OPECORI'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1180, 1181, 1182, 1183, 1184, 1185, 1186, 1187, 1188, 1189, 1206, 1207, 1208, 1209, 1210, 1211, 1212, 1213, 1214, 1215, 1216, 1217, 1218, 1219, 1220, 1221, 1222, 1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247, 1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:DBTable {name: 'OPERCOB'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [292, 293, 294, 295, 296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Program {name: 'COB033D'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [409, 410, 411, 412, 413, 414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB130D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB130D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [476], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-VENCE-INPC', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-INPC-REAL', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '540-VALOR-PARAM-TO2', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '545-BUSCA-VENCIMIENTO', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [845], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-VENCIM-CAS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [924], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-VENCIM-BCO', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1000], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS-CAS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1051], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-VENCIMIENTOS-BCO', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '580-BUSCA-GARANTIAS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '585-BUSCA-GARANTIAS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '590-BUSCA-PLUS-MINUS', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1313], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '625-ACTUALIZA-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1339], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '626-ACTUALIZA-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1441], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '635-ACTUALIZA-PARAM', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '640-ACTUALIZA-CONGTIA', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '650-ACTUALIZA-CONTITU', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB130D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB130D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB130D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB130D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [1648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB130D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB130D.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '100-INICIO', programName: 'CIB132D'}), (b:Copybook {name: 'SICFP024'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '105-PROCESO-CURSORES', programName: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [306, 320, 363, 374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '740-CERRAR-ARCHIVOS', programName: 'CIB132D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [522], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '990-CIF-CTL', programName: 'CIB132D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [167], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICIP023'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB132D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB132D.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '500-BUSCA-PREVIA-CONCERTADA', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '501-BUSCA-CTA-PAGAR-COBRAR', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [673], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [799], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [796], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-VENCIMIENTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [901], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '722-REP-CONCEPTOS', programName: 'CIB138D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB138D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB138D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [1180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [274], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SICTAT84'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [259], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB138D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB138D.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '500-BUSCA-PREVIA-CONCERTADA', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [599], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '501-BUSCA-CTA-PAGAR-COBRAR', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [765], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [863], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [914], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [911], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-VENCIMIENTOS', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1046], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '580-TASA-PARAMETRO', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '810-SUMA-TOTALES-FIN', programName: 'CIB139D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1454], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB139D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1446], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB139D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [1486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [439], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [179], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SICTAT84'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB139D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB139D.cbl', evidenceLines: [236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [269], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-DEF-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-LEE-PRIMER-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [623], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '530-DEF-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '540-LEE-SEGUND-CURSOR-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-OBTIENE-FOLIO', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [705], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-ACTUALIZA-FOLIO', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-ACTUALIZA-PRIMER-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '580-ACTUALIZA-SEGUND-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [773], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '590-INSERTA-NUEVO-OPECORI', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [807], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '600-LEE-EOPERA-DEFOPER', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [831], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB140D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [893], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB140D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DFOLCTRL'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICNF043'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB140D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB140D.cbl', evidenceLines: [142], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB147D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [543], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB147D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [552], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-0100-FIN', programName: 'CIB147D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB147D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB147D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '010-INICIO', programName: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [209], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-DEFINE-CURSOR-DIVERS-CASA', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '515-DEFINE-CURSOR-DIVERS-BANCO', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-LEE-DIVERS-CASA', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '530-LEE-DIVERS-BANCO', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '720-REP-CONCEPTOS', programName: 'CIB149D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB149D'}), (b:Copybook {name: 'SICCE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [512], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB149D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-0100-FIN', programName: 'CIB149D'}), (b:Copybook {name: 'SICCM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [123], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICFH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICR1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB149D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB149D.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '505-TIIE-APLICA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-VALOR-PARAM-T84', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [852], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-LIQUID-CASA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-LIQUID-BCO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [938], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [988], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1081], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1236], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB157D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB157D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB157D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [1378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [402], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [229], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB157D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB157D.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '000-CONTROL', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '015-INICIO', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [484], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '510-VENCE-INPC', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [789], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '520-INPC-REAL', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [826], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '540-VALOR-PARAM-T84', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [855], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '545-BUSCA-LIQUIDACION', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '550-DEFINE-CURSOR-LIQUIDA-CAS', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [937], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '555-DEFINE-CURSOR-LIQUIDA-BCO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [985], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '560-LEE-LIQUIDACIONES-CAS', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1036], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '565-LEE-LIQUIDACIONES-BCO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1089], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '570-BUSCA-EOPERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '600-ACTUALIZA-CARTERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '610-INSERTA-EN-CARTERA', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '620-ACTUALIZA-OPECORI', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '630-INSERTA-EN-OPECORI', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '730-TOT-CONCEPTOS-REPO', programName: 'CIB158D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CE028'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'CIB158D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '999-9900-FIN', programName: 'CIB158D'}), (b:Copybook {name: 'SI2CM026'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [1412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCARTERA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCONGTIA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [420], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCONTITU'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCTAMARC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DDEFOPER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DOPECORI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SI2FH027'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SI2R1025'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [278], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIC000'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [242], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICAM029'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICPT104'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SICVS011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'CIB158D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/CIB158D.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '010-OBTIENE-FECHA-HABIL', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '020-CALCULO-POSIC-Y-EFTVO', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [182, 207, 236, 262, 287, 314, 338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '030-OBTEN-POSICION-ANTERIOR', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '040-ACTUALIZA-POSICION', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: '980-ABORTA', programName: 'COB033D'}), (b:Copybook {name: 'SIXAB002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'GOBACK', programName: 'COB033D'}), (b:Copybook {name: 'SIC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'DOPERCOB'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'DPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SIC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SICPAP70'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SICPAP73'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SIXAB001'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'COB033D'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/COB033D.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205519Z-cib130d-cib132d-cib138d-cib139d-cib140d-cib147d-cib149d-cib157d-cib158d-cob033d'};

