// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013
// ============================================================================

MERGE (n:Copybook {name: 'CNDCERRW'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [460], ingestion: 'auto', layer: 'dependency', name: 'CNDCERRW', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHAID'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [110], ingestion: 'auto', layer: 'dependency', name: 'DFHAID', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHBMSCA'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [109], ingestion: 'auto', layer: 'dependency', name: 'DFHBMSCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'QGECCAA'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [564], ingestion: 'auto', layer: 'dependency', name: 'QGECCAA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [141], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZACLICTA'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [126], ingestion: 'auto', layer: 'dependency', name: 'ZACLICTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZAGPOCTA'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [145], ingestion: 'auto', layer: 'dependency', name: 'ZAGPOCTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCLIENTE'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [119], ingestion: 'auto', layer: 'dependency', name: 'ZCLIENTE', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCONCEPT'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [149], ingestion: 'auto', layer: 'dependency', name: 'ZCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCTECOMP'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [70], ingestion: 'auto', layer: 'dependency', name: 'ZCTECOMP', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCUENTA'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [153], ingestion: 'auto', layer: 'dependency', name: 'ZCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZDETDOC'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [133], ingestion: 'auto', layer: 'dependency', name: 'ZDETDOC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMECA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [275], ingestion: 'auto', layer: 'dependency', name: 'ZMECA100', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMECA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [566], ingestion: 'auto', layer: 'dependency', name: 'ZMECA300', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMECOR10'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [62], ingestion: 'auto', layer: 'dependency', name: 'ZMECOR10', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMECTH1'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [155], ingestion: 'auto', layer: 'dependency', name: 'ZMECTH1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMMAGP'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [105], ingestion: 'auto', layer: 'dependency', name: 'ZMMAGP', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMMAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [341], ingestion: 'auto', layer: 'dependency', name: 'ZMMAUD1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMMAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [342], ingestion: 'auto', layer: 'dependency', name: 'ZMMAUD2', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMMAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [394], ingestion: 'auto', layer: 'dependency', name: 'ZMMAUD3', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMMAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [410], ingestion: 'auto', layer: 'dependency', name: 'ZMMAUD4', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMMAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [389], ingestion: 'auto', layer: 'dependency', name: 'ZMMAUD5', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMMAUD6'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [429], ingestion: 'auto', layer: 'dependency', name: 'ZMMAUD6', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMMAUD7'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [433], ingestion: 'auto', layer: 'dependency', name: 'ZMMAUD7', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMMDDO'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [93], ingestion: 'auto', layer: 'dependency', name: 'ZMMDDO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWBP602'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [205], ingestion: 'auto', layer: 'dependency', name: 'ZMWBP602', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWBV399'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [69], ingestion: 'auto', layer: 'dependency', name: 'ZMWBV399', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWCA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [161], ingestion: 'auto', layer: 'dependency', name: 'ZMWCA300', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWCOM11'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [107], ingestion: 'auto', layer: 'dependency', name: 'ZMWCOM11', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC002'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1065], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC003'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1071], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC004'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1047], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC005'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1077], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC006'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3166], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC006', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC008'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1053], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC008', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC009'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1059], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC010'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [127], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC010', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC012'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [129], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC012', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [112], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC013', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC014'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [131], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC014', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC015'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1083], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC015', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC016'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [1024], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC016', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC017'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [133], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC017', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSG532'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [115], ingestion: 'auto', layer: 'dependency', name: 'ZMWSG532', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR009'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [119], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR432'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [122], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR432', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR43A'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [486], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR43A', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSRARM'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [496], ingestion: 'auto', layer: 'dependency', name: 'ZMWSRARM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSRPRC'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [491], ingestion: 'auto', layer: 'dependency', name: 'ZMWSRPRC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSRY09'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [459], ingestion: 'auto', layer: 'dependency', name: 'ZMWSRY09', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSX090'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [466], ingestion: 'auto', layer: 'dependency', name: 'ZMWSX090', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSX648'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [148], ingestion: 'auto', layer: 'dependency', name: 'ZMWSX648', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSZ403'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [126], ingestion: 'auto', layer: 'dependency', name: 'ZMWSZ403', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSZ652'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [438], ingestion: 'auto', layer: 'dependency', name: 'ZMWSZ652', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPARAM'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [189], ingestion: 'auto', layer: 'dependency', name: 'ZPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPERFIL'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [398], ingestion: 'auto', layer: 'dependency', name: 'ZPERFIL', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPRECIO'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [417], ingestion: 'auto', layer: 'dependency', name: 'ZPRECIO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZUSUARIO'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [409], ingestion: 'auto', layer: 'dependency', name: 'ZUSUARIO', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDT625'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [157], ingestion: 'auto', layer: 'dependency', name: 'ZZMDT625', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDT721'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [186], ingestion: 'auto', layer: 'dependency', name: 'ZZMDT721', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDT746'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [405], ingestion: 'auto', layer: 'dependency', name: 'ZZMDT746', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDT747'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [401], ingestion: 'auto', layer: 'dependency', name: 'ZZMDT747', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTDIH'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [112], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTDIH', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTDIR'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [105], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTDIR', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTENT'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [56], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTENT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTFAH'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [91], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTFAH', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTFAT'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [77], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTFAT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTPAI'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [63], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTPAI', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTTEH'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [98], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTTEH', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTTEL'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [84], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTTEL', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'ACLICTA'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3404, 3405, 3406, 3407, 3408, 3409], ingestion: 'auto', layer: 'data-access', name: 'ACLICTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'AGPOCTA'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 912, 913, 914, 915, 916], ingestion: 'auto', layer: 'data-access', name: 'AGPOCTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CLIENTE'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2197, 2198, 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2210, 2211, 2212, 3538, 3539, 3540, 3541, 3542], ingestion: 'auto', layer: 'data-access', name: 'CLIENTE', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CONCEPT'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 804, 805, 806, 807, 808, 809, 810, 811], ingestion: 'auto', layer: 'data-access', name: 'CONCEPT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CTECOMP'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2249, 2250, 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259, 2260, 2261, 2281, 2282, 2283, 2284, 2285, 2286, 2287, 2288, 2289, 2290, 2291, 2292, 2293, 2294, 2295, 2296, 2297, 2298], ingestion: 'auto', layer: 'data-access', name: 'CTECOMP', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CUENTA'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861], ingestion: 'auto', layer: 'data-access', name: 'CUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'DETDOC'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3457, 3458, 3459, 3460, 3461], ingestion: 'auto', layer: 'data-access', name: 'DETDOC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2883, 2884, 2885, 2886, 2887, 2888, 2889], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PERFIL'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181], ingestion: 'auto', layer: 'data-access', name: 'PERFIL', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'USUARIO'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2622, 2623, 2624, 2625, 2626, 2627, 2628], ingestion: 'auto', layer: 'data-access', name: 'USUARIO', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDT625'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548], ingestion: 'auto', layer: 'data-access', name: 'ZMDT625', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDT721'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 839, 840, 841, 842, 843, 844, 845, 846, 847, 852, 853, 854, 856, 857], ingestion: 'auto', layer: 'data-access', name: 'ZMDT721', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDT746'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139], ingestion: 'auto', layer: 'data-access', name: 'ZMDT746', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDT747'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1432, 1433, 1434, 1435, 1436, 1437, 1438, 1439, 1440, 1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450], ingestion: 'auto', layer: 'data-access', name: 'ZMDT747', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTDIH'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2788, 2789, 2790, 2791, 2792, 2793, 2794, 2795, 2796, 2797, 2798, 2799, 2800, 2801, 2802, 2803], ingestion: 'auto', layer: 'data-access', name: 'ZMDTDIH', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTDIR'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2670, 2671, 2672, 2673, 2674, 2675, 2676, 2677, 2678, 2679, 2701, 2702, 2703, 2704, 2705, 2706, 2707, 2708, 2709, 2710, 2711, 2712, 2713, 2714, 2715, 2716, 2717, 2751, 2752, 2753, 2754, 2755, 2756, 2757, 2758, 2759, 2760, 2761, 2762, 2763, 2764], ingestion: 'auto', layer: 'data-access', name: 'ZMDTDIR', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTENT'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3122, 3123, 3124, 3125, 3126, 3127, 3128], ingestion: 'auto', layer: 'data-access', name: 'ZMDTENT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTFAH'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2467, 2468, 2469, 2470, 2471, 2472, 2473, 2474, 2475, 2476, 2477, 2478, 2479, 2480, 2481, 2482, 2483, 2484, 2485, 2486], ingestion: 'auto', layer: 'data-access', name: 'ZMDTFAH', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTFAT'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2557, 2558, 2559, 2560, 2561, 2562, 2563, 2564, 2565, 2566, 2567, 2568, 2569, 2570, 2571, 2572, 2573, 2574, 2575, 2576, 2577, 2578, 2579, 2580, 2581, 2582, 2583, 2584, 2585, 2586, 2587, 2606, 2607, 2608, 2609, 2610, 2611, 2612, 2613, 2614, 2615, 2616, 2617, 2618, 2619, 2620, 2621, 2622, 2623, 2624, 2625, 2626, 2627, 2628, 2629, 2630, 2631, 2632, 2633, 2634, 2635, 2636, 2637, 2638, 2639, 2640], ingestion: 'auto', layer: 'data-access', name: 'ZMDTFAT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTPAI'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1197, 1198, 1199, 1200, 1201, 1202, 3094, 3095, 3096, 3097, 3098, 3099, 3100], ingestion: 'auto', layer: 'data-access', name: 'ZMDTPAI', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTTEH'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3028, 3029, 3030, 3031, 3032, 3033, 3034, 3035, 3036, 3037, 3038, 3039], ingestion: 'auto', layer: 'data-access', name: 'ZMDTTEH', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTTEL'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2875, 2876, 2877, 2878, 2879, 2880, 2881, 2882, 2883, 2884, 2885, 2886, 2887, 2909, 2910, 2911, 2912, 2913, 2914, 2915, 2916, 2917, 2918, 2919, 2920, 2921, 2922, 2923, 2924, 2925, 2958, 2959, 2960, 2961, 2962, 2963, 2964, 2965, 2966, 2967, 2968, 2969, 2970, 2992, 2993, 2994, 2995, 2996, 2997, 2998, 2999, 3000, 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008], ingestion: 'auto', layer: 'data-access', name: 'ZMDTTEL', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', viewTag: 'data-access'};

MERGE (n:Paragraph {name: '100000-INICIO', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [289], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100000-INICIO', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Inicializa el flujo operativo de ZM2CA100, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100100-BORRAR-QUEUE', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [324], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100100-BORRAR-QUEUE', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100110-LIMPIA-ENTRADA', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [345], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100110-LIMPIA-ENTRADA', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200000-PROCESO', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [366], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200000-PROCESO', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200101-OBTIENE-PAIS', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [581], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200101-OBTIENE-PAIS', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200210-RUTINA-CVE-CTE', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [633], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200210-RUTINA-CVE-CTE', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210000-OBTIENE-CUENTA', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [395], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210000-OBTIENE-CUENTA', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-OBTIENE-REPLEG', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [441], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-OBTIENE-REPLEG', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '240000-VALIDA-INFORMA1', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [476], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '240000-VALIDA-INFORMA1', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '260000-ALTA-REPRELEGAL', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [712], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '260000-ALTA-REPRELEGAL', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA100, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300000-FINAL', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [915], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300000-FINAL', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Cierra la ejecucion de ZM2CA100, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300200-ROLLBACK', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [924], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300200-ROLLBACK', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Gestiona contingencias en ZM2CA100, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3228-INSERT-ZMDTFAT', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [808], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3228-INSERT-ZMDTFAT', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA100, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3229-INSERT-ZMDTDIR', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [882], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3229-INSERT-ZMDTDIR', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA100, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3230-INSERT-ZMDTTEL', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [853], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3230-INSERT-ZMDTTEL', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA100, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3320-VERIFICA-NO-EXISTE-REP', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [625], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3320-VERIFICA-NO-EXISTE-REP', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3325-LEE-ZMDTFAT', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [666], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3325-LEE-ZMDTFAT', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA100 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-ERROR-CICS', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [935], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-ERROR-CICS', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Gestiona contingencias en ZM2CA100, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-ERROR-DB2', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [952], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-ERROR-DB2', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Gestiona contingencias en ZM2CA100, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [24], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [271], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SPECIAL-NAMES', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [25], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SPECIAL-NAMES', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'})
SET n += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [30], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CA100', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', summary: 'Orquesta una fase funcional de ZM2CA100, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0004-CARGA-QUEUE1', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [882], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0004-CARGA-QUEUE1', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100000-INICIO', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [580], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100000-INICIO', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Inicializa el flujo operativo de ZM2CA300, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100100-BORRAR-QUEUE', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [615], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100100-BORRAR-QUEUE', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100110-LIMPIA-ENTRADA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [636], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100110-LIMPIA-ENTRADA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100120-VALIDA-ENTRADA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [701], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100120-VALIDA-ENTRADA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1100-VALIDA-ESTADO2', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1649], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1100-VALIDA-ESTADO2', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1140-VALIDA-FECHA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3148], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1140-VALIDA-FECHA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1144-VALIDA-DATOS', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1447], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1144-VALIDA-DATOS', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1200-ACTUALIZA-BD', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2108], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1200-ACTUALIZA-BD', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-BUSCA-PARAMETRO-D', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3188], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-BUSCA-PARAMETRO-D', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-BUSCA-PARAMETRO-P', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3235], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-BUSCA-PARAMETRO-P', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-INSERT-PAR-T91', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3276], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-INSERT-PAR-T91', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-SEPARA-LETRAS', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3311], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-SEPARA-LETRAS', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200000-PROCESO', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [729], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200000-PROCESO', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200700-WRITEQ', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3596], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200700-WRITEQ', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '202200-OPEN-COPROPIETARIOS', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [814], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '202200-OPEN-COPROPIETARIOS', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '202300-FETCH-COPROPIETARIOS', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [839], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '202300-FETCH-COPROPIETARIOS', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '202400-CLOSE-COPROPIETARIOS', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1380], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '202400-CLOSE-COPROPIETARIOS', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210000-OBTIENE-CUENTA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [764], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210000-OBTIENE-CUENTA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2164-LEE-ZMDTFAT', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1145], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2164-LEE-ZMDTFAT', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2164-LEE-ZMDTFAT-DOC', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2414], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2164-LEE-ZMDTFAT-DOC', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2165-LEE-ZMDTDIR', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1221], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2165-LEE-ZMDTDIR', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2166-LEE-ZMDTTEL', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1253], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2166-LEE-ZMDTTEL', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-OBTIENE-COPROPI', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [803], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-OBTIENE-COPROPI', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230000-VALIDA-BAJA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3332], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230000-VALIDA-BAJA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '240000-VALIDA-SALIDA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3558], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '240000-VALIDA-SALIDA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3000-BUSCA-PARAMETRO-P', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1412], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3000-BUSCA-PARAMETRO-P', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300000-FINAL', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3624], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300000-FINAL', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Cierra la ejecucion de ZM2CA300, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300200-ROLLBACK', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3633], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300200-ROLLBACK', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Gestiona contingencias en ZM2CA300, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '322910-LINK-ZM9CTH10', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3508], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '322910-LINK-ZM9CTH10', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4115-GRABA-ZMDTFAT', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2502], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4115-GRABA-ZMDTFAT', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4115-INSER-ZMDTFAT', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2604], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4115-INSER-ZMDTFAT', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4116-GRABA-ZMDTDIH', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2784], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4116-GRABA-ZMDTDIH', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4116-GRABA-ZMDTDIR1', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2656], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4116-GRABA-ZMDTDIR1', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4116-GRABA-ZMDTDIR2', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2733], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4116-GRABA-ZMDTDIR2', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4116-INSER-ZMDTDIR1', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2699], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4116-INSER-ZMDTDIR1', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4116-LEE-ZMDTDIH', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2819], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4116-LEE-ZMDTDIH', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4117-GRABA-ZMDTTEH', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3024], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4117-GRABA-ZMDTTEH', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4117-GRABA-ZMDTTEL1', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2858], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4117-GRABA-ZMDTTEL1', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4117-GRABA-ZMDTTEL2', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2941], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4117-GRABA-ZMDTTEL2', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4117-INSER-ZMDTTEL1', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2907], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4117-INSER-ZMDTTEL1', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4117-INSER-ZMDTTEL2', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2990], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4117-INSER-ZMDTTEL2', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4117-LEE-ZMDTTEH', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3055], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4117-LEE-ZMDTTEH', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4118-ESTATUS', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2377], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4118-ESTATUS', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4118-NIVIND', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2314], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4118-NIVIND', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4118-STACRS', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2444], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4118-STACRS', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4119-INS-ZMDTFAH', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2459], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4119-INS-ZMDTFAH', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5000-LEE-ZMDTPAI', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1195], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5000-LEE-ZMDTPAI', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5100-LEE-ZMDTPAI', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3092], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5100-LEE-ZMDTPAI', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5200-LEE-ZMDTENT', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3120], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5200-LEE-ZMDTENT', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7500-CARGA-MAPA2', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1991], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7500-CARGA-MAPA2', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7500-PROTEGE-MAPA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1554], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7500-PROTEGE-MAPA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7500-PROTEGE-MAPA2', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2062], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7500-PROTEGE-MAPA2', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8220-LEE-CLIENTE', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1054], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8220-LEE-CLIENTE', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8330-LEE-CTECOMP', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1103], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8330-LEE-CTECOMP', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8400-ACTUALIZA-ACLICTA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3399], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8400-ACTUALIZA-ACLICTA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8400-BUSCA-DETDOC', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3425], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8400-BUSCA-DETDOC', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CA300 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8400-DELET-DETDOC', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3455], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8400-DELET-DETDOC', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8400-SELECCIONA-ACLICTA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3368], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8400-SELECCIONA-ACLICTA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8410-ACTUALIZA-CUENTA', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3477], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8410-ACTUALIZA-CUENTA', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8420-ACTUALIZA-CLIENTE', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3534], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8420-ACTUALIZA-CLIENTE', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8520-UPDATE-CLIENTE', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2177], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8520-UPDATE-CLIENTE', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8530-INSERT-CTECOMP', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2279], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8530-INSERT-CTECOMP', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CA300, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8530-UPDATE-CTECOMP', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2232], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8530-UPDATE-CTECOMP', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8601-ARMA-UNA-PAG-ESTADO1', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1285], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8601-ARMA-UNA-PAG-ESTADO1', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-ERROR-CICS', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3644], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-ERROR-CICS', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Gestiona contingencias en ZM2CA300, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-ERROR-DB2', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3660], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-ERROR-DB2', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Gestiona contingencias en ZM2CA300, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [24], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [562], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'SPECIAL-NAMES', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [25], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'SPECIAL-NAMES', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'})
SET n += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [30], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CA300', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', summary: 'Orquesta una fase funcional de ZM2CA300, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [545], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000000-CONTROL', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [560], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100000-INICIO', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Inicializa el flujo operativo de ZM2CAUD1, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [617], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200000-PROCESO', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200100-RECUP-DATOS', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1239], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200100-RECUP-DATOS', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210000-GENERA-DATOS', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [822], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210000-GENERA-DATOS', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-CC', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [908], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-CC', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-F', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [942], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-F', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-T', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [874], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-T', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-UG', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [925], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-UG', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-US', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [891], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-US', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-CC', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1039], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-CC', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-F', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1119], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-F', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-T', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [959], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-T', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-UG', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1079], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-UG', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-US', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [999], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-US', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-CC', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1191], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-CC', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Cierra la ejecucion de ZM2CAUD1, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-F', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1223], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-F', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Cierra la ejecucion de ZM2CAUD1, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-T', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1159], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-T', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Cierra la ejecucion de ZM2CAUD1, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-UG', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1207], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-UG', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Cierra la ejecucion de ZM2CAUD1, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-US', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1175], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-US', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Cierra la ejecucion de ZM2CAUD1, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-CONTINUACION', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [630], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-CONTINUACION', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1549], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1575], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2240-LIMPIA-MAPA', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1477], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2240-LIMPIA-MAPA', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250000-EVALUA-SELECCION', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [680], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250000-EVALUA-SELECCION', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250000-TRATAR-PF3', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1581], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250000-TRATAR-PF3', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250000-TRATAR-PF3-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1597], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250000-TRATAR-PF3-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1604], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300000-FINAL', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Cierra la ejecucion de ZM2CAUD1, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1682], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1706], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1753], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '605000-NOMBRE-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '605000-NOMBRE-EMPRESA-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1791], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '605000-NOMBRE-EMPRESA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610000-NOMBRE-USUARIO', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1711], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610000-NOMBRE-USUARIO', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610000-NOMBRE-USUARIO-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1747], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610000-NOMBRE-USUARIO-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1255], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7100-RECIBE-MAPA1', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7200-RECIBE-MAPA2', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1275], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7200-RECIBE-MAPA2', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1507], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-TS2', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD1, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-TS2-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1524], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-TS2-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD1, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1294], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8210-ARMA-PAGINA', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1530], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8320-BORRA-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8320-BORRA-QUEUE-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1542], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8320-BORRA-QUEUE-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1797], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900000-MENSAJE-ERROR', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Gestiona contingencias en ZM2CAUD1, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900000-MENSAJE-ERROR-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1849], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900000-MENSAJE-ERROR-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Gestiona contingencias en ZM2CAUD1, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1854], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '910000-LEE-ITEM', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD1 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '910000-LEE-ITEM-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1875], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '910000-LEE-ITEM-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD1 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2107], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '921000-BUSCA-PARAM', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD1 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '921000-BUSCA-PARAM-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2138], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '921000-BUSCA-PARAM-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD1 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1407], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9250-PAGINACION-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2143], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '950000-VALIDA-CICS', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '950000-VALIDA-CICS-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2174], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '950000-VALIDA-CICS-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2182], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '960000-VALIDA-FECHA', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2216], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '981000-ALINEA-STRING-IZQ', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '981000-ALINEA-STRING-IZQ-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2237], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '981000-ALINEA-STRING-IZQ-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2243], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '988888-ABORTA', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Gestiona contingencias en ZM2CAUD1, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '988888-ABORTA-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2261], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '988888-ABORTA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Gestiona contingencias en ZM2CAUD1, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9900-BORRA-QUEUES', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1963], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9900-BORRA-QUEUES', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1880], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9900-TRANSFIERE', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2266], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-RETURN', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2270], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-RETURN-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [44], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [28], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-COMPILED', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [534], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1788], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WC-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WM-CODIGO', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1952], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WM-CODIGO', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'})
SET n += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [57], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CAUD1', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD1, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [647], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000000-CONTROL', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [667], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100000-INICIO', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Inicializa el flujo operativo de ZM2CAUD2, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [751], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200000-PROCESO', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200100-RECUP-DATOS', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1836], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200100-RECUP-DATOS', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210000-GENERA-DATOS', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1411], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210000-GENERA-DATOS', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-CC', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1523], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-CC', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-F', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1553], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-F', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-T', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1493], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-T', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-UG', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1538], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-UG', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-IND-US', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1508], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-IND-US', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-CC', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1648], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-CC', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-F', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1728], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-F', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-T', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1568], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-T', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-UG', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1688], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-UG', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-IND-US', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1608], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-IND-US', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-CC', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1794], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-CC', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Cierra la ejecucion de ZM2CAUD2, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-F', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1822], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-F', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Cierra la ejecucion de ZM2CAUD2, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-T', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1766], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-T', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Cierra la ejecucion de ZM2CAUD2, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-UG', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1808], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-UG', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Cierra la ejecucion de ZM2CAUD2, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-US', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1780], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-US', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Cierra la ejecucion de ZM2CAUD2, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-CONTINUACION', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [781], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-CONTINUACION', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2099], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF4', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [879], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF4', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2240-LIMPIA-MAPA', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2044], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2240-LIMPIA-MAPA', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230000-ESTADO-CONFIRMACION', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [860], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230000-ESTADO-CONFIRMACION', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250000-EVALUA-SELECCION', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1275], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250000-EVALUA-SELECCION', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250000-TRATAR-PF3', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2129], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250000-TRATAR-PF3', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2256], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300000-FINAL', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Cierra la ejecucion de ZM2CAUD2, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2305], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400000-VALIDA-SELECCION', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1002], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400000-VALIDA-SELECCION', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '420000-LLAMA-ZM2CAUD3', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [987], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '420000-LLAMA-ZM2CAUD3', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2369], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '605000-NOMBRE-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610000-NOMBRE-USUARIO', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2330], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610000-NOMBRE-USUARIO', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1854], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7100-RECIBE-MAPA1', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2062], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-TS2', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD2, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1872], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8210-ARMA-PAGINA', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2082], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8320-BORRA-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2409], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900000-MENSAJE-ERROR', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Gestiona contingencias en ZM2CAUD2, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2463], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '910000-LEE-ITEM', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD2 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2605], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '921000-BUSCA-PARAM', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD2 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2014], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9250-PAGINACION-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2637], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '950000-VALIDA-CICS', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2671], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '960000-VALIDA-FECHA', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980000-TRATAR-ABEND', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2752], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980000-TRATAR-ABEND', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2765], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '981000-ALINEA-STRING-IZQ', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2788], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '988888-ABORTA', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Gestiona contingencias en ZM2CAUD2, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9900-BORRA-QUEUES', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2232], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9900-BORRA-QUEUES', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2147], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9900-TRANSFIERE', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2808], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-RETURN', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [54], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [38], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-COMPILED', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [636], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2404], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WC-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WM-CODIGO', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2221], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WM-CODIGO', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'})
SET n += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [67], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CAUD2', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD2, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [545], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000000-CONTROL', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [561], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100000-INICIO', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Inicializa el flujo operativo de ZM2CAUD3, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100001-LEE-ZM2CAUD2', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [634], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100001-LEE-ZM2CAUD2', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD3 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100002-OPEN-ZMDT747', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [657], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100002-OPEN-ZMDT747', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100003-FETCH-ZMDT747', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [675], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100003-FETCH-ZMDT747', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100004-CLOSE-ZMDT747', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [706], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100004-CLOSE-ZMDT747', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [721], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200000-PROCESO', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200100-RECUP-DATOS', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1160], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200100-RECUP-DATOS', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200101-RECUP-DESCR', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1172], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200101-RECUP-DESCR', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-CONTINUACION', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [750], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-CONTINUACION', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1364], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF4', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1086], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF4', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220001-UPDATE746', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1125], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220001-UPDATE746', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2240-LIMPIA-MAPA', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1310], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2240-LIMPIA-MAPA', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230000-ESTADO-CONFIRMACION', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1060], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230000-ESTADO-CONFIRMACION', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250000-TRATAR-PF3', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1383], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250000-TRATAR-PF3', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250002-LEE-QUE', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1395], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250002-LEE-QUE', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD3 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1417], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300000-FINAL', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Cierra la ejecucion de ZM2CAUD3, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1481], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400000-VALIDA-SELECCION', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [781], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400000-VALIDA-SELECCION', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '420000-LLAMA-ZM2CAUD2', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1041], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '420000-LLAMA-ZM2CAUD2', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1510], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '605000-NOMBRE-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1203], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7100-RECIBE-MAPA1', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1323], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-TS2', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD3, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1221], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8210-ARMA-PAGINA', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1347], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8320-BORRA-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1552], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900000-MENSAJE-ERROR', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Gestiona contingencias en ZM2CAUD3, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1609], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '910000-LEE-ITEM', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD3 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '920000-TRANSFIERE', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1635], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '920000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1730], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '921000-BUSCA-PARAM', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD3 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1277], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9250-PAGINACION-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1766], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '950000-VALIDA-CICS', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '970000-EXIBE-TEXTO', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1805], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '970000-EXIBE-TEXTO', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980000-TRATAR-ABEND', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1823], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980000-TRATAR-ABEND', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1843], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '981000-ALINEA-STRING-IZQ', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1870], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '988888-ABORTA', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Gestiona contingencias en ZM2CAUD3, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1892], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-RETURN', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [55], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [39], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-COMPILED', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [534], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1544], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WC-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'})
SET n += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [68], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CAUD3', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD3, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [541], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000000-CONTROL', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [578], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100000-INICIO', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Inicializa el flujo operativo de ZM2CAUD4, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [655], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200000-PROCESO', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200100-RECUP-DATOS', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1477], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200100-RECUP-DATOS', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '210000-GENERA-DATOS', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1324], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '210000-GENERA-DATOS', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '211000-ABRE-CURSOR-747ALL', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1342], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '211000-ABRE-CURSOR-747ALL', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '212000-PROC-CURSOR-747ALL', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1359], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '212000-PROC-CURSOR-747ALL', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-747ALL', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1444], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-747ALL', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Cierra la ejecucion de ZM2CAUD4, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-CONTI-ALTA', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [734], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-CONTI-ALTA', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD4, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-CONTI-ALTA-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [759], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-CONTI-ALTA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD4, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-VALIDA-2-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1305], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-VALIDA-2-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-VALIDACION-1', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [680], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-VALIDACION-1', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-VALIDACION-2', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1276], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-VALIDACION-2', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1739], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1766], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-VALIDA-DATOS', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [955], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-VALIDA-DATOS', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-VALIDA-DATOS-ABC', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [858], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-VALIDA-DATOS-ABC', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2240-LIMPIA-MAPA', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1669], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2240-LIMPIA-MAPA', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2240-LIMPIA-SEL', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1310], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2240-LIMPIA-SEL', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230000-ESTADO-CONTI-BAJA', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [815], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230000-ESTADO-CONTI-BAJA', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230000-ESTADO-CONTI-BAJA-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [851], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230000-ESTADO-CONTI-BAJA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230000-ESTADO-CONTI-CAMB', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [766], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230000-ESTADO-CONTI-CAMB', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '230000-ESTADO-CONTI-CAMB-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [808], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '230000-ESTADO-CONTI-CAMB-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250000-TRATAR-PF3', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1772], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250000-TRATAR-PF3', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '250000-TRATAR-PF3-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1787], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '250000-TRATAR-PF3-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1901], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300000-FINAL', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Cierra la ejecucion de ZM2CAUD4, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1957], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1981], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400000-VALIDA-SELECCION', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [993], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400000-VALIDA-SELECCION', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2030], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '605000-NOMBRE-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '605000-NOMBRE-EMPRESA-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2068], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '605000-NOMBRE-EMPRESA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610000-NOMBRE-USUARIO', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1986], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610000-NOMBRE-USUARIO', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610000-NOMBRE-USUARIO-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2024], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610000-NOMBRE-USUARIO-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1493], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7100-RECIBE-MAPA1', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1696], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-TS2', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD4, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-TS2-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1714], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-TS2-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD4, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800000-DELETE', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2076], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800000-DELETE', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800000-DELETE-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2122], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800000-DELETE-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1513], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8210-ARMA-PAGINA', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1720], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8320-BORRA-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8320-BORRA-QUEUE-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1732], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8320-BORRA-QUEUE-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2128], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900000-MENSAJE-ERROR', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Gestiona contingencias en ZM2CAUD4, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900000-MENSAJE-ERROR-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2180], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900000-MENSAJE-ERROR-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Gestiona contingencias en ZM2CAUD4, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2185], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '910000-LEE-ITEM', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD4 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '910000-LEE-ITEM-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2206], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '910000-LEE-ITEM-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD4 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2336], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '921000-BUSCA-PARAM', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD4 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '921000-BUSCA-PARAM-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2367], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '921000-BUSCA-PARAM-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD4 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1635], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9250-PAGINACION-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2372], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '950000-VALIDA-CICS', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '950000-VALIDA-CICS-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2403], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '950000-VALIDA-CICS-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2411], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '960000-VALIDA-FECHA', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980000-TRATAR-ABEND', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2459], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980000-TRATAR-ABEND', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980000-TRATAR-ABEND-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2474], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980000-TRATAR-ABEND-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2479], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '981000-ALINEA-STRING-IZQ', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '981000-ALINEA-STRING-IZQ-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2500], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '981000-ALINEA-STRING-IZQ-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2506], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '988888-ABORTA', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Gestiona contingencias en ZM2CAUD4, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '988888-ABORTA-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2524], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '988888-ABORTA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Gestiona contingencias en ZM2CAUD4, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9900-BORRA-QUEUES', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1877], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9900-BORRA-QUEUES', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1792], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9900-TRANSFIERE', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2529], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-RETURN', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2533], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-RETURN-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [53], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [37], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-COMPILED', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [530], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2065], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WC-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WM-CODIGO', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1866], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WM-CODIGO', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'})
SET n += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [66], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CAUD4', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD4, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [579], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '000000-CONTROL', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [596], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100000-INICIO', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Inicializa el flujo operativo de ZM2CAUD5, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100001-LEE-ZM2CAUD6', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [644], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100001-LEE-ZM2CAUD6', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD5 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '20000-CONFIRMACION-DATOS-1', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [747], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '20000-CONFIRMACION-DATOS-1', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '20000-CONFIRMACION-DATOS-2', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1568], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '20000-CONFIRMACION-DATOS-2', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '20000-CONFIRMACION-DATOS-A', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [728], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '20000-CONFIRMACION-DATOS-A', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '20000-CONFIRMACION-DATOS-C', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1547], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '20000-CONFIRMACION-DATOS-C', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '20000-CONTINUACION-DATOS-A', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [710], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '20000-CONTINUACION-DATOS-A', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '20000-CONTINUACION-DATOS-C', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1516], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '20000-CONTINUACION-DATOS-C', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '20000-F12-ENTER-CANCELO', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [770], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '20000-F12-ENTER-CANCELO', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '20000-REGRESO-ZM96', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1590], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '20000-REGRESO-ZM96', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [658], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '200000-PROCESO', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '213000-CIERRA-CURSOR-IND-F', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2015], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '213000-CIERRA-CURSOR-IND-F', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Cierra la ejecucion de ZM2CAUD5, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-VALIDACION-A', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [693], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-VALIDACION-A', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-VALIDACION-A-C', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [680], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-VALIDACION-A-C', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-ESTADO-VALIDACION-C', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1482], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-ESTADO-VALIDACION-C', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-INSERTA-PERFIL', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1418], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-INSERTA-PERFIL', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD5, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2-A', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2363], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2-A', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2-A-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2376], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2-A-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2-C', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2382], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2-C', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-TRATAR-PF2-C-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2395], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-TRATAR-PF2-C-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-UPDATE-DATOS', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [991], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-UPDATE-DATOS', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '220000-VALIDA-DATOS-IN', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1354], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '220000-VALIDA-DATOS-IN', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2240-LIMPIA-MAPA-A', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2297], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2240-LIMPIA-MAPA-A', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2416], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '300000-FINAL', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Cierra la ejecucion de ZM2CAUD5, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA-A', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2554], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA-A', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA-A-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2578], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA-A-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA-C', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2585], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA-C', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '310000-REC-FECHA-HORA-C-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2609], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '310000-REC-FECHA-HORA-C-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400000-VALIDA-SELECCION-A', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1049], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400000-VALIDA-SELECCION-A', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '400000-VALIDA-SELECCION-C', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1250], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '400000-VALIDA-SELECCION-C', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2658], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '605000-NOMBRE-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '605000-NOMBRE-EMPRESA-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2696], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '605000-NOMBRE-EMPRESA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610000-NOMBRE-USUARIO', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2614], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610000-NOMBRE-USUARIO', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '610000-NOMBRE-USUARIO-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2652], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '610000-NOMBRE-USUARIO-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2049], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7100-RECIBE-MAPA1', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2322], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-TS2', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD5, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-GRABA-REG-TS2-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2340], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-GRABA-REG-TS2-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CAUD5, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2346], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8320-BORRA-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8320-BORRA-QUEUE-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2356], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8320-BORRA-QUEUE-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2702], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900000-MENSAJE-ERROR', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Gestiona contingencias en ZM2CAUD5, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '900000-MENSAJE-ERROR-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2754], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '900000-MENSAJE-ERROR-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Gestiona contingencias en ZM2CAUD5, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2759], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '910000-LEE-ITEM', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD5 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '910000-LEE-ITEM-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2780], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '910000-LEE-ITEM-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD5 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '920000-TRANSFIERE', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2785], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '920000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '920000-TRANSFIERE-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2874], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '920000-TRANSFIERE-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2879], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '921000-BUSCA-PARAM', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD5 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '921000-BUSCA-PARAM-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2910], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '921000-BUSCA-PARAM-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CAUD5 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2219], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9250-PAGINACION-QUEUE', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2915], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '950000-VALIDA-CICS', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '950000-VALIDA-CICS-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2946], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '950000-VALIDA-CICS-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2954], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '960000-VALIDA-FECHA', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '970000-EXIBE-TEXTO-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3057], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '970000-EXIBE-TEXTO-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980000-TRATAR-ABEND', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3064], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980000-TRATAR-ABEND', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '980000-TRATAR-ABEND-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3081], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '980000-TRATAR-ABEND-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3086], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '981000-ALINEA-STRING-IZQ', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '981000-ALINEA-STRING-IZQ-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3107], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '981000-ALINEA-STRING-IZQ-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3113], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '988888-ABORTA', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Gestiona contingencias en ZM2CAUD5, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '988888-ABORTA-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3131], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '988888-ABORTA-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Gestiona contingencias en ZM2CAUD5, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3136], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-RETURN', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3140], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999999-RETURN-EXIT', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [64], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [48], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-COMPILED', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [568], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2693], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WC-EMPRESA', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'})
SET n += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [77], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CAUD5', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', summary: 'Orquesta una fase funcional de ZM2CAUD5, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '010-INICIO', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [81], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '010-INICIO', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Inicializa el flujo operativo de ZM2CD010, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-PROCESO', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [85], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-PROCESO', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Orquesta una fase funcional de ZM2CD010, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '030-TERMINA', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [120], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '030-TERMINA', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Cierra la ejecucion de ZM2CD010, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '100-LANZA-ZDC3', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [90], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '100-LANZA-ZDC3', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Orquesta una fase funcional de ZM2CD010, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '101-LANZA-ZAA2', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [105], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '101-LANZA-ZAA2', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Orquesta una fase funcional de ZM2CD010, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9400-RETURN', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [127], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9400-RETURN', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Orquesta una fase funcional de ZM2CD010, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [3], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Orquesta una fase funcional de ZM2CD010, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [5], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Orquesta una fase funcional de ZM2CD010, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [72], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Orquesta una fase funcional de ZM2CD010, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD010'})
SET n += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [30], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CD010', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', summary: 'Orquesta una fase funcional de ZM2CD010, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-INICIA', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [218], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-INICIA', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1100-LEE-REG-QUEUE-OPCION', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [243], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1100-LEE-REG-QUEUE-OPCION', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CD011 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1200-BORRA-QUEUE-OPCION', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [916], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1200-BORRA-QUEUE-OPCION', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1200-BORRA-QUEUE-OPCION-11', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [266], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1200-BORRA-QUEUE-OPCION-11', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1200-BORRA-QUEUE-REGRESA', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [935], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1200-BORRA-QUEUE-REGRESA', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-PROCESO', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [285], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-PROCESO', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2050-MUEVE-MENSAJES', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [297], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2050-MUEVE-MENSAJES', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2100-ESTADO-INICIO', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [328], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2100-ESTADO-INICIO', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Inicializa el flujo operativo de ZM2CD011, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2115-OBTENER-FECHA-HORA', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [338], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2115-OBTENER-FECHA-HORA', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CD011 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2120-ENVIA-MAPA', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [365], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2120-ENVIA-MAPA', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2130-LIMPIA-REGISTROS', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [547], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2130-LIMPIA-REGISTROS', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2200-ESTADO-CONTINUACION', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [387], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2200-ESTADO-CONTINUACION', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2210-RECIBE-MAPA', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [446], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2210-RECIBE-MAPA', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2220-VALIDA-REG-LLAVE', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [461], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2220-VALIDA-REG-LLAVE', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2230-MUEVE-REG-LEIDO', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [582], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2230-MUEVE-REG-LEIDO', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2300-ENVIA-MAPA-MENU', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [954], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2300-ENVIA-MAPA-MENU', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2300-ENVIA-MAPA-RETORNO-ZD12', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [965], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2300-ENVIA-MAPA-RETORNO-ZD12', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2300-VALIDA-REGISTRO', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [606], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2300-VALIDA-REGISTRO', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2300-VALIDA-REGISTRO-MODIFICAR', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [624], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2300-VALIDA-REGISTRO-MODIFICAR', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2350-BLOQ-REG-MODIFICAR', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [696], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2350-BLOQ-REG-MODIFICAR', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3000-FIN', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [904], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3000-FIN', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Cierra la ejecucion de ZM2CD011, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5000-CONSULTA-ZMXT721', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [711], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5000-CONSULTA-ZMXT721', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CD011 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5100-INSERT-ZMXT721', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [774], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5100-INSERT-ZMXT721', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CD011, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5200-UPDATE-ZMXT721', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [824], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5200-UPDATE-ZMXT721', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9000-SALIDA', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [891], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9000-SALIDA', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9250-LEE-REG-QUEUE', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [976], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9250-LEE-REG-QUEUE', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CD011 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9300-ESCRIBE-QUEUE-REGRESO', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [1000], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9300-ESCRIBE-QUEUE-REGRESO', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'GOBACK', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [210], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'GOBACK', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [194], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'})
SET n += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [38], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CD011', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', summary: 'Orquesta una fase funcional de ZM2CD011, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-BORRA-EN-TABLA-AGPOCTA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [907], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-BORRA-EN-TABLA-AGPOCTA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INSERTA-EN-TABLA-AGPOCTA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [470], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INSERTA-EN-TABLA-AGPOCTA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CD013, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0001-INSERTA-EN-TABLA-ZMDT625', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [509], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0001-INSERTA-EN-TABLA-ZMDT625', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CD013, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-BORRA-PANTALLA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [372], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-BORRA-PANTALLA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '020-RESUELVE-CONSUL', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [419], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '020-RESUELVE-CONSUL', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CD013 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-INICIA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [186], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-INICIA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-PROCESO', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [212], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-PROCESO', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2100-ESTADO-INICIO', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [227], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2100-ESTADO-INICIO', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Inicializa el flujo operativo de ZM2CD013, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2120-ENVIA-MAPA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [240], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2120-ENVIA-MAPA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2200-ESTADO-CONTINUACION', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [261], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2200-ESTADO-CONTINUACION', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2210-RECIBE-MAPA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [280], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2210-RECIBE-MAPA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2211-RESUELVE-ESTADO-CERO', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [337], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2211-RESUELVE-ESTADO-CERO', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2212-RESUELVE-ESTADO-UNO', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [437], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2212-RESUELVE-ESTADO-UNO', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2213-RESUELVE-ESTADO-TRES', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [566], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2213-RESUELVE-ESTADO-TRES', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2214-ENVIA-PANTALLA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [312], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2214-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2216-OPCION-SOLICITADA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [602], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2216-OPCION-SOLICITADA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2216-VALIDA-DATOS-ALTA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [636], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2216-VALIDA-DATOS-ALTA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Persiste actualizaciones de negocio en ZM2CD013, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2216-VALIDA-DATOS-BAJA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [687], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2216-VALIDA-DATOS-BAJA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2216-VALIDA-DATOS-CONS', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [669], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2216-VALIDA-DATOS-CONS', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2217-VALIDA-CUENTA-FONDO', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [756], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2217-VALIDA-CUENTA-FONDO', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2217-VALIDA-CUENTA-FONDO-BIS', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [802], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2217-VALIDA-CUENTA-FONDO-BIS', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2217-VALIDA-GRUPO-CUENTA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [716], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2217-VALIDA-GRUPO-CUENTA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2218-CONSUL-GRUPO-CUENTA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [836], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2218-CONSUL-GRUPO-CUENTA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CD013 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2220-BUSCAR-CUENTA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [844], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2220-BUSCAR-CUENTA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM2CD013 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2225-MUEVE-DATOS', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [403], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2225-MUEVE-DATOS', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2230-VALIDA-EMISORA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [885], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2230-VALIDA-EMISORA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2240-VALIDA-SERIE', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [896], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2240-VALIDA-SERIE', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1036], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3000-FIN', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Cierra la ejecucion de ZM2CD013, consolidando trazas y terminacion funcional del proceso.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '710-HAB-DESHAB-EDO0', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [952], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '710-HAB-DESHAB-EDO0', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '711-HAB-DESHAB-EDO1', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [965], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '711-HAB-DESHAB-EDO1', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '712-HAB-DESHAB-EDO3', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [979], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '712-HAB-DESHAB-EDO3', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '800-PREPARA-DATOS-ENCA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [993], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '800-PREPARA-DATOS-ENCA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Inicializa el flujo operativo de ZM2CD013, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9000-NOMBRE-EMPRESA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1005], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9000-NOMBRE-EMPRESA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '999-PROTEGER-CAMPOS', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [939], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '999-PROTEGER-CAMPOS', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'GOBACK', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [182], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'GOBACK', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [163], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MSERIEA', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [399], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MSERIEA', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MSG2A', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [989], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MSG2A', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MSG2O', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [395], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MSG2O', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'})
SET n += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [28], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM2CD013', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', summary: 'Orquesta una fase funcional de ZM2CD013, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM2CA100'})
SET n += {description: 'Programa COBOL que transaccion para alta de representante legal. l o g d e m o d i f i c a c i o n e s marca autor fecha descripcion xx-x.x.x-xx xxxxxxx ddmmmaa xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. Pertenece a: PROGRAM-ID. ZM2CA100..', ingestion: 'auto', layer: 'program', name: 'ZM2CA100', nodeType: 'program', objective: 'TRANSACCION PARA ALTA DE REPRESENTANTE LEGAL. L O G D E M O D I F I C A C I O N E S MARCA AUTOR FECHA DESCRIPCION XX-X.X.X-XX XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA100.cbl', system: 'PROGRAM-ID. ZM2CA100.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM2CA300'})
SET n += {description: 'Programa COBOL que transaccion para consulta de copropietarios o apoderados. l o g d e m o d i f i c a c i o n e s marca autor fecha descripcion xx-x.x.x-xx xxxxxxx ddmmmaa xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. Pertenece a: PROGRAM-ID. ZM2CA300..', ingestion: 'auto', layer: 'program', name: 'ZM2CA300', nodeType: 'program', objective: 'TRANSACCION PARA CONSULTA DE COPROPIETARIOS O APODERADOS. L O G D E M O D I F I C A C I O N E S MARCA AUTOR FECHA DESCRIPCION XX-X.X.X-XX XXXXXXX DDMMMAA XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CA300.cbl', system: 'PROGRAM-ID. ZM2CA300.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM2CAUD1'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM2CAUD1..', ingestion: 'auto', layer: 'program', name: 'ZM2CAUD1', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD1.cbl', system: 'PROGRAM-ID. ZM2CAUD1.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM2CAUD2'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM2CAUD2..', ingestion: 'auto', layer: 'program', name: 'ZM2CAUD2', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD2.cbl', system: 'PROGRAM-ID. ZM2CAUD2.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM2CAUD3'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM2CAUD3..', ingestion: 'auto', layer: 'program', name: 'ZM2CAUD3', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD3.cbl', system: 'PROGRAM-ID. ZM2CAUD3.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM2CAUD4'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM2CAUD4..', ingestion: 'auto', layer: 'program', name: 'ZM2CAUD4', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD4.cbl', system: 'PROGRAM-ID. ZM2CAUD4.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM2CAUD5'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM2CAUD5..', ingestion: 'auto', layer: 'program', name: 'ZM2CAUD5', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CAUD5.cbl', system: 'PROGRAM-ID. ZM2CAUD5.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM2CD010'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM2CD010', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD010.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM2CD011'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM2CD011..', ingestion: 'auto', layer: 'program', name: 'ZM2CD011', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD011.cbl', system: 'PROGRAM-ID. ZM2CD011.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM2CD013'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM2CD013..', ingestion: 'auto', layer: 'program', name: 'ZM2CD013', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013', sourceFile: 'src/ZM2CD013.cbl', system: 'PROGRAM-ID. ZM2CD013.', viewTag: 'cobol-program'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '100000-INICIO', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '100100-BORRAR-QUEUE', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '100110-LIMPIA-ENTRADA', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [345], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '200000-PROCESO', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '200101-OBTIENE-PAIS', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [581], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '200210-RUTINA-CVE-CTE', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [633], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '210000-OBTIENE-CUENTA', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '211000-OBTIENE-REPLEG', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [441], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '240000-VALIDA-INFORMA1', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [476], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '260000-ALTA-REPRELEGAL', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [712], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '300000-FINAL', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '300200-ROLLBACK', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [924], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '3228-INSERT-ZMDTFAT', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '3229-INSERT-ZMDTDIR', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '3230-INSERT-ZMDTTEL', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [853], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '3320-VERIFICA-NO-EXISTE-REP', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [625], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '3325-LEE-ZMDTFAT', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '999999-ERROR-CICS', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [935], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: '999999-ERROR-DB2', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: 'SPECIAL-NAMES', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '0004-CARGA-QUEUE1', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [882], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '100000-INICIO', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [580], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '100100-BORRAR-QUEUE', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '100110-LIMPIA-ENTRADA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '100120-VALIDA-ENTRADA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [701], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '1100-VALIDA-ESTADO2', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '1140-VALIDA-FECHA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '1144-VALIDA-DATOS', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '1200-ACTUALIZA-BD', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '2000-BUSCA-PARAMETRO-D', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '2000-BUSCA-PARAMETRO-P', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3235], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '2000-INSERT-PAR-T91', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '2000-SEPARA-LETRAS', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3311], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '200000-PROCESO', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [729], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '200700-WRITEQ', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3596], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '202200-OPEN-COPROPIETARIOS', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [814], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '202300-FETCH-COPROPIETARIOS', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [839], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '202400-CLOSE-COPROPIETARIOS', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '210000-OBTIENE-CUENTA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [764], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '2164-LEE-ZMDTFAT', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '2164-LEE-ZMDTFAT-DOC', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '2165-LEE-ZMDTDIR', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '2166-LEE-ZMDTTEL', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '220000-OBTIENE-COPROPI', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [803], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '230000-VALIDA-BAJA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3332], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '240000-VALIDA-SALIDA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3558], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '3000-BUSCA-PARAMETRO-P', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '300000-FINAL', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '300200-ROLLBACK', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3633], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '322910-LINK-ZM9CTH10', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4115-GRABA-ZMDTFAT', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2502], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4115-INSER-ZMDTFAT', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2604], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4116-GRABA-ZMDTDIH', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2784], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4116-GRABA-ZMDTDIR1', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2656], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4116-GRABA-ZMDTDIR2', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2733], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4116-INSER-ZMDTDIR1', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4116-LEE-ZMDTDIH', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2819], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4117-GRABA-ZMDTTEH', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3024], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4117-GRABA-ZMDTTEL1', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2858], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4117-GRABA-ZMDTTEL2', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2941], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4117-INSER-ZMDTTEL1', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2907], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4117-INSER-ZMDTTEL2', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2990], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4117-LEE-ZMDTTEH', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3055], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4118-ESTATUS', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4118-NIVIND', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4118-STACRS', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '4119-INS-ZMDTFAH', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '5000-LEE-ZMDTPAI', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '5100-LEE-ZMDTPAI', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3092], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '5200-LEE-ZMDTENT', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '7500-CARGA-MAPA2', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1991], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '7500-PROTEGE-MAPA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '7500-PROTEGE-MAPA2', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2062], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8220-LEE-CLIENTE', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1054], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8330-LEE-CTECOMP', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8400-ACTUALIZA-ACLICTA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8400-BUSCA-DETDOC', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8400-DELET-DETDOC', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8400-SELECCIONA-ACLICTA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3368], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8410-ACTUALIZA-CUENTA', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8420-ACTUALIZA-CLIENTE', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3534], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8520-UPDATE-CLIENTE', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8530-INSERT-CTECOMP', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8530-UPDATE-CTECOMP', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '8601-ARMA-UNA-PAG-ESTADO1', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '999999-ERROR-CICS', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3644], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: '999999-ERROR-DB2', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3660], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [24], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [562], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: 'SPECIAL-NAMES', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [545], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [617], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '200100-RECUP-DATOS', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1239], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '210000-GENERA-DATOS', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [822], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-CC', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [908], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-F', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-T', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [874], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-UG', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [925], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-US', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [891], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-CC', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1039], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-F', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-T', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [959], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-UG', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1079], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-US', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [999], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-CC', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-F', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-T', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-UG', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1207], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-US', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '220000-ESTADO-CONTINUACION', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '220000-TRATAR-PF2', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1549], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '220000-TRATAR-PF2-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1575], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '2240-LIMPIA-MAPA', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '250000-EVALUA-SELECCION', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '250000-TRATAR-PF3', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1581], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '250000-TRATAR-PF3-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1597], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1604], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '310000-REC-FECHA-HORA', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1682], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '310000-REC-FECHA-HORA-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1706], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '605000-NOMBRE-EMPRESA-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1791], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '610000-NOMBRE-USUARIO', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1711], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '610000-NOMBRE-USUARIO-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '7200-RECIBE-MAPA2', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1507], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '8000-GRABA-REG-TS2-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1294], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '8320-BORRA-QUEUE-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1542], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '900000-MENSAJE-ERROR-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1849], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '910000-LEE-ITEM-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1875], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '921000-BUSCA-PARAM-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2143], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '950000-VALIDA-CICS-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2182], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '981000-ALINEA-STRING-IZQ-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '988888-ABORTA-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '9900-BORRA-QUEUES', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1963], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1880], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [44], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [534], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: 'WM-CODIGO', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [647], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [667], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '200100-RECUP-DATOS', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1836], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '210000-GENERA-DATOS', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-CC', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-F', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1553], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-T', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-UG', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1538], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '211000-ABRE-CURSOR-IND-US', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1508], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-CC', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-F', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1728], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-T', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-UG', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1688], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '212000-PROC-CURSOR-IND-US', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1608], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-CC', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1794], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-F', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1822], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-T', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-UG', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-US', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1780], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '220000-ESTADO-CONTINUACION', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '220000-TRATAR-PF2', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2099], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '220000-TRATAR-PF4', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [879], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '2240-LIMPIA-MAPA', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2044], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '230000-ESTADO-CONFIRMACION', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [860], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '250000-EVALUA-SELECCION', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '250000-TRATAR-PF3', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '310000-REC-FECHA-HORA', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '400000-VALIDA-SELECCION', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1002], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '420000-LLAMA-ZM2CAUD3', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [987], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '610000-NOMBRE-USUARIO', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2330], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1854], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2062], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [1872], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2082], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2463], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2014], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2637], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2671], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '980000-TRATAR-ABEND', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2752], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2765], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2788], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '9900-BORRA-QUEUES', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: 'WM-CODIGO', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [545], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '100001-LEE-ZM2CAUD2', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [634], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '100002-OPEN-ZMDT747', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [657], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '100003-FETCH-ZMDT747', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '100004-CLOSE-ZMDT747', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [706], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '200100-RECUP-DATOS', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '200101-RECUP-DESCR', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '220000-ESTADO-CONTINUACION', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [750], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '220000-TRATAR-PF2', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '220000-TRATAR-PF4', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1086], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '220001-UPDATE746', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '2240-LIMPIA-MAPA', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '230000-ESTADO-CONFIRMACION', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1060], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '250000-TRATAR-PF3', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '250002-LEE-QUE', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '310000-REC-FECHA-HORA', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '400000-VALIDA-SELECCION', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [781], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '420000-LLAMA-ZM2CAUD2', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1041], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1552], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '920000-TRANSFIERE', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1730], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '970000-EXIBE-TEXTO', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1805], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '980000-TRATAR-ABEND', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1823], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1843], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1870], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1892], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [39], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [534], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1544], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [578], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [655], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '200100-RECUP-DATOS', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '210000-GENERA-DATOS', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '211000-ABRE-CURSOR-747ALL', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '212000-PROC-CURSOR-747ALL', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-747ALL', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '220000-ESTADO-CONTI-ALTA', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [734], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '220000-ESTADO-CONTI-ALTA-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '220000-ESTADO-VALIDA-2-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1305], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '220000-ESTADO-VALIDACION-1', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '220000-ESTADO-VALIDACION-2', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '220000-TRATAR-PF2', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1739], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '220000-TRATAR-PF2-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '220000-VALIDA-DATOS', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [955], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '220000-VALIDA-DATOS-ABC', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [858], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '2240-LIMPIA-MAPA', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1669], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '2240-LIMPIA-SEL', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '230000-ESTADO-CONTI-BAJA', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '230000-ESTADO-CONTI-BAJA-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [851], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '230000-ESTADO-CONTI-CAMB', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [766], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '230000-ESTADO-CONTI-CAMB-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [808], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '250000-TRATAR-PF3', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1772], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '250000-TRATAR-PF3-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1787], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1901], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '310000-REC-FECHA-HORA', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1957], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '310000-REC-FECHA-HORA-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1981], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '400000-VALIDA-SELECCION', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [993], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2030], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '605000-NOMBRE-EMPRESA-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2068], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '610000-NOMBRE-USUARIO', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1986], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '610000-NOMBRE-USUARIO-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2024], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1696], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '8000-GRABA-REG-TS2-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '800000-DELETE', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2076], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '800000-DELETE-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '8210-ARMA-PAGINA', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1513], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1720], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '8320-BORRA-QUEUE-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1732], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '900000-MENSAJE-ERROR-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '910000-LEE-ITEM-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2206], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2336], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '921000-BUSCA-PARAM-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1635], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '950000-VALIDA-CICS-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '980000-TRATAR-ABEND', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '980000-TRATAR-ABEND-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2474], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '981000-ALINEA-STRING-IZQ-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2506], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '988888-ABORTA-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '9900-BORRA-QUEUES', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1877], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1792], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2529], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2533], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [53], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [530], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2065], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: 'WM-CODIGO', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1866], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [66], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '000000-CONTROL', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [579], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '100000-INICIO', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [596], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '100001-LEE-ZM2CAUD6', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [644], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '20000-CONFIRMACION-DATOS-1', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [747], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '20000-CONFIRMACION-DATOS-2', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '20000-CONFIRMACION-DATOS-A', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [728], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '20000-CONFIRMACION-DATOS-C', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '20000-CONTINUACION-DATOS-A', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [710], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '20000-CONTINUACION-DATOS-C', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1516], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '20000-F12-ENTER-CANCELO', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [770], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '20000-REGRESO-ZM96', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1590], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '200000-PROCESO', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [658], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '213000-CIERRA-CURSOR-IND-F', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2015], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-ESTADO-VALIDACION-A', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [693], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-ESTADO-VALIDACION-A-C', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [680], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-ESTADO-VALIDACION-C', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1482], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-INSERTA-PERFIL', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-TRATAR-PF2-A', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-TRATAR-PF2-A-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-TRATAR-PF2-C', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-TRATAR-PF2-C-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-UPDATE-DATOS', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [991], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '220000-VALIDA-DATOS-IN', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1354], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '2240-LIMPIA-MAPA-A', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '300000-FINAL', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '310000-REC-FECHA-HORA-A', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2554], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '310000-REC-FECHA-HORA-A-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2578], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '310000-REC-FECHA-HORA-C', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2585], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '310000-REC-FECHA-HORA-C-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2609], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '400000-VALIDA-SELECCION-A', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1049], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '400000-VALIDA-SELECCION-C', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '605000-NOMBRE-EMPRESA', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2658], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '605000-NOMBRE-EMPRESA-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2696], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '610000-NOMBRE-USUARIO', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2614], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '610000-NOMBRE-USUARIO-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '7100-RECIBE-MAPA1', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2049], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '8000-GRABA-REG-TS2', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2322], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '8000-GRABA-REG-TS2-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2340], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '8320-BORRA-QUEUE', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '8320-BORRA-QUEUE-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '900000-MENSAJE-ERROR', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '900000-MENSAJE-ERROR-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2754], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '910000-LEE-ITEM', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2759], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '910000-LEE-ITEM-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2780], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '920000-TRANSFIERE', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2785], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '920000-TRANSFIERE-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2874], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '921000-BUSCA-PARAM', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2879], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '921000-BUSCA-PARAM-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2910], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '9250-PAGINACION-QUEUE', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '950000-VALIDA-CICS', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2915], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '950000-VALIDA-CICS-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2946], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2954], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '970000-EXIBE-TEXTO-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3057], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '980000-TRATAR-ABEND', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3064], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '980000-TRATAR-ABEND-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3081], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '981000-ALINEA-STRING-IZQ', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3086], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '981000-ALINEA-STRING-IZQ-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '988888-ABORTA', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '988888-ABORTA-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: 'DATE-COMPILED', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: 'WC-EMPRESA', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2693], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: '010-INICIO', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: '020-PROCESO', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: '030-TERMINA', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: '100-LANZA-ZDC3', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: '101-LANZA-ZAA2', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: '9400-RETURN', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [3], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD010'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '1000-INICIA', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '1100-LEE-REG-QUEUE-OPCION', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '1200-BORRA-QUEUE-OPCION', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '1200-BORRA-QUEUE-OPCION-11', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [266], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '1200-BORRA-QUEUE-REGRESA', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [935], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2000-PROCESO', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [285], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2050-MUEVE-MENSAJES', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2100-ESTADO-INICIO', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2115-OBTENER-FECHA-HORA', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2120-ENVIA-MAPA', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2130-LIMPIA-REGISTROS', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [547], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2200-ESTADO-CONTINUACION', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2210-RECIBE-MAPA', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [446], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2220-VALIDA-REG-LLAVE', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2230-MUEVE-REG-LEIDO', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [582], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2300-ENVIA-MAPA-MENU', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [954], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2300-ENVIA-MAPA-RETORNO-ZD12', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [965], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2300-VALIDA-REGISTRO', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [606], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2300-VALIDA-REGISTRO-MODIFICAR', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [624], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '2350-BLOQ-REG-MODIFICAR', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [696], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '3000-FIN', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [904], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '5000-CONSULTA-ZMXT721', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [711], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '5100-INSERT-ZMXT721', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [774], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '5200-UPDATE-ZMXT721', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [824], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '9000-SALIDA', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [891], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '9250-LEE-REG-QUEUE', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [976], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: '9300-ESCRIBE-QUEUE-REGRESO', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [1000], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: 'GOBACK', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '0000-BORRA-EN-TABLA-AGPOCTA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [907], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '0000-INSERTA-EN-TABLA-AGPOCTA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [470], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '0001-INSERTA-EN-TABLA-ZMDT625', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [509], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '020-BORRA-PANTALLA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '020-RESUELVE-CONSUL', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [419], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '1000-INICIA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2000-PROCESO', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2100-ESTADO-INICIO', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2120-ENVIA-MAPA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2200-ESTADO-CONTINUACION', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2210-RECIBE-MAPA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2211-RESUELVE-ESTADO-CERO', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2212-RESUELVE-ESTADO-UNO', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2213-RESUELVE-ESTADO-TRES', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [566], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2214-ENVIA-PANTALLA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [312], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2216-OPCION-SOLICITADA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [602], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2216-VALIDA-DATOS-ALTA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [636], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2216-VALIDA-DATOS-BAJA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [687], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2216-VALIDA-DATOS-CONS', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [669], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2217-VALIDA-CUENTA-FONDO', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [756], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2217-VALIDA-CUENTA-FONDO-BIS', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [802], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2217-VALIDA-GRUPO-CUENTA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [716], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2218-CONSUL-GRUPO-CUENTA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [836], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2220-BUSCAR-CUENTA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [844], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2225-MUEVE-DATOS', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2230-VALIDA-EMISORA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [885], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '2240-VALIDA-SERIE', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [896], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1036], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '710-HAB-DESHAB-EDO0', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [952], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '711-HAB-DESHAB-EDO1', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [965], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '712-HAB-DESHAB-EDO3', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [979], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '800-PREPARA-DATOS-ENCA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [993], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '9000-NOMBRE-EMPRESA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1005], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: '999-PROTEGER-CAMPOS', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [939], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: 'GOBACK', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [182], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [163], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: 'MSERIEA', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: 'MSG2A', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [989], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: 'MSG2O', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [28], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'QGECCAA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZMECA100'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZMWSX648'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTDIR'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTFAT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTPAI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTTEL'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'QGECCAA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [564], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMECA300'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [566], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZACLICTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZCLIENTE'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZCTECOMP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZDETDOC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMECTH1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMWCA300'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMWSX648'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTDIH'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTDIR'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTENT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTFAH'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTFAT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTPAI'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTTEH'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTTEL'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1947], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1914, 1942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1918], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMMAUD1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMMAUD2'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2685], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2183, 2211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2833], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2839], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2826], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMMAUD3'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [436], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1922], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMMAUD4'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [430], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [474], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZPERFIL'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZZMDT747'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1861], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1828, 1856], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1832], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2553], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2546], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMMAUD5'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [408], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [442], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZZMDT747'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2968], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [460], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMMAUD6'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMMAUD7'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [472], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [491], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZZMDT747'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD010'}), (b:Copybook {name: 'ZMECOR10'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD010'}), (b:Copybook {name: 'ZMWBV399'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2220-VALIDA-REG-LLAVE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [467, 477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2300-VALIDA-REGISTRO-MODIFICAR', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9300-ESCRIBE-QUEUE-REGRESO', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [1024], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWBP602'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMMDDO'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZZMDT721'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '0000-BORRA-EN-TABLA-AGPOCTA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '0000-INSERTA-EN-TABLA-AGPOCTA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '0001-INSERTA-EN-TABLA-ZMDT625', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [511], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '0001-INSERTA-EN-TABLA-ZMDT625', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2210-RECIBE-MAPA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2210-RECIBE-MAPA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [297, 303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2211-RESUELVE-ESTADO-CERO', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [343, 349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2212-RESUELVE-ESTADO-UNO', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [443, 449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2213-RESUELVE-ESTADO-TRES', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [571, 577], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2214-ENVIA-PANTALLA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2214-ENVIA-PANTALLA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2217-VALIDA-CUENTA-FONDO', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2217-VALIDA-CUENTA-FONDO-BIS', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [831], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2217-VALIDA-GRUPO-CUENTA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2220-BUSCAR-CUENTA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [880], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1065], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1071], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1077], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1053], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1059], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1083], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '800-PREPARA-DATOS-ENCA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [997], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9000-NOMBRE-EMPRESA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1016, 1032], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9000-NOMBRE-EMPRESA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1019], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZAGPOCTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMMAGP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZZMDT625'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Copybook {name: 'QGECCAA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Copybook {name: 'ZMECA100'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Copybook {name: 'ZMWSX648'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTDIR'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTFAT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTPAI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTTEL'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'QGECCAA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [564], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZACLICTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZCLIENTE'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZCTECOMP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZDETDOC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZMECA300'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [566], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZMECTH1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZMWCA300'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZMWSX648'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTDIH'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTDIR'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTENT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTFAH'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTFAT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTPAI'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTTEH'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTTEL'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMMAUD1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMMAUD2'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMMAUD3'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2833], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2839], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2826], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [436], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMMAUD4'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1922], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [430], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [474], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZPERFIL'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:Copybook {name: 'ZZMDT747'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMMAUD5'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2553], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2546], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [408], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [442], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:Copybook {name: 'ZZMDT747'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [460], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMMAUD6'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMMAUD7'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [472], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [491], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:Copybook {name: 'ZZMDT747'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Copybook {name: 'ZMECOR10'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD010'}), (b:Copybook {name: 'ZMWBV399'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Copybook {name: 'ZMMDDO'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Copybook {name: 'ZMWBP602'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [1024], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:Copybook {name: 'ZZMDT721'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZAGPOCTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMMAGP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1065], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1071], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1077], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1053], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1059], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1083], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:Copybook {name: 'ZZMDT625'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:DBTable {name: 'ZMDTFAT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:DBTable {name: 'ZMDTPAI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ACLICTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 3373, 3374, 3375, 3376, 3377, 3378, 3379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'CLIENTE'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1073, 1074, 1075, 1076, 1077, 1078, 1079, 1080, 1081, 1082], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'CTECOMP'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [770, 771, 772, 773, 774, 775, 776, 777, 778, 779], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'DETDOC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3430, 3431, 3432, 3433, 3434, 3435, 3436, 3457, 3458, 3459, 3460, 3461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1419, 1420, 1421, 1422, 1423, 1424, 1425, 1426, 1427, 1428, 3198, 3199, 3200, 3201, 3202, 3203, 3204, 3205, 3206, 3207, 3208, 3209, 3210, 3211, 3242, 3243, 3244, 3245, 3246, 3247, 3248, 3249, 3250, 3251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTDIR'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1223, 1224, 1225, 1226, 1227, 1228, 1229, 1230, 1231, 1232, 2821, 2822, 2823, 2824, 2825, 2826, 2827, 2828, 2829, 2830, 2831, 2832, 2833, 2834, 2835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTENT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3122, 3123, 3124, 3125, 3126, 3127, 3128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTFAT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1147, 1148, 1149, 1150, 1151, 1152, 1153, 1154, 1155, 1156, 1157, 1158, 1159, 1160, 1161, 1162, 2416, 2417, 2418, 2419, 2420, 2421, 2422, 2423, 2424, 2425, 2426, 2427, 2467, 2468, 2469, 2470, 2471, 2472, 2473, 2474, 2475, 2476, 2477, 2478, 2479, 2480, 2481, 2482, 2483, 2484, 2485, 2486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTPAI'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1197, 1198, 1199, 1200, 1201, 1202, 3094, 3095, 3096, 3097, 3098, 3099, 3100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTTEL'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [1255, 1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 3057, 3058, 3059, 3060, 3061, 3062, 3063, 3064, 3065, 3066, 3067, 3068, 3069], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2111, 2112, 2113, 2114, 2115, 2116, 2117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:DBTable {name: 'USUARIO'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1719, 1720, 1721, 1722, 1723, 1724, 1725], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD1'}), (b:DBTable {name: 'ZMDT746'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2609, 2610, 2611, 2612, 2613, 2614, 2615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:DBTable {name: 'USUARIO'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2338, 2339, 2340, 2341, 2342, 2343, 2344], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD2'}), (b:DBTable {name: 'ZMDT746'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 550, 551, 552, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 569, 570, 571, 572, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 589, 590, 592, 593, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 610, 611, 612, 613, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 630, 631, 632, 633], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1734, 1735, 1736, 1737, 1738, 1739, 1740], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:DBTable {name: 'PERFIL'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:DBTable {name: 'ZMDT747'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [524, 525, 526, 527, 528, 529, 530, 531], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2340, 2341, 2342, 2343, 2344, 2345, 2346], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:DBTable {name: 'USUARIO'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1994, 1995, 1996, 1997, 1998, 1999, 2000], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:DBTable {name: 'ZMDT747'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 2091, 2092, 2093, 2094, 2095], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2883, 2884, 2885, 2886, 2887, 2888, 2889], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:DBTable {name: 'USUARIO'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2622, 2623, 2624, 2625, 2626, 2627, 2628], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:DBTable {name: 'ZMDT747'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1366, 1367, 1368, 1374, 1375, 1381, 1385, 1391], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:DBTable {name: 'ZMDT721'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:DBTable {name: 'AGPOCTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 912, 913, 914, 915, 916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:DBTable {name: 'CONCEPT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 804, 805, 806, 807, 808, 809, 810, 811], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:DBTable {name: 'ZMDTDIR'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:DBTable {name: 'ZMDTFAT'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA100'}), (b:DBTable {name: 'ZMDTTEL'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ACLICTA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3404, 3405, 3406, 3407, 3408, 3409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'CLIENTE'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2197, 2198, 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207, 2208, 2209, 2210, 2211, 2212, 3538, 3539, 3540, 3541, 3542], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'CTECOMP'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2249, 2250, 2251, 2252, 2253, 2254, 2255, 2256, 2257, 2258, 2259, 2260, 2261, 2281, 2282, 2283, 2284, 2285, 2286, 2287, 2288, 2289, 2290, 2291, 2292, 2293, 2294, 2295, 2296, 2297, 2298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3485, 3486, 3487, 3488, 3489, 3490, 3491, 3492], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'DETDOC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3457, 3458, 3459, 3460, 3461], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3284, 3285, 3286, 3287, 3288, 3289, 3290, 3291], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTDIH'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2788, 2789, 2790, 2791, 2792, 2793, 2794, 2795, 2796, 2797, 2798, 2799, 2800, 2801, 2802, 2803], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTDIR'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2670, 2671, 2672, 2673, 2674, 2675, 2676, 2677, 2678, 2679, 2701, 2702, 2703, 2704, 2705, 2706, 2707, 2708, 2709, 2710, 2711, 2712, 2713, 2714, 2715, 2716, 2717, 2751, 2752, 2753, 2754, 2755, 2756, 2757, 2758, 2759, 2760, 2761, 2762, 2763, 2764], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTFAH'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2467, 2468, 2469, 2470, 2471, 2472, 2473, 2474, 2475, 2476, 2477, 2478, 2479, 2480, 2481, 2482, 2483, 2484, 2485, 2486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTFAT'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2557, 2558, 2559, 2560, 2561, 2562, 2563, 2564, 2565, 2566, 2567, 2568, 2569, 2570, 2571, 2572, 2573, 2574, 2575, 2576, 2577, 2578, 2579, 2580, 2581, 2582, 2583, 2584, 2585, 2586, 2587, 2606, 2607, 2608, 2609, 2610, 2611, 2612, 2613, 2614, 2615, 2616, 2617, 2618, 2619, 2620, 2621, 2622, 2623, 2624, 2625, 2626, 2627, 2628, 2629, 2630, 2631, 2632, 2633, 2634, 2635, 2636, 2637, 2638, 2639, 2640], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTTEH'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [3028, 3029, 3030, 3031, 3032, 3033, 3034, 3035, 3036, 3037, 3038, 3039], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CA300'}), (b:DBTable {name: 'ZMDTTEL'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [2875, 2876, 2877, 2878, 2879, 2880, 2881, 2882, 2883, 2884, 2885, 2886, 2887, 2909, 2910, 2911, 2912, 2913, 2914, 2915, 2916, 2917, 2918, 2919, 2920, 2921, 2922, 2923, 2924, 2925, 2958, 2959, 2960, 2961, 2962, 2963, 2964, 2965, 2966, 2967, 2968, 2969, 2970, 2992, 2993, 2994, 2995, 2996, 2997, 2998, 2999, 3000, 3001, 3002, 3003, 3004, 3005, 3006, 3007, 3008], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD3'}), (b:DBTable {name: 'ZMDT746'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1131, 1132, 1133, 1134, 1135, 1136, 1137, 1138, 1139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD4'}), (b:DBTable {name: 'ZMDT747'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2091, 2092, 2093, 2094, 2095], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CAUD5'}), (b:DBTable {name: 'ZMDT747'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1432, 1433, 1434, 1435, 1436, 1437, 1438, 1439, 1440, 1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD011'}), (b:DBTable {name: 'ZMDT721'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 839, 840, 841, 842, 843, 844, 845, 846, 847, 852, 853, 854, 856, 857], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:DBTable {name: 'AGPOCTA'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 912, 913, 914, 915, 916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Program {name: 'ZM2CD013'}), (b:DBTable {name: 'ZMDT625'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'QGECCAA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZMECA100'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZMWSX648'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [78], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTDIR'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTFAT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTPAI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA100'}), (b:Copybook {name: 'ZZMDTTEL'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA100.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'QGECCAA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [564], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMECA300'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [566], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZACLICTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZCLIENTE'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZCTECOMP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [70], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZDETDOC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMECTH1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMWCA300'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZMWSX648'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [148], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTDIH'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTDIR'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTENT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTFAH'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTFAT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTPAI'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTTEH'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CA300'}), (b:Copybook {name: 'ZZMDTTEL'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CA300.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1947], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1914, 1942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [1918], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2296], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [2283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [371], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [309], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMMAUD1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMMAUD2'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [376], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [352], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [325], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD1'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD1.cbl', evidenceLines: [317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2685], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2183, 2211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2833], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2839], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [2826], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [388], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [390], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [362], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMMAUD3'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [431], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [440], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [414], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [436], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [400], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [378], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [382], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [374], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD2'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD2.cbl', evidenceLines: [370], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1916], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1902], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1922], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [1909], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMMAUD4'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [430], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [455], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [474], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZPERFIL'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [398], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD3'}), (b:Copybook {name: 'ZZMDT747'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD3.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1861], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1828, 1856], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9900-TRANSFIERE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [1832], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2553], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2559], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [2546], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMMAUD5'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [389], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [412], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [428], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [437], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [408], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [403], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [442], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [415], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [422], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [394], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [369], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [365], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD4'}), (b:Copybook {name: 'ZZMDT747'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD4.cbl', evidenceLines: [361], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '960000-VALIDA-FECHA', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [2968], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '999999-RETURN-EXIT', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [3153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'CNDCERRW'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [460], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [423], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [425], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [393], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMMAUD6'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [429], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMMAUD7'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [433], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [472], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [481], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [452], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [447], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSR43A'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [491], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSRY09'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [459], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSX090'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [466], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [443], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZMWSZ652'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZPRECIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [417], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZUSUARIO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [409], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZZMDT746'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [405], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CAUD5'}), (b:Copybook {name: 'ZZMDT747'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CAUD5.cbl', evidenceLines: [401], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD010'}), (b:Copybook {name: 'ZMECOR10'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD010'}), (b:Copybook {name: 'ZMWBV399'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD010.cbl', evidenceLines: [69], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2220-VALIDA-REG-LLAVE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [467, 477], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2300-VALIDA-REGISTRO-MODIFICAR', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [630], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9300-ESCRIBE-QUEUE-REGRESO', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [1024], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWBP602'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [175], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [183], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMMDDO'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [93], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [189], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD011'}), (b:Copybook {name: 'ZZMDT721'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD011.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '0000-BORRA-EN-TABLA-AGPOCTA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [934], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '0000-INSERTA-EN-TABLA-AGPOCTA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '0001-INSERTA-EN-TABLA-ZMDT625', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [511], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '0001-INSERTA-EN-TABLA-ZMDT625', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2210-RECIBE-MAPA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [287], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2210-RECIBE-MAPA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [297, 303], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2211-RESUELVE-ESTADO-CERO', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [343, 349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2212-RESUELVE-ESTADO-UNO', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [443, 449], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2213-RESUELVE-ESTADO-TRES', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [571, 577], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2214-ENVIA-PANTALLA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2214-ENVIA-PANTALLA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [331], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2217-VALIDA-CUENTA-FONDO', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [797], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2217-VALIDA-CUENTA-FONDO-BIS', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [831], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2217-VALIDA-GRUPO-CUENTA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [751], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '2220-BUSCAR-CUENTA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [880], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1065], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1071], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1077], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1053], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1059], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '3000-FIN', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1083], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '800-PREPARA-DATOS-ENCA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [997], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9000-NOMBRE-EMPRESA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1016, 1032], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: '9000-NOMBRE-EMPRESA', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [1019], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZAGPOCTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMMAGP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [127], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM2CD013'}), (b:Copybook {name: 'ZZMDT625'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM2CD013.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T203918Z-zm2ca100-zm2ca300-zm2caud1-zm2caud2-zm2caud3-zm2caud4-zm2caud5-zm2cd010-zm2cd011-zm2cd013'};

