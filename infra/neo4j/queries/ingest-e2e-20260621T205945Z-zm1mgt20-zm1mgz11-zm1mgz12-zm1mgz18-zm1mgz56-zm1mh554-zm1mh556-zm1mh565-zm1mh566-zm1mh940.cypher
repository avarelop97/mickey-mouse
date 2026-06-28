// ============================================================================
// E2E INGEST WRITEPAYLOAD - RunId: e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940
// ============================================================================

MERGE (n:Copybook {name: 'DFHAID'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [172], ingestion: 'auto', layer: 'dependency', name: 'DFHAID', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'DFHBMSCA'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [174], ingestion: 'auto', layer: 'dependency', name: 'DFHBMSCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'KAPLIDER'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [156], ingestion: 'auto', layer: 'dependency', name: 'KAPLIDER', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'KCONCEPT'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [153], ingestion: 'auto', layer: 'dependency', name: 'KCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'KSUSCRIP'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [165], ingestion: 'auto', layer: 'dependency', name: 'KSUSCRIP', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'SQLCA'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [147], ingestion: 'auto', layer: 'dependency', name: 'SQLCA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCONCEPT'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [569], ingestion: 'auto', layer: 'dependency', name: 'ZCONCEPT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCTLPROC'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [565], ingestion: 'auto', layer: 'dependency', name: 'ZCTLPROC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZCUENTA'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [162], ingestion: 'auto', layer: 'dependency', name: 'ZCUENTA', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGM181'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [68], ingestion: 'auto', layer: 'dependency', name: 'ZMGM181', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGT201'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [56], ingestion: 'auto', layer: 'dependency', name: 'ZMGT201', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGZ111'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [88], ingestion: 'auto', layer: 'dependency', name: 'ZMGZ111', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGZ121'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [173], ingestion: 'auto', layer: 'dependency', name: 'ZMGZ121', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGZ561'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [592], ingestion: 'auto', layer: 'dependency', name: 'ZMGZ561', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGZ562'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [677], ingestion: 'auto', layer: 'dependency', name: 'ZMGZ562', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMGZM56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [587], ingestion: 'auto', layer: 'dependency', name: 'ZMGZM56', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMH5541'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [110], ingestion: 'auto', layer: 'dependency', name: 'ZMH5541', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMH5561'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [71], ingestion: 'auto', layer: 'dependency', name: 'ZMH5561', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMH5651'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [64], ingestion: 'auto', layer: 'dependency', name: 'ZMH5651', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMH5661'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [99], ingestion: 'auto', layer: 'dependency', name: 'ZMH5661', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMW9401'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [176], ingestion: 'auto', layer: 'dependency', name: 'ZMW9401', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWBP487'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5138], ingestion: 'auto', layer: 'dependency', name: 'ZMWBP487', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWBV487'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [493], ingestion: 'auto', layer: 'dependency', name: 'ZMWBV487', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWBV492'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [432], ingestion: 'auto', layer: 'dependency', name: 'ZMWBV492', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWCOM11'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [80], ingestion: 'auto', layer: 'dependency', name: 'ZMWCOM11', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWLL005'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [385], ingestion: 'auto', layer: 'dependency', name: 'ZMWLL005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWLV011'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [57], ingestion: 'auto', layer: 'dependency', name: 'ZMWLV011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC002'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1714], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC002', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC003'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1721], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC003', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC004'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [272], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC004', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC005'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1728], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC005', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC006'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1735], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC006', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC008'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1742], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC008', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC009'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1749], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC010'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [217], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC010', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC011'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [219], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC011', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC012'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [221], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC012', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC013'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [223], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC013', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC014'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [225], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC014', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC015'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1756], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC015', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC016'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1763], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC016', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSC017'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [227], ingestion: 'auto', layer: 'dependency', name: 'ZMWSC017', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM0'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1702], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM0', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSCOM1'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1708], ingestion: 'auto', layer: 'dependency', name: 'ZMWSCOM1', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSG532'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [208], ingestion: 'auto', layer: 'dependency', name: 'ZMWSG532', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [97], ingestion: 'auto', layer: 'dependency', name: 'ZMWSH940', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR009'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [202], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR009', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR055'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [438], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR055', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR432'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [199], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR432', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR468'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [214], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR468', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSR652'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [468], ingestion: 'auto', layer: 'dependency', name: 'ZMWSR652', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSRA12'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [211], ingestion: 'auto', layer: 'dependency', name: 'ZMWSRA12', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSRARM'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [527], ingestion: 'auto', layer: 'dependency', name: 'ZMWSRARM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSRPRC'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [524], ingestion: 'auto', layer: 'dependency', name: 'ZMWSRPRC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZMWSZ403'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [205], ingestion: 'auto', layer: 'dependency', name: 'ZMWSZ403', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPARAM'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [150], ingestion: 'auto', layer: 'dependency', name: 'ZPARAM', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZPROMOT'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [159], ingestion: 'auto', layer: 'dependency', name: 'ZPROMOT', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDT800'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [581], ingestion: 'auto', layer: 'dependency', name: 'ZZMDT800', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:Copybook {name: 'ZZMDTRIC'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [577], ingestion: 'auto', layer: 'dependency', name: 'ZZMDTRIC', nodeType: 'copybook', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'dependency'};

MERGE (n:DBTable {name: 'APLIDER'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648], ingestion: 'auto', layer: 'data-access', name: 'APLIDER', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CONCEPT'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536], ingestion: 'auto', layer: 'data-access', name: 'CONCEPT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CTLPROC'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2171, 2172, 2173, 2174, 2175, 2176, 2177, 2178, 2207, 2208, 2209, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218], ingestion: 'auto', layer: 'data-access', name: 'CTLPROC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'CUENTA'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [760, 761, 762, 763, 764, 765, 766, 767, 768, 769], ingestion: 'auto', layer: 'data-access', name: 'CUENTA', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'OF'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269, 1270, 1271], ingestion: 'auto', layer: 'data-access', name: 'OF', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PARAM'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587], ingestion: 'auto', layer: 'data-access', name: 'PARAM', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'PROMOT'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716], ingestion: 'auto', layer: 'data-access', name: 'PROMOT', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'SUSCRIP'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307], ingestion: 'auto', layer: 'data-access', name: 'SUSCRIP', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDT800'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4425, 4426, 4427, 4428, 4429, 4430, 4431, 4432, 4433, 4434, 4435, 4436, 4437, 4438, 4439, 4440, 4441, 4442, 4443, 4444, 4445, 4446, 4447, 4448, 4449, 4450], ingestion: 'auto', layer: 'data-access', name: 'ZMDT800', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'data-access'};

MERGE (n:DBTable {name: 'ZMDTRIC'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4908, 4909, 4910, 4911, 4912, 4913, 4914, 4915, 4916, 4917, 4918, 4919, 4920, 4921, 4922, 4923, 4924, 4925, 4926, 4927, 4928, 4929, 4930, 4931, 4932, 4933, 4934, 4935, 4936, 4937, 4938, 4939, 4980, 4981, 4982, 4983, 4984, 4985, 4986, 4987, 4988, 4989, 4990, 4991], ingestion: 'auto', layer: 'data-access', name: 'ZMDTRIC', nodeType: 'physical-table', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'data-access'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGT20'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar menu de promocion: sistema de apoyo para el diagnostico patrimonial rutinas: programa: zm1mgt20 version x.xx - dd/mmm/aaaa modific.: xxx constantes de teclado (dfhaid) constantes de atributos variables del mapa variables de rutinas generales variables para obtener fechas vxt variables para obtener mensajes de error (wm-reg) variables para obtener userid, fecha y hora (fh-reg) variables para alinear string a la izquierda variables para rutina de centrado de texto variables para rutina de nombre de la empresa variables para rutina de transferencia (mm-llama-menu) variables para rutina de aborta (ab-reg) variables de comunicacion (wc-commarea). Pertenece a: BBVA-BANCOMER, S.A. DE C.V. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MGT20\'. 03 W000-OPC PIC X(03) VALUE \'8\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 03 W000-TIME PIC X(08) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'1\', \'2\', \'3\'. COPY DFHAID. COPY DFHBMSCA. COPY ZMGT201. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. COPY ZMWSC014. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-INVALIDA-TRANSFER PIC 9(04) VALUE 584. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. 05 WC-OPCION PIC X(01) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700)..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGT20', nodeType: 'business-function', objective: 'PRESENTAR MENU DE PROMOCION: SISTEMA DE APOYO PARA EL DIAGNOSTICO PATRIMONIAL RUTINAS: PROGRAMA: ZM1MGT20 VERSION X.XX - DD/MMM/AAAA MODIFIC.: XXX CONSTANTES DE TECLADO (DFHAID) CONSTANTES DE ATRIBUTOS VARIABLES DEL MAPA VARIABLES DE RUTINAS GENERALES VARIABLES PARA OBTENER FECHAS VXT VARIABLES PARA OBTENER MENSAJES DE ERROR (WM-REG) VARIABLES PARA OBTENER USERID, FECHA Y HORA (FH-REG) VARIABLES PARA ALINEAR STRING A LA IZQUIERDA VARIABLES PARA RUTINA DE CENTRADO DE TEXTO VARIABLES PARA RUTINA DE NOMBRE DE LA EMPRESA VARIABLES PARA RUTINA DE TRANSFERENCIA (MM-LLAMA-MENU) VARIABLES PARA RUTINA DE ABORTA (AB-REG) VARIABLES DE COMUNICACION (WC-COMMAREA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGZ11'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que enviar un mensaje a pantalla de opción desha- bilitada. opcion: sin opcion. transaccion: zz11 rutinas: zm9cr403 (obtener nombre de compa#ia) zm8cr980 (transaccion de aborta) zm9cr432 (transferencia-navegacion) modifico: nnnnnnnnn pppppppppppp mmmmmmmmm (xxxxxxx) fecha: mmmmmmmmmmmm dd, ssaa. asunto: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. finmod. Pertenece a: PROGRAM-ID. ZM1MGZ11..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGZ11', nodeType: 'business-function', objective: 'ENVIAR UN MENSAJE A PANTALLA DE OPCIóN DESHA- BILITADA. OPCION: SIN OPCION. TRANSACCION: ZZ11 RUTINAS: ZM9CR403 (OBTENER NOMBRE DE COMPA#IA) ZM8CR980 (TRANSACCION DE ABORTA) ZM9CR432 (TRANSFERENCIA-NAVEGACION) MODIFICO: NNNNNNNNN PPPPPPPPPPPP MMMMMMMMM (XXXXXXX) FECHA: MMMMMMMMMMMM DD, SSAA. ASUNTO: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX. FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGZ12'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar el menu de control de estados de cuenta opcion: "344" c/db2 transaccion: zz56 rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de compania) zm9cr432 (rutina de transferencia) zm9crvxt (fechas vxt) transaccion de aborta: z532 log de modificacion marca. autor. fecha. descripcion. japm-i j.antonio pichardo dic-2011 agrega la opcion \'i01\' japm-f. Pertenece a: PROGRAM-ID. ZM1MGZ12..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGZ12', nodeType: 'business-function', objective: 'PRESENTAR EL MENU DE CONTROL DE ESTADOS DE CUENTA OPCION: "344" C/DB2 TRANSACCION: ZZ56 RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE COMPANIA) ZM9CR432 (RUTINA DE TRANSFERENCIA) ZM9CRVXT (FECHAS VXT) TRANSACCION DE ABORTA: Z532 LOG DE MODIFICACION MARCA. AUTOR. FECHA. DESCRIPCION. JAPM-I J.ANTONIO PICHARDO DIC-2011 AGREGA LA OPCION \'I01\' JAPM-F', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGZ18'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM1MGZ18..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGZ18', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MGZ18.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MGZ56'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que mantenimiento de parametros de factset opcion: "230" c/db2 transaccion: zz56 rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de compania) zm9cr432 (rutina de transferencia) zm9crvxt (fechas vxt) transaccion de aborta: z532 log de modificacion. Pertenece a: PROGRAM-ID. ZM1MGZ56..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MGZ56', nodeType: 'business-function', objective: 'MANTENIMIENTO DE PARAMETROS DE FACTSET OPCION: "230" C/DB2 TRANSACCION: ZZ56 RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE COMPANIA) ZM9CR432 (RUTINA DE TRANSFERENCIA) ZM9CRVXT (FECHAS VXT) TRANSACCION DE ABORTA: Z532 LOG DE MODIFICACION', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MH554'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar el menu principal de valores. opcion: "290" transaccion: z554 rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) modifico: adriana vargas cardenas (avc) / extec fecha: sept. 24, 2002. asunto: 1) se modifica "opcion-valida" de nivel 88 para que acepte las opciones nuevas del menu. 2) deja solo una rutina de send map modifico: jean piza aviles (pjp) / softtek fecha: junio 24, 2002. asunto: se modifica "opcion-valida" de nivel 88 para que acepte la opcion 926 como valida finmod. Pertenece a: PROGRAM-ID. ZM1MH554..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MH554', nodeType: 'business-function', objective: 'PRESENTAR EL MENU PRINCIPAL DE VALORES. OPCION: "290" TRANSACCION: Z554 RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) MODIFICO: ADRIANA VARGAS CARDENAS (AVC) / EXTEC FECHA: SEPT. 24, 2002. ASUNTO: 1) SE MODIFICA "OPCION-VALIDA" DE NIVEL 88 PARA QUE ACEPTE LAS OPCIONES NUEVAS DEL MENU. 2) DEJA SOLO UNA RUTINA DE SEND MAP MODIFICO: JEAN PIZA AVILES (PJP) / SOFTTEK FECHA: JUNIO 24, 2002. ASUNTO: SE MODIFICA "OPCION-VALIDA" DE NIVEL 88 PARA QUE ACEPTE LA OPCION 926 COMO VALIDA FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MH556'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que presentar el menu de mesa de capitales opcion: 150 transaccion: z556 fecha modificacion : 2004-09-14 realizo : ernesto manuel cuautle martinez eliminacion de 4 opciones del menú de mercado de capitales. nota : este programa por ser un menú, no lleva rollback ni commit ya que no afecta tablas de base de datos.. Pertenece a: PROGRAM-ID. ZM1MH556..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MH556', nodeType: 'business-function', objective: 'PRESENTAR EL MENU DE MESA DE CAPITALES OPCION: 150 TRANSACCION: Z556 FECHA MODIFICACION : 2004-09-14 REALIZO : ERNESTO MANUEL CUAUTLE MARTINEZ ELIMINACION DE 4 OPCIONES DEL MENú DE MERCADO DE CAPITALES. NOTA : ESTE PROGRAMA POR SER UN MENú, NO LLEVA ROLLBACK NI COMMIT YA QUE NO AFECTA TABLAS DE BASE DE DATOS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MH565'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MH565', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MH565.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MH566'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MH566', nodeType: 'business-function', objective: 'Capacidad funcional principal de ZM1MH566.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', viewTag: 'functional'};

MERGE (n:Functionality {name: 'FUNCTIONALITY_ZM1MH940'})
SET n += {businessDomain: 'pending_human_review', description: 'Programa COBOL que registro de cuentas para amortizacion de acciones opcion: "822" transaccion: z940 modificacion. agosto 2004 llamados a los encabezados dependiendo el tipo de empresa que tenga asignada el usuario. cada empresa que opera. llamados a las rutinas dinamicamente. jfe. getronics modifico: enrique fernandez chapou fecha: junio 2025 asunto: incremento folio concept marca: sdatool-41254-aso-ini (inicio bloque) sdatool-41254-aso-fin (fin bloque). Pertenece a: PROGRAM-ID. ZM1MH940..', ingestion: 'auto', layer: 'functional', name: 'FUNCTIONALITY_ZM1MH940', nodeType: 'business-function', objective: 'REGISTRO DE CUENTAS PARA AMORTIZACION DE ACCIONES OPCION: "822" TRANSACCION: Z940 MODIFICACION. AGOSTO 2004 LLAMADOS A LOS ENCABEZADOS DEPENDIENDO EL TIPO DE EMPRESA QUE TENGA ASIGNADA EL USUARIO. CADA EMPRESA QUE OPERA. LLAMADOS A LAS RUTINAS DINAMICAMENTE. JFE. GETRONICS MODIFICO: ENRIQUE FERNANDEZ CHAPOU FECHA: JUNIO 2025 ASUNTO: INCREMENTO FOLIO CONCEPT MARCA: SDATOOL-41254-ASO-INI (INICIO BLOQUE) SDATOOL-41254-ASO-FIN (FIN BLOQUE)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'functional'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MGT20'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [119], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MGT20', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', summary: 'Inicializa el flujo operativo de ZM1MGT20, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-ASIGNA-NUM-MENU', programName: 'ZM1MGT20'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [172], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-ASIGNA-NUM-MENU', nodeType: 'process-step', programName: 'ZM1MGT20', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', summary: 'Orquesta una fase funcional de ZM1MGT20, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MGT20'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [182], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-INFORMACION-ENCABEZADOS', nodeType: 'process-step', programName: 'ZM1MGT20', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', summary: 'Orquesta una fase funcional de ZM1MGT20, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGT20'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [191], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGT20', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', summary: 'Orquesta una fase funcional de ZM1MGT20, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [215], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGT20', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', summary: 'Orquesta una fase funcional de ZM1MGT20, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MGT20'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MGT20', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', summary: 'Orquesta una fase funcional de ZM1MGT20, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MGT20'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MGT20', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', summary: 'Orquesta una fase funcional de ZM1MGT20, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGT20'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [112], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGT20', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', summary: 'Orquesta una fase funcional de ZM1MGT20, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'})
SET n += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [34], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGT20', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', summary: 'Orquesta una fase funcional de ZM1MGT20, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-RUTINA-DE-CONTROL', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [125], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-RUTINA-DE-CONTROL', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0001-INICIO', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [144], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0001-INICIO', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Inicializa el flujo operativo de ZM1MGZ11, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0002-PRIMERA-VEZ', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [155], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0002-PRIMERA-VEZ', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-RECIBE-MAPA1', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [168], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-RECIBE-MAPA1', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-MAPFAIL', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [193], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-MAPFAIL', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8020-TRANSFERENCIA', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [199], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8020-TRANSFERENCIA', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8030-VALIDA-COMANDO', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [205], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8030-VALIDA-COMANDO', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8040-ALINEA-COMANDO', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [219], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8040-ALINEA-COMANDO', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-GENERA-MAPA1', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [228], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-GENERA-MAPA1', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8500-RECICLA-MAPA', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [240], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8500-RECICLA-MAPA', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8510-PREPARA-DATOS-ENCA', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [248], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8510-PREPARA-DATOS-ENCA', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Inicializa el flujo operativo de ZM1MGZ11, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8520-ACTUALIZA-FECHA-HORA', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [255], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8520-ACTUALIZA-FECHA-HORA', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ11, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8530-ELIMINA-ATRIBUTOS-ERROR', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [265], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8530-ELIMINA-ATRIBUTOS-ERROR', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Gestiona contingencias en ZM1MGZ11, concentrando el manejo de error y salida controlada.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [271], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8540-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [32], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [117], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'})
SET n += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [38], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGZ11', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ11, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-PROCESO', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [203], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-PROCESO', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [217], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-PROCESA-ESTADO-0', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2100-PROCESA-ESTADO-1', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [237], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2100-PROCESA-ESTADO-1', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2120-ATRIBUTOS-ESTADO-1', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [282], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2120-ATRIBUTOS-ESTADO-1', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8400-INFORMACION-ENCABEZADOS', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [289], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8400-INFORMACION-ENCABEZADOS', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [301], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8500-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [324], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8600-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [38], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [185], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'})
SET n += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [46], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGZ12', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ12, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [128], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Inicializa el flujo operativo de ZM1MGZ18, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [139], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0010-INICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Inicializa el flujo operativo de ZM1MGZ18, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [146], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-REINICIO-APLICACION', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Inicializa el flujo operativo de ZM1MGZ18, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [171], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [177], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [192], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [215], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [30], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'DATE-COMPILED', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [25], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'DATE-COMPILED', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [37], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'FILE-CONTROL', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [32], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'FILE-CONTROL', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INPUT-OUTPUT', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [31], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INPUT-OUTPUT', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [115], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'})
SET n += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [41], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGZ18', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ18, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-PROCESO', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [906], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-PROCESO', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [932], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-PROCESA-ESTADO-0', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2001-PROCESA-ESTADO-1', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [961], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2001-PROCESA-ESTADO-1', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2002-PROCESA-ESTADO-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1366], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2002-PROCESA-ESTADO-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2003-PROCESA-ESTADO-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1638], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2003-PROCESA-ESTADO-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2101-ATRIBUTOS-ESTADO-1', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1942], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2101-ATRIBUTOS-ESTADO-1', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2102-ATRIBUTOS-ESTADO-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2043], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2102-ATRIBUTOS-ESTADO-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2103-ATRIBUTOS-ESTADO-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2050], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2103-ATRIBUTOS-ESTADO-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3340-SUBMITE-PROCESO-BLQRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2057], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3340-SUBMITE-PROCESO-BLQRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3350-VALIDA-PROC-EN-EJEC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2131], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3350-VALIDA-PROC-EN-EJEC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3360-INS-EVE-PROC-EN-EJEC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2185], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3360-INS-EVE-PROC-EN-EJEC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3360-UPD-PARAM-PRG', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2224], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3360-UPD-PARAM-PRG', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3360-UPD-SW-VALIDA-RIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2280], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3360-UPD-SW-VALIDA-RIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3361-BORRA-EXCEP-X-CTA-ISIN', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2366], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3361-BORRA-EXCEP-X-CTA-ISIN', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3361-OBT-DATOS-PARAM', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2335], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3361-OBT-DATOS-PARAM', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5002-BORRA-QUEUE-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2524], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5002-BORRA-QUEUE-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5002-CLOSE-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2496], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5002-CLOSE-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5002-FETCH-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2432], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5002-FETCH-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5002-OPEN-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2386], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5002-OPEN-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5003-BORRA-QUEUE-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2542], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5003-BORRA-QUEUE-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5003-CLOSE-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2510], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5003-CLOSE-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5003-FETCH-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2464], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5003-FETCH-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5003-OPEN-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2407], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5003-OPEN-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '5009-VALIDA-FECHA', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2560], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '5009-VALIDA-FECHA', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6002-GRABA-REG-QUEUE-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2579], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6002-GRABA-REG-QUEUE-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6003-GRABA-REG-QUEUE-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2593], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6003-GRABA-REG-QUEUE-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6102-INICIALIZA-REG-QUEUE-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2605], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6102-INICIALIZA-REG-QUEUE-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Inicializa el flujo operativo de ZM1MGZ56, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6103-INICIALIZA-REG-QUEUE-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2610], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6103-INICIALIZA-REG-QUEUE-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Inicializa el flujo operativo de ZM1MGZ56, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6202-MODIFICA-VALORES-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2615], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6202-MODIFICA-VALORES-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6203-MODIFICA-VALORES-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2743], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6203-MODIFICA-VALORES-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6203-OBT-FOLIO-CVE-USUARIO', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3318], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6203-OBT-FOLIO-CVE-USUARIO', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6203-VAL-ISIN-EMIS-RIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3392], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6203-VAL-ISIN-EMIS-RIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6203-VAL-PROYECTO-RIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3292], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6203-VAL-PROYECTO-RIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6203-VAL-RFC-RIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3363], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6203-VAL-RFC-RIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6252-REGRABA-REG-QUEUE-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3421], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6252-REGRABA-REG-QUEUE-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6253-REGRABA-REG-QUEUE-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3501], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6253-REGRABA-REG-QUEUE-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6302-DESPROTEGE-PANTALLA-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3666], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6302-DESPROTEGE-PANTALLA-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6302-LIMPIA-PANTALLA-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3587], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6302-LIMPIA-PANTALLA-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6302-PAGINA-ESTADO-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3535], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6302-PAGINA-ESTADO-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6302-PROTEGE-PANTALLA-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3631], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6302-PROTEGE-PANTALLA-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6303-DESPROTEGE-PANTALLA-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3678], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6303-DESPROTEGE-PANTALLA-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6303-LIMPIA-PANTALLA-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3611], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6303-LIMPIA-PANTALLA-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6303-PAGINA-ESTADO-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3560], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6303-PAGINA-ESTADO-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6303-PROTEGE-PANTALLA-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3643], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6303-PROTEGE-PANTALLA-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7702-OBT-EXCEP-X-CTA-ISIN', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3870], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7702-OBT-EXCEP-X-CTA-ISIN', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7702-OBT-NMB-CONOCEDOR', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3892], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7702-OBT-NMB-CONOCEDOR', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7702-OBT-NOMBRE-CUENTA', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3850], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7702-OBT-NOMBRE-CUENTA', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7702-OBTIENE-DATOS-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3701], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7702-OBTIENE-DATOS-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7703-OBTIENE-DATOS-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3767], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7703-OBTIENE-DATOS-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8202-ARMA-PAGINA-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3911], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8202-ARMA-PAGINA-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8203-ARMA-PAGINA-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3961], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8203-ARMA-PAGINA-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8501-ENVIA-PANTALLA-1', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4028], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8501-ENVIA-PANTALLA-1', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8502-ENVIA-PANTALLA-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4074], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8502-ENVIA-PANTALLA-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8503-ENVIA-PANTALLA-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4125], executionOrder: 5800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8503-ENVIA-PANTALLA-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8601-RECIBE-PANTALLA-1', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4238], executionOrder: 5900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8601-RECIBE-PANTALLA-1', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8602-RECIBE-PANTALLA-2', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4254], executionOrder: 6000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8602-RECIBE-PANTALLA-2', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8603-RECIBE-PANTALLA-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4270], executionOrder: 6100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8603-RECIBE-PANTALLA-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9101-LLAMA-ZM9RL005', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4286], executionOrder: 6200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9101-LLAMA-ZM9RL005', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9102-LLAMA-ZM9RL005', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4318], executionOrder: 6300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9102-LLAMA-ZM9RL005', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9203-GRABA-BASE-DATOS-3', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4350], executionOrder: 6400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9203-GRABA-BASE-DATOS-3', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9205-GRABA-PROYECTO-RIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4383], executionOrder: 6500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9205-GRABA-PROYECTO-RIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9206-INS-REG-ZMDT800', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4413], executionOrder: 6600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9206-INS-REG-ZMDT800', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9210-GRABA-NMB-CONOCEDOR', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4469], executionOrder: 6700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9210-GRABA-NMB-CONOCEDOR', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9215-GRABA-CTAS-ASOCIADAS', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4572], executionOrder: 7000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9215-GRABA-CTAS-ASOCIADAS', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9215-GRABA-TIT-COTIT-RFC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4523], executionOrder: 6800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9215-GRABA-TIT-COTIT-RFC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9215-OBT-DATOS-TIT', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4541], executionOrder: 6900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9215-OBT-DATOS-TIT', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9217-OBT-DATOS-COTIT', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4593], executionOrder: 7100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9217-OBT-DATOS-COTIT', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9220-OBT-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4625], executionOrder: 7200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9220-OBT-CUENTAS-ASOC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9221-ABRE-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4637], executionOrder: 7300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9221-ABRE-C-CUENTAS-ASOC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9222-FETCH-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4654], executionOrder: 7400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9222-FETCH-C-CUENTAS-ASOC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9223-CLOSE-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4676], executionOrder: 7500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9223-CLOSE-C-CUENTAS-ASOC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9225-PROCESA-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4690], executionOrder: 7600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9225-PROCESA-C-CUENTAS-ASOC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9226-GRABA-REG-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4734], executionOrder: 7700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9226-GRABA-REG-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9226-VAL-REG-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4801], executionOrder: 7800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9226-VAL-REG-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9227-INS-REG-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4896], executionOrder: 7900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9227-INS-REG-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9227-UPD-REG-ZMDTRIC', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4958], executionOrder: 8000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9227-UPD-REG-ZMDTRIC', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5010], executionOrder: 8100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9230-GRABA-EXCEP-CTA-ISIN', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MGZ56, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [33], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [886], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'US-REG', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2061], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'US-REG', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'})
SET n += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [41], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MGZ56', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', summary: 'Orquesta una fase funcional de ZM1MGZ56, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [158], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Inicializa el flujo operativo de ZM1MH554, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0100-TRANS', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [214], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0100-TRANS', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Orquesta una fase funcional de ZM1MH554, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3000-VALIDA-OPCION', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [227], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3000-VALIDA-OPCION', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Orquesta una fase funcional de ZM1MH554, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8300-ELIMINA-ATRIBUTOS', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [240], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8300-ELIMINA-ATRIBUTOS', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Orquesta una fase funcional de ZM1MH554, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8400-INFORMACION-ENCABEZADOS', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [249], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8400-INFORMACION-ENCABEZADOS', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Orquesta una fase funcional de ZM1MH554, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [260], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8500-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Orquesta una fase funcional de ZM1MH554, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8550-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [279], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8550-ENVIA-PANTALLA-INICIAL', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Inicializa el flujo operativo de ZM1MH554, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [297], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8600-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Orquesta una fase funcional de ZM1MH554, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [40], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Orquesta una fase funcional de ZM1MH554, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [145], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Orquesta una fase funcional de ZM1MH554, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'})
SET n += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [47], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MH554', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', summary: 'Orquesta una fase funcional de ZM1MH554, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MH556'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [128], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MH556', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', summary: 'Inicializa el flujo operativo de ZM1MH556, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH556'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [155], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MH556', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', summary: 'Orquesta una fase funcional de ZM1MH556, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MH556'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [161], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1MH556', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', summary: 'Orquesta una fase funcional de ZM1MH556, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH556'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [180], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH556', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', summary: 'Orquesta una fase funcional de ZM1MH556, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH556'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [195], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH556', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', summary: 'Orquesta una fase funcional de ZM1MH556, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [216], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MH556', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', summary: 'Orquesta una fase funcional de ZM1MH556, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MH556'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MH556', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', summary: 'Orquesta una fase funcional de ZM1MH556, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MH556'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [121], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MH556', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', summary: 'Orquesta una fase funcional de ZM1MH556, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'})
SET n += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [35], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MH556', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', summary: 'Orquesta una fase funcional de ZM1MH556, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [121], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Inicializa el flujo operativo de ZM1MH565, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [154], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Orquesta una fase funcional de ZM1MH565, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [160], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Orquesta una fase funcional de ZM1MH565, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [176], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Orquesta una fase funcional de ZM1MH565, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [191], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Orquesta una fase funcional de ZM1MH565, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [212], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Orquesta una fase funcional de ZM1MH565, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [4], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Orquesta una fase funcional de ZM1MH565, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [6], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Orquesta una fase funcional de ZM1MH565, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [114], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Orquesta una fase funcional de ZM1MH565, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'})
SET n += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [29], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MH565', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', summary: 'Orquesta una fase funcional de ZM1MH565, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-INICIO', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [156], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-INICIO', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Inicializa el flujo operativo de ZM1MH566, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [188], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8000-TRANSFIERE', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Orquesta una fase funcional de ZM1MH566, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [194], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8010-PF2-PF3', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Orquesta una fase funcional de ZM1MH566, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [210], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Orquesta una fase funcional de ZM1MH566, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [225], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-ENVIA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Orquesta una fase funcional de ZM1MH566, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [246], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8120-ENCABEZADO', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Orquesta una fase funcional de ZM1MH566, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'AUTHOR', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [5], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'AUTHOR', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Orquesta una fase funcional de ZM1MH566, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'INSTALLATION', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [7], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'INSTALLATION', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Orquesta una fase funcional de ZM1MH566, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [149], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Orquesta una fase funcional de ZM1MH566, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'})
SET n += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [48], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MH566', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', summary: 'Orquesta una fase funcional de ZM1MH566, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0000-CONTROL', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [247], executionOrder: 400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0000-CONTROL', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0200-CLEAR', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [268], executionOrder: 500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0200-CLEAR', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '0300-REFRES-INICIAL', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [281], executionOrder: 600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '0300-REFRES-INICIAL', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Inicializa el flujo operativo de ZM1MH940, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '1000-INICIALIZA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [302], executionOrder: 700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '1000-INICIALIZA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Inicializa el flujo operativo de ZM1MH940, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2000-ESTADO-01', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [326], executionOrder: 800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2000-ESTADO-01', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2060-EXI-CPTO-EMPRE', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [485], executionOrder: 1000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2060-EXI-CPTO-EMPRE', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2100-VERIFICA-LLAVE', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [364], executionOrder: 900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2100-VERIFICA-LLAVE', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2110-SELECT-CONCEPT', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [511], executionOrder: 1100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2110-SELECT-CONCEPT', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2120-VALIDA-ITIPOVAL', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [539], executionOrder: 1200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2120-VALIDA-ITIPOVAL', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2121-SELECT-PARAM', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [568], executionOrder: 1300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2121-SELECT-PARAM', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2130-VALIDA-EXISTE-APLIDER', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [590], executionOrder: 1400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2130-VALIDA-EXISTE-APLIDER', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2131-SELECT-APLIDER', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [629], executionOrder: 1500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2131-SELECT-APLIDER', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2140-VERIF-DATOS-CLASIF-1', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [651], executionOrder: 1600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2140-VERIF-DATOS-CLASIF-1', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2141-SELECT-PROMOT', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [698], executionOrder: 1700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2141-SELECT-PROMOT', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2150-VERIF-DATOS-CLASIF-2', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [719], executionOrder: 1800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2150-VERIF-DATOS-CLASIF-2', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '2151-SELECT-CUENTA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [753], executionOrder: 1900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '2151-SELECT-CUENTA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3000-LLENADO-DE-MAPA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [772], executionOrder: 2000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3000-LLENADO-DE-MAPA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3100-INICIALIZA-TABLA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [778], executionOrder: 2100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3100-INICIALIZA-TABLA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Inicializa el flujo operativo de ZM1MH940, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3200-GUARDA-CAMPOS-MAPA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [806], executionOrder: 2200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3200-GUARDA-CAMPOS-MAPA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3300-CONSTRUYE-PANTALLA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [815], executionOrder: 2300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3300-CONSTRUYE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3310-MAPA-CLASIF-1', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [835], executionOrder: 2400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3310-MAPA-CLASIF-1', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3311-CUSOR-SUSCRIP', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [846], executionOrder: 2500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3311-CUSOR-SUSCRIP', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3313-10-MUEVE-CAMPOS', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [908], executionOrder: 2700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3313-10-MUEVE-CAMPOS', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3313-20-EDITA-CUENTA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [922], executionOrder: 2800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3313-20-EDITA-CUENTA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3313-LLENA-PANTALLA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [876], executionOrder: 2600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3313-LLENA-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3320-MAPA-CLASIF-2', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [931], executionOrder: 2900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3320-MAPA-CLASIF-2', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3321-CURSOR-SUSCRIP', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [943], executionOrder: 3000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3321-CURSOR-SUSCRIP', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3330-MAPA-CLASIF-3', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [972], executionOrder: 3100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3330-MAPA-CLASIF-3', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3331-CURSOR-SUSCRIP', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [983], executionOrder: 3200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3331-CURSOR-SUSCRIP', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3500-LEE-SUSCRIP', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1012], executionOrder: 3300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3500-LEE-SUSCRIP', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Ejecuta lectura/consulta de datos requeridos por ZM1MH940 y deja resultados listos para el siguiente tramo.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '3600-CLOSE-SUSCRIP', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1050], executionOrder: 3400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '3600-CLOSE-SUSCRIP', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4000-ESTADO-02', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1070], executionOrder: 3500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4000-ESTADO-02', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4100-MUEVE-CAMPOS-LEI', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1131], executionOrder: 3600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4100-MUEVE-CAMPOS-LEI', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4200-VERIFICA-CAMBIO-LLAVE', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1140], executionOrder: 3700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4200-VERIFICA-CAMBIO-LLAVE', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4300-VALIDA-MAPA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1181], executionOrder: 3800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4300-VALIDA-MAPA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4400-ACTUALIZA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1198], executionOrder: 3900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4400-ACTUALIZA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Persiste actualizaciones de negocio en ZM1MH940, aplicando reglas de escritura y control de estado.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4410-ATRAPA-SUSCRIP', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1246], executionOrder: 4000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4410-ATRAPA-SUSCRIP', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4420-UPDATE-SUSCRIP', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1286], executionOrder: 4100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4420-UPDATE-SUSCRIP', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4430-CLOSE-SUSCRIP', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1310], executionOrder: 4200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4430-CLOSE-SUSCRIP', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4500-PAGINA-ATRAS', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1317], executionOrder: 4300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4500-PAGINA-ATRAS', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '4600-PAGINA-ADELANTE', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1338], executionOrder: 4400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '4600-PAGINA-ADELANTE', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '6100-ATRIBUTOS-INICIAL', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1377], executionOrder: 4500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '6100-ATRIBUTOS-INICIAL', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Inicializa el flujo operativo de ZM1MH940, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7000-PREPARA-ENCAB-INICIAL', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1406], executionOrder: 4600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7000-PREPARA-ENCAB-INICIAL', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Inicializa el flujo operativo de ZM1MH940, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7100-PRESENTA-EDO-01', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1418], executionOrder: 4800, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7100-PRESENTA-EDO-01', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '7200-PRESENTA-EDO-02', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1426], executionOrder: 4900, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '7200-PRESENTA-EDO-02', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8100-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1434], executionOrder: 5000, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8100-ENVIA-PANTALLA-INICIAL', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Inicializa el flujo operativo de ZM1MH940, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8110-G-CAMPOS-INICIAL', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1458], executionOrder: 5100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8110-G-CAMPOS-INICIAL', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Inicializa el flujo operativo de ZM1MH940, preparando contexto y validaciones de arranque.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8200-RECIBE-PANTALLA', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1479], executionOrder: 5200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8200-RECIBE-PANTALLA', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8500-JUSTIFICA-STRINGS', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1486], executionOrder: 5300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8500-JUSTIFICA-STRINGS', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8510-CAMPOS-NUMERICOS-EDO1', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1521], executionOrder: 5400, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8510-CAMPOS-NUMERICOS-EDO1', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '8700-JUSTIFICA-STRINGS-03', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1675], executionOrder: 5500, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '8700-JUSTIFICA-STRINGS-03', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9300-RETURN-TRANSID', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1682], executionOrder: 5600, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9300-RETURN-TRANSID', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1690], executionOrder: 5700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: '9400-RETURN', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [42], executionOrder: 100, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'CONFIGURATION', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'LINKAGE', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [237], executionOrder: 300, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'LINKAGE', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'MUSERO', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1416], executionOrder: 4700, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'MUSERO', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'})
SET n += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [49], executionOrder: 200, executionPhase: 'PROCESSING', ingestion: 'auto', layer: 'execution', name: 'WORKING-STORAGE', nodeType: 'process-step', programName: 'ZM1MH940', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', summary: 'Orquesta una fase funcional de ZM1MH940, encadenando validaciones y transformaciones del proceso principal.', viewTag: 'execution'};

MERGE (n:Program {name: 'ZM1MGT20'})
SET n += {description: 'Programa COBOL que presentar menu de promocion: sistema de apoyo para el diagnostico patrimonial rutinas: programa: zm1mgt20 version x.xx - dd/mmm/aaaa modific.: xxx constantes de teclado (dfhaid) constantes de atributos variables del mapa variables de rutinas generales variables para obtener fechas vxt variables para obtener mensajes de error (wm-reg) variables para obtener userid, fecha y hora (fh-reg) variables para alinear string a la izquierda variables para rutina de centrado de texto variables para rutina de nombre de la empresa variables para rutina de transferencia (mm-llama-menu) variables para rutina de aborta (ab-reg) variables de comunicacion (wc-commarea). Pertenece a: BBVA-BANCOMER, S.A. DE C.V. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MGT20\'. 03 W000-OPC PIC X(03) VALUE \'8\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 03 W000-TIME PIC X(08) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'1\', \'2\', \'3\'. COPY DFHAID. COPY DFHBMSCA. COPY ZMGT201. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. COPY ZMWSC014. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-INVALIDA-TRANSFER PIC 9(04) VALUE 584. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. 05 WC-OPCION PIC X(01) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700)..', ingestion: 'auto', layer: 'program', name: 'ZM1MGT20', nodeType: 'program', objective: 'PRESENTAR MENU DE PROMOCION: SISTEMA DE APOYO PARA EL DIAGNOSTICO PATRIMONIAL RUTINAS: PROGRAMA: ZM1MGT20 VERSION X.XX - DD/MMM/AAAA MODIFIC.: XXX CONSTANTES DE TECLADO (DFHAID) CONSTANTES DE ATRIBUTOS VARIABLES DEL MAPA VARIABLES DE RUTINAS GENERALES VARIABLES PARA OBTENER FECHAS VXT VARIABLES PARA OBTENER MENSAJES DE ERROR (WM-REG) VARIABLES PARA OBTENER USERID, FECHA Y HORA (FH-REG) VARIABLES PARA ALINEAR STRING A LA IZQUIERDA VARIABLES PARA RUTINA DE CENTRADO DE TEXTO VARIABLES PARA RUTINA DE NOMBRE DE LA EMPRESA VARIABLES PARA RUTINA DE TRANSFERENCIA (MM-LLAMA-MENU) VARIABLES PARA RUTINA DE ABORTA (AB-REG) VARIABLES DE COMUNICACION (WC-COMMAREA)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', system: 'BBVA-BANCOMER, S.A. DE C.V. ENVIRONMENT DIVISION. DATA DIVISION. WORKING-STORAGE SECTION. 01 W000-VARS. 03 W000-PROG PIC X(08) VALUE \'ZM1MGT20\'. 03 W000-OPC PIC X(03) VALUE \'8\'. 03 W000-RESP PIC S9(08) COMP VALUE 0. 03 W000-CURSOR PIC S9(04) COMP VALUE -1. 03 W000-TIME PIC X(08) VALUE SPACES. 01 W000-OPCION PIC X(03) VALUE SPACES. 88 W000-OPCION-VALIDA VALUE \'1\', \'2\', \'3\'. COPY DFHAID. COPY DFHBMSCA. COPY ZMGT201. COPY ZMWSC010. COPY ZMWSC011. COPY ZMWSC012. COPY ZMWSC013. COPY ZMWSC014. 01 CE-CENTRADO. COPY ZMWSR009. 01 EM-EMPRESA. COPY ZMWSZ403. 01 TR-TRANSFERENCIA. COPY ZMWSR432. 01 AB-ABORTA. COPY ZMWSG532. 01 WM-MENSAJES. 03 WM-TECLA-INVALIDA PIC 9(04) VALUE 109. 03 WM-OPCION-INCORRECTA PIC 9(04) VALUE 110. 03 WM-INVALIDA-TRANSFER PIC 9(04) VALUE 584. 03 WM-SELECCIONE-OPCION PIC 9(04) VALUE 1095. COPY ZMWCOM11. 05 WC-CODIGO PIC 9(04) VALUE 0. 05 WC-COMANDO PIC X(10) VALUE SPACES. 05 WC-OPCION PIC X(01) VALUE SPACES. LINKAGE SECTION. 01 DFHCOMMAREA. 05 L000-COMMAREA PIC X(700).', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGZ11'})
SET n += {description: 'Programa COBOL que enviar un mensaje a pantalla de opción desha- bilitada. opcion: sin opcion. transaccion: zz11 rutinas: zm9cr403 (obtener nombre de compa#ia) zm8cr980 (transaccion de aborta) zm9cr432 (transferencia-navegacion) modifico: nnnnnnnnn pppppppppppp mmmmmmmmm (xxxxxxx) fecha: mmmmmmmmmmmm dd, ssaa. asunto: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx. finmod. Pertenece a: PROGRAM-ID. ZM1MGZ11..', ingestion: 'auto', layer: 'program', name: 'ZM1MGZ11', nodeType: 'program', objective: 'ENVIAR UN MENSAJE A PANTALLA DE OPCIóN DESHA- BILITADA. OPCION: SIN OPCION. TRANSACCION: ZZ11 RUTINAS: ZM9CR403 (OBTENER NOMBRE DE COMPA#IA) ZM8CR980 (TRANSACCION DE ABORTA) ZM9CR432 (TRANSFERENCIA-NAVEGACION) MODIFICO: NNNNNNNNN PPPPPPPPPPPP MMMMMMMMM (XXXXXXX) FECHA: MMMMMMMMMMMM DD, SSAA. ASUNTO: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX. FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', system: 'PROGRAM-ID. ZM1MGZ11.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGZ12'})
SET n += {description: 'Programa COBOL que presentar el menu de control de estados de cuenta opcion: "344" c/db2 transaccion: zz56 rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de compania) zm9cr432 (rutina de transferencia) zm9crvxt (fechas vxt) transaccion de aborta: z532 log de modificacion marca. autor. fecha. descripcion. japm-i j.antonio pichardo dic-2011 agrega la opcion \'i01\' japm-f. Pertenece a: PROGRAM-ID. ZM1MGZ12..', ingestion: 'auto', layer: 'program', name: 'ZM1MGZ12', nodeType: 'program', objective: 'PRESENTAR EL MENU DE CONTROL DE ESTADOS DE CUENTA OPCION: "344" C/DB2 TRANSACCION: ZZ56 RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE COMPANIA) ZM9CR432 (RUTINA DE TRANSFERENCIA) ZM9CRVXT (FECHAS VXT) TRANSACCION DE ABORTA: Z532 LOG DE MODIFICACION MARCA. AUTOR. FECHA. DESCRIPCION. JAPM-I J.ANTONIO PICHARDO DIC-2011 AGREGA LA OPCION \'I01\' JAPM-F', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', system: 'PROGRAM-ID. ZM1MGZ12.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGZ18'})
SET n += {description: 'Programa COBOL que ejecuta procesos. Pertenece a: PROGRAM-ID. ZM1MGZ18..', ingestion: 'auto', layer: 'program', name: 'ZM1MGZ18', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', system: 'PROGRAM-ID. ZM1MGZ18.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MGZ56'})
SET n += {description: 'Programa COBOL que mantenimiento de parametros de factset opcion: "230" c/db2 transaccion: zz56 rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de compania) zm9cr432 (rutina de transferencia) zm9crvxt (fechas vxt) transaccion de aborta: z532 log de modificacion. Pertenece a: PROGRAM-ID. ZM1MGZ56..', ingestion: 'auto', layer: 'program', name: 'ZM1MGZ56', nodeType: 'program', objective: 'MANTENIMIENTO DE PARAMETROS DE FACTSET OPCION: "230" C/DB2 TRANSACCION: ZZ56 RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE COMPANIA) ZM9CR432 (RUTINA DE TRANSFERENCIA) ZM9CRVXT (FECHAS VXT) TRANSACCION DE ABORTA: Z532 LOG DE MODIFICACION', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', system: 'PROGRAM-ID. ZM1MGZ56.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MH554'})
SET n += {description: 'Programa COBOL que presentar el menu principal de valores. opcion: "290" transaccion: z554 rutinas: zm8cr009 (centra textos) zm9cr403 (obtener nombre de empresa) zm9cr432 (transferencia-navegacion-) modifico: adriana vargas cardenas (avc) / extec fecha: sept. 24, 2002. asunto: 1) se modifica "opcion-valida" de nivel 88 para que acepte las opciones nuevas del menu. 2) deja solo una rutina de send map modifico: jean piza aviles (pjp) / softtek fecha: junio 24, 2002. asunto: se modifica "opcion-valida" de nivel 88 para que acepte la opcion 926 como valida finmod. Pertenece a: PROGRAM-ID. ZM1MH554..', ingestion: 'auto', layer: 'program', name: 'ZM1MH554', nodeType: 'program', objective: 'PRESENTAR EL MENU PRINCIPAL DE VALORES. OPCION: "290" TRANSACCION: Z554 RUTINAS: ZM8CR009 (CENTRA TEXTOS) ZM9CR403 (OBTENER NOMBRE DE EMPRESA) ZM9CR432 (TRANSFERENCIA-NAVEGACION-) MODIFICO: ADRIANA VARGAS CARDENAS (AVC) / EXTEC FECHA: SEPT. 24, 2002. ASUNTO: 1) SE MODIFICA "OPCION-VALIDA" DE NIVEL 88 PARA QUE ACEPTE LAS OPCIONES NUEVAS DEL MENU. 2) DEJA SOLO UNA RUTINA DE SEND MAP MODIFICO: JEAN PIZA AVILES (PJP) / SOFTTEK FECHA: JUNIO 24, 2002. ASUNTO: SE MODIFICA "OPCION-VALIDA" DE NIVEL 88 PARA QUE ACEPTE LA OPCION 926 COMO VALIDA FINMOD', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', system: 'PROGRAM-ID. ZM1MH554.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MH556'})
SET n += {description: 'Programa COBOL que presentar el menu de mesa de capitales opcion: 150 transaccion: z556 fecha modificacion : 2004-09-14 realizo : ernesto manuel cuautle martinez eliminacion de 4 opciones del menú de mercado de capitales. nota : este programa por ser un menú, no lleva rollback ni commit ya que no afecta tablas de base de datos.. Pertenece a: PROGRAM-ID. ZM1MH556..', ingestion: 'auto', layer: 'program', name: 'ZM1MH556', nodeType: 'program', objective: 'PRESENTAR EL MENU DE MESA DE CAPITALES OPCION: 150 TRANSACCION: Z556 FECHA MODIFICACION : 2004-09-14 REALIZO : ERNESTO MANUEL CUAUTLE MARTINEZ ELIMINACION DE 4 OPCIONES DEL MENú DE MERCADO DE CAPITALES. NOTA : ESTE PROGRAMA POR SER UN MENú, NO LLEVA ROLLBACK NI COMMIT YA QUE NO AFECTA TABLAS DE BASE DE DATOS.', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', system: 'PROGRAM-ID. ZM1MH556.', viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MH565'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MH565', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MH566'})
SET n += {description: 'Programa COBOL que ejecuta procesos.', ingestion: 'auto', layer: 'program', name: 'ZM1MH566', nodeType: 'program', objective: null, reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', system: null, viewTag: 'cobol-program'};

MERGE (n:Program {name: 'ZM1MH940'})
SET n += {description: 'Programa COBOL que registro de cuentas para amortizacion de acciones opcion: "822" transaccion: z940 modificacion. agosto 2004 llamados a los encabezados dependiendo el tipo de empresa que tenga asignada el usuario. cada empresa que opera. llamados a las rutinas dinamicamente. jfe. getronics modifico: enrique fernandez chapou fecha: junio 2025 asunto: incremento folio concept marca: sdatool-41254-aso-ini (inicio bloque) sdatool-41254-aso-fin (fin bloque). Pertenece a: PROGRAM-ID. ZM1MH940..', ingestion: 'auto', layer: 'program', name: 'ZM1MH940', nodeType: 'program', objective: 'REGISTRO DE CUENTAS PARA AMORTIZACION DE ACCIONES OPCION: "822" TRANSACCION: Z940 MODIFICACION. AGOSTO 2004 LLAMADOS A LOS ENCABEZADOS DEPENDIENDO EL TIPO DE EMPRESA QUE TENGA ASIGNADA EL USUARIO. CADA EMPRESA QUE OPERA. LLAMADOS A LAS RUTINAS DINAMICAMENTE. JFE. GETRONICS MODIFICO: ENRIQUE FERNANDEZ CHAPOU FECHA: JUNIO 2025 ASUNTO: INCREMENTO FOLIO CONCEPT MARCA: SDATOOL-41254-ASO-INI (INICIO BLOQUE) SDATOOL-41254-ASO-FIN (FIN BLOQUE)', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', system: 'PROGRAM-ID. ZM1MH940.', viewTag: 'cobol-program'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGT20', name: 'ZM1MGT20_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGT20 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGT20', ingestion: 'auto', layer: 'functional', name: 'ZM1MGT20_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGT20.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ11', name: 'ZM1MGZ11_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGZ11 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGZ11', ingestion: 'auto', layer: 'functional', name: 'ZM1MGZ11_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ11.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ12', name: 'ZM1MGZ12_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGZ12 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGZ12', ingestion: 'auto', layer: 'functional', name: 'ZM1MGZ12_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ12.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ18', name: 'ZM1MGZ18_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGZ18 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGZ18', ingestion: 'auto', layer: 'functional', name: 'ZM1MGZ18_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ18.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ56', name: 'ZM1MGZ56_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MGZ56 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MGZ56', ingestion: 'auto', layer: 'functional', name: 'ZM1MGZ56_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MGZ56.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH554', name: 'ZM1MH554_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MH554 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MH554', ingestion: 'auto', layer: 'functional', name: 'ZM1MH554_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH554.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH556', name: 'ZM1MH556_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MH556 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MH556', ingestion: 'auto', layer: 'functional', name: 'ZM1MH556_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH556.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH565', name: 'ZM1MH565_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MH565 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MH565', ingestion: 'auto', layer: 'functional', name: 'ZM1MH565_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH565.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH566', name: 'ZM1MH566_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MH566 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MH566', ingestion: 'auto', layer: 'functional', name: 'ZM1MH566_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH566.cbl', viewTag: 'functional'};

MERGE (n:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH940', name: 'ZM1MH940_PROCESSING'})
SET n += {description: 'Sub-funcionalidad de ZM1MH940 para fase PROCESSING.', functionalityName: 'FUNCTIONALITY_ZM1MH940', ingestion: 'auto', layer: 'functional', name: 'ZM1MH940_PROCESSING', nodeType: 'sub-business-function', reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940', sourceFile: 'src/ZM1MH940.cbl', viewTag: 'functional'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MGT20'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Paragraph {name: '2000-ASIGNA-NUM-MENU', programName: 'ZM1MGT20'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MGT20'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [182], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGT20'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MGT20'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MGT20'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGT20'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [112], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [34], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '0000-RUTINA-DE-CONTROL', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '0001-INICIO', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [144], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '0002-PRIMERA-VEZ', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '1000-RECIBE-MAPA1', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [168], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8010-MAPFAIL', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [193], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8020-TRANSFERENCIA', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8030-VALIDA-COMANDO', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8040-ALINEA-COMANDO', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8100-GENERA-MAPA1', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [228], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8500-RECICLA-MAPA', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8510-PREPARA-DATOS-ENCA', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [248], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8520-ACTUALIZA-FECHA-HORA', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8530-ELIMINA-ATRIBUTOS-ERROR', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: '1000-PROCESO', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [203], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: '2100-PROCESA-ESTADO-1', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: '2120-ATRIBUTOS-ESTADO-1', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: '8400-INFORMACION-ENCABEZADOS', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [289], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [301], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [38], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [46], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: '0100-REINICIO-APLICACION', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [171], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [177], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [192], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [30], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: 'DATE-COMPILED', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [25], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: 'FILE', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [37], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: 'FILE-CONTROL', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [32], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: 'INPUT-OUTPUT', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [31], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [41], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '1000-PROCESO', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [906], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [932], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '2001-PROCESA-ESTADO-1', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [961], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '2002-PROCESA-ESTADO-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '2003-PROCESA-ESTADO-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1638], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '2101-ATRIBUTOS-ESTADO-1', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1942], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '2102-ATRIBUTOS-ESTADO-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2043], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '2103-ATRIBUTOS-ESTADO-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2050], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '3340-SUBMITE-PROCESO-BLQRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2057], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '3350-VALIDA-PROC-EN-EJEC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '3360-INS-EVE-PROC-EN-EJEC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '3360-UPD-PARAM-PRG', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '3360-UPD-SW-VALIDA-RIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '3361-BORRA-EXCEP-X-CTA-ISIN', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2366], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '3361-OBT-DATOS-PARAM', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '5002-BORRA-QUEUE-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '5002-CLOSE-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2496], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '5002-FETCH-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '5002-OPEN-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2386], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '5003-BORRA-QUEUE-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2542], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '5003-CLOSE-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2510], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '5003-FETCH-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2464], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '5003-OPEN-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2407], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '5009-VALIDA-FECHA', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6002-GRABA-REG-QUEUE-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2579], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6003-GRABA-REG-QUEUE-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2593], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6102-INICIALIZA-REG-QUEUE-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2605], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6103-INICIALIZA-REG-QUEUE-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2610], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6202-MODIFICA-VALORES-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2615], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6203-MODIFICA-VALORES-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2743], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6203-OBT-FOLIO-CVE-USUARIO', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6203-VAL-ISIN-EMIS-RIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3392], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6203-VAL-PROYECTO-RIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6203-VAL-RFC-RIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3363], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6252-REGRABA-REG-QUEUE-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3421], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6253-REGRABA-REG-QUEUE-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3501], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6302-DESPROTEGE-PANTALLA-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3666], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6302-LIMPIA-PANTALLA-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6302-PAGINA-ESTADO-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6302-PROTEGE-PANTALLA-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3631], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6303-DESPROTEGE-PANTALLA-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3678], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6303-LIMPIA-PANTALLA-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3611], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6303-PAGINA-ESTADO-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3560], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '6303-PROTEGE-PANTALLA-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3643], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '7702-OBT-EXCEP-X-CTA-ISIN', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3870], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '7702-OBT-NMB-CONOCEDOR', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3892], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '7702-OBT-NOMBRE-CUENTA', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3850], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '7702-OBTIENE-DATOS-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3701], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '7703-OBTIENE-DATOS-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3767], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '8202-ARMA-PAGINA-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3911], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '8203-ARMA-PAGINA-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3961], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '8501-ENVIA-PANTALLA-1', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4028], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '8502-ENVIA-PANTALLA-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4074], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '8503-ENVIA-PANTALLA-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '8601-RECIBE-PANTALLA-1', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '8602-RECIBE-PANTALLA-2', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4254], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '8603-RECIBE-PANTALLA-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4270], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9101-LLAMA-ZM9RL005', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9102-LLAMA-ZM9RL005', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4318], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9203-GRABA-BASE-DATOS-3', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4350], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9205-GRABA-PROYECTO-RIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4383], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9206-INS-REG-ZMDT800', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4413], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9210-GRABA-NMB-CONOCEDOR', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4469], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9215-GRABA-CTAS-ASOCIADAS', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4572], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9215-GRABA-TIT-COTIT-RFC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4523], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9215-OBT-DATOS-TIT', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4541], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9217-OBT-DATOS-COTIT', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4593], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9220-OBT-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4625], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9221-ABRE-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4637], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9222-FETCH-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4654], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9223-CLOSE-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4676], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9225-PROCESA-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9226-GRABA-REG-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4734], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9226-VAL-REG-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4801], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9227-INS-REG-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4896], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9227-UPD-REG-ZMDTRIC', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4958], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5010], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [886], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: 'US-REG', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2061], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [41], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: '0100-TRANS', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: '3000-VALIDA-OPCION', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: '8300-ELIMINA-ATRIBUTOS', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [240], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: '8400-INFORMACION-ENCABEZADOS', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: '8550-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [40], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [47], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MH556'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH556'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [155], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MH556'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [161], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH556'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [180], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH556'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [195], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MH556'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MH556'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [35], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [121], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [154], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [4], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [6], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [29], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: '0000-INICIO', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: '8010-PF2-PF3', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: 'AUTHOR', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [5], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: 'INSTALLATION', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [7], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [149], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '0000-CONTROL', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '0200-CLEAR', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '0300-REFRES-INICIAL', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '1000-INICIALIZA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [302], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2000-ESTADO-01', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [326], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2060-EXI-CPTO-EMPRE', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [485], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2100-VERIFICA-LLAVE', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2110-SELECT-CONCEPT', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [511], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2120-VALIDA-ITIPOVAL', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [539], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2121-SELECT-PARAM', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [568], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2130-VALIDA-EXISTE-APLIDER', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [590], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2131-SELECT-APLIDER', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [629], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2140-VERIF-DATOS-CLASIF-1', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [651], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2141-SELECT-PROMOT', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [698], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2150-VERIF-DATOS-CLASIF-2', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [719], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '2151-SELECT-CUENTA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [753], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3000-LLENADO-DE-MAPA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [772], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3100-INICIALIZA-TABLA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [778], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3200-GUARDA-CAMPOS-MAPA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [806], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3300-CONSTRUYE-PANTALLA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [815], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3310-MAPA-CLASIF-1', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [835], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3311-CUSOR-SUSCRIP', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [846], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3313-10-MUEVE-CAMPOS', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [908], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3313-20-EDITA-CUENTA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [922], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3313-LLENA-PANTALLA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [876], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3320-MAPA-CLASIF-2', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [931], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3321-CURSOR-SUSCRIP', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [943], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3330-MAPA-CLASIF-3', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [972], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3331-CURSOR-SUSCRIP', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [983], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3500-LEE-SUSCRIP', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1012], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '3600-CLOSE-SUSCRIP', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1050], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4000-ESTADO-02', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1070], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4100-MUEVE-CAMPOS-LEI', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4200-VERIFICA-CAMBIO-LLAVE', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4300-VALIDA-MAPA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1181], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4400-ACTUALIZA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4410-ATRAPA-SUSCRIP', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4420-UPDATE-SUSCRIP', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1286], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4430-CLOSE-SUSCRIP', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1310], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4500-PAGINA-ATRAS', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1317], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '4600-PAGINA-ADELANTE', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1338], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '6100-ATRIBUTOS-INICIAL', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1377], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '7000-PREPARA-ENCAB-INICIAL', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1406], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '7100-PRESENTA-EDO-01', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1418], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '7200-PRESENTA-EDO-02', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1426], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '8100-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1434], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '8110-G-CAMPOS-INICIAL', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1458], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '8200-RECIBE-PANTALLA', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1479], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '8500-JUSTIFICA-STRINGS', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1486], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '8510-CAMPOS-NUMERICOS-EDO1', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1521], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '8700-JUSTIFICA-STRINGS-03', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1675], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '9300-RETURN-TRANSID', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1682], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: 'CONFIGURATION', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [42], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: 'LINKAGE', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: 'MUSERO', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1416], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'})
MERGE (a)-[r:HAS_PARAGRAPH]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [49], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGT20'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGT20', name: 'ZM1MGT20_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGZ11'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ11', name: 'ZM1MGZ11_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGZ12'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ12', name: 'ZM1MGZ12_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGZ18'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ18', name: 'ZM1MGZ18_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MGZ56'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ56', name: 'ZM1MGZ56_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MH554'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH554', name: 'ZM1MH554_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MH556'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH556', name: 'ZM1MH556_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MH565'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH565', name: 'ZM1MH565_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MH566'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH566', name: 'ZM1MH566_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Functionality {name: 'FUNCTIONALITY_ZM1MH940'}), (b:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH940', name: 'ZM1MH940_PROCESSING'})
MERGE (a)-[r:HAS_SUBFUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [133, 142, 151, 160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [226, 271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMGT201'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-RUTINA-DE-CONTROL', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0001-INICIO', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8020-TRANSFERENCIA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8040-ALINEA-COMANDO', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-GENERA-MAPA1', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-RECICLA-MAPA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8520-ACTUALIZA-FECHA-HORA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [278, 314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMGZ111'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2100-PROCESA-ESTADO-1', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [246, 255, 264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8400-INFORMACION-ENCABEZADOS', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [333, 404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMGZ121'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSR468'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [218, 250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMGM181'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [936, 944], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [941], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2001-PROCESA-ESTADO-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBP487'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [970, 1141, 1237, 1292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2001-PROCESA-ESTADO-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1206, 1216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2002-PROCESA-ESTADO-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2003-PROCESA-ESTADO-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2101-ATRIBUTOS-ESTADO-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1973], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3350-VALIDA-PROC-EN-EJEC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3350-VALIDA-PROC-EN-EJEC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3360-INS-EVE-PROC-EN-EJEC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3360-UPD-SW-VALIDA-RIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5002-BORRA-QUEUE-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5002-CLOSE-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5002-FETCH-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2453], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5002-OPEN-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5003-BORRA-QUEUE-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2553], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5003-CLOSE-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5003-FETCH-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2485], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5003-OPEN-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '6202-MODIFICA-VALORES-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2624, 2644, 2653, 2662, 2677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '6203-MODIFICA-VALORES-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBP487'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2891, 2920, 2949, 2983, 3012, 3041], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '6203-MODIFICA-VALORES-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2751, 2771, 2790, 2829, 2848, 2882, 2911, 2940, 2974, 3003, 3032], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8501-ENVIA-PANTALLA-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4054], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8501-ENVIA-PANTALLA-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4029], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8501-ENVIA-PANTALLA-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4069], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8502-ENVIA-PANTALLA-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8502-ENVIA-PANTALLA-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4075], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8502-ENVIA-PANTALLA-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8503-ENVIA-PANTALLA-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8503-ENVIA-PANTALLA-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8503-ENVIA-PANTALLA-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8601-RECIBE-PANTALLA-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8602-RECIBE-PANTALLA-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8603-RECIBE-PANTALLA-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9205-GRABA-PROYECTO-RIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9206-INS-REG-ZMDT800', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9221-ABRE-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9222-FETCH-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9223-CLOSE-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4685], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9225-PROCESA-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4720], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9226-GRABA-REG-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4786], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9227-INS-REG-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4940], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9227-UPD-REG-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4992], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBP487'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5090], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5097], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5076], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5083], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [897], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'US-REG', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2063], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'US-REG', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2071, 2100, 2114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'US-REG', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2073, 2102, 2116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZCTLPROC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMGZ561'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMGZ562'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMGZM56'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBV487'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBV492'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWLL005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWLV011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [483], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR055'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR652'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [468], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZZMDT800'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [581], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZZMDTRIC'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [577], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [191, 198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3000-VALIDA-OPCION', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8400-INFORMACION-ENCABEZADOS', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8550-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8550-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [309, 367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMH5541'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [219, 249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMH5561'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [215, 249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMH5651'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [249, 268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMH5661'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-CONTROL', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '1000-INICIALIZA', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-ESTADO-01', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2060-EXI-CPTO-EMPRE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [498], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2060-EXI-CPTO-EMPRE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2100-VERIFICA-LLAVE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2100-VERIFICA-LLAVE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2110-SELECT-CONCEPT', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [537], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2121-SELECT-PARAM', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2131-SELECT-APLIDER', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2141-SELECT-PROMOT', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [717], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2151-SELECT-CUENTA', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [770], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3311-CUSOR-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [874], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3321-CURSOR-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [970], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3331-CURSOR-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1010], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3500-LEE-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1031, 1039, 1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3600-CLOSE-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1057, 1062, 1067], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '4000-ESTADO-02', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1081], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '4410-ATRAPA-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1276, 1284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '4420-UPDATE-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '4430-CLOSE-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '7000-PREPARA-ENCAB-INICIAL', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1408], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-JUSTIFICA-STRINGS', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1490, 1494, 1498, 1502, 1506, 1512, 1518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8510-CAMPOS-NUMERICOS-EDO1', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1530, 1560, 1590, 1622, 1652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8700-JUSTIFICA-STRINGS-03', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1728], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1742], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1749], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1756], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1763], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'KAPLIDER'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'KCONCEPT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'KSUSCRIP'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMW9401'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSH940'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSR468'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSRA12'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZPROMOT'})
MERGE (a)-[r:IMPLEMENTED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGT20'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGZ11'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGZ12'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGZ18'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MGZ56'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MH554'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MH556'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MH565'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MH566'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Functionality {name: 'FUNCTIONALITY_ZM1MH940'})
MERGE (a)-[r:IMPLEMENTS_FUNCTIONALITY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMGT201'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMGZ111'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMGZ121'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSR468'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ12'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMGM181'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZCTLPROC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMGZ561'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMGZ562'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMGZM56'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBP487'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBV487'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBV492'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWLL005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWLV011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5090], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5097], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [483], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5076], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5083], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR055'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR652'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [468], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZZMDT800'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [581], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:Copybook {name: 'ZZMDTRIC'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [577], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMH5541'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMH5561'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMH5651'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMH5661'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'KAPLIDER'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'KCONCEPT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'KSUSCRIP'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMW9401'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1728], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1742], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1749], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1756], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1763], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSH940'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSR468'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSRA12'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:Copybook {name: 'ZPROMOT'})
MERGE (a)-[r:INCLUDES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:DBTable {name: 'CONCEPT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3397, 3398, 3399, 3400, 3401, 3402, 3403, 3404, 3405, 3406, 3407, 3408], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2151, 2152, 2153, 2154, 2155, 2156, 2157, 2158, 2159, 2160, 2161, 2162, 2163, 2164, 2171, 2172, 2173, 2174, 2175, 2176, 2177, 2178], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 3855, 3856, 3857, 3858, 3859, 3860, 3861, 3862, 3863, 3864, 3865], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:DBTable {name: 'ZMDT800'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3347, 3348, 3349, 3350, 3351, 3352, 3353, 3354, 3355, 4387, 4388, 4389, 4390, 4391, 4392, 4393, 4394, 4395], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:DBTable {name: 'ZMDTRIC'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 4749, 4750, 4751, 4752, 4753, 4754, 4755, 4756, 4757, 4758, 4759, 4760, 4761, 4762, 4763, 4764, 4765, 4766, 4767, 4768, 4769, 4770, 4771, 4772, 4773, 4774, 4775, 4776, 4777, 4778, 4779, 4780, 4781, 4782, 4783, 4784, 4785], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:DBTable {name: 'APLIDER'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:DBTable {name: 'CONCEPT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:DBTable {name: 'CUENTA'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [760, 761, 762, 763, 764, 765, 766, 767, 768, 769], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:DBTable {name: 'PARAM'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:DBTable {name: 'PROMOT'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:DBTable {name: 'SUSCRIP'})
MERGE (a)-[r:READS_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 954, 955, 956, 957, 958, 959, 960, 961, 962, 963, 964, 965, 992, 993, 994, 995, 996, 997, 998, 999, 1000, 1001, 1002, 1003, 1004, 1005, 1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269, 1270, 1271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGT20', name: 'ZM1MGT20_PROCESSING'}), (b:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ11', name: 'ZM1MGZ11_PROCESSING'}), (b:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ12', name: 'ZM1MGZ12_PROCESSING'}), (b:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [324], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ18', name: 'ZM1MGZ18_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [215], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MGZ56', name: 'ZM1MGZ56_PROCESSING'}), (b:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5010], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH554', name: 'ZM1MH554_PROCESSING'}), (b:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [297], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH556', name: 'ZM1MH556_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH565', name: 'ZM1MH565_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [212], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH566', name: 'ZM1MH566_PROCESSING'}), (b:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [246], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:SubFunctionality {functionalityName: 'FUNCTIONALITY_ZM1MH940', name: 'ZM1MH940_PROCESSING'}), (b:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'})
MERGE (a)-[r:REALIZED_BY]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1690], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:DBTable {name: 'CTLPROC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2171, 2172, 2173, 2174, 2175, 2176, 2177, 2178, 2207, 2208, 2209, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:DBTable {name: 'ZMDT800'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4425, 4426, 4427, 4428, 4429, 4430, 4431, 4432, 4433, 4434, 4435, 4436, 4437, 4438, 4439, 4440, 4441, 4442, 4443, 4444, 4445, 4446, 4447, 4448, 4449, 4450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MGZ56'}), (b:DBTable {name: 'ZMDTRIC'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4908, 4909, 4910, 4911, 4912, 4913, 4914, 4915, 4916, 4917, 4918, 4919, 4920, 4921, 4922, 4923, 4924, 4925, 4926, 4927, 4928, 4929, 4930, 4931, 4932, 4933, 4934, 4935, 4936, 4937, 4938, 4939, 4980, 4981, 4982, 4983, 4984, 4985, 4986, 4987, 4988, 4989, 4990, 4991], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:DBTable {name: 'OF'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1257, 1258, 1259, 1260, 1261, 1262, 1263, 1264, 1265, 1266, 1267, 1268, 1269, 1270, 1271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Program {name: 'ZM1MH940'}), (b:DBTable {name: 'SUSCRIP'})
MERGE (a)-[r:UPDATES_TABLE]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [170], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [133, 142, 151, 160], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-INFORMACION-ENCABEZADOS', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [185], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [200], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [253], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [257], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [265], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [226, 271], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [241], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-RECIBE-PANTALLA', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [48], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMGT201'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [81], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGT20'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGT20.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-RUTINA-DE-CONTROL', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [139], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0001-INICIO', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8020-TRANSFERENCIA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8040-ALINEA-COMANDO', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [224], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-GENERA-MAPA1', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-RECICLA-MAPA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [245], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8520-ACTUALIZA-FECHA-HORA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [258], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [278, 314], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [321], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [328], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [342], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [349], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [298], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8540-ENVIA-PANTALLA', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [307], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [86], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMGZ111'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [96], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [98], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [94], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ11'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ11.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [220], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2100-PROCESA-ESTADO-1', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [246, 255, 264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8400-INFORMACION-ENCABEZADOS', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [290], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [319], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [364], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [372], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [380], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [387], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [397], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [410], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [333, 404], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [348], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [356], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [196], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [194], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMGZ121'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [173], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [131], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [136], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [141], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [146], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSR468'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ12'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ12.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [137], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0010-INICIO-APLICACION', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [140], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [188], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [213], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [218, 250], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [262], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [282], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [232], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [238], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [62], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [65], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMGM181'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [109], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [74], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [77], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [84], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [101], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [88], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ18'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ18.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [936, 944], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-PROCESA-ESTADO-0', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [941], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2001-PROCESA-ESTADO-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBP487'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [970, 1141, 1237, 1292], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2001-PROCESA-ESTADO-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1206, 1216], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2002-PROCESA-ESTADO-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1445], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2003-PROCESA-ESTADO-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1699], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2101-ATRIBUTOS-ESTADO-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [1973], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3350-VALIDA-PROC-EN-EJEC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3350-VALIDA-PROC-EN-EJEC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3360-INS-EVE-PROC-EN-EJEC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3360-UPD-SW-VALIDA-RIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5002-BORRA-QUEUE-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2535], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5002-CLOSE-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2505], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5002-FETCH-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2453], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5002-OPEN-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2399], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5003-BORRA-QUEUE-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2553], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5003-CLOSE-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2519], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5003-FETCH-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2485], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '5003-OPEN-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2424], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '6202-MODIFICA-VALORES-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2624, 2644, 2653, 2662, 2677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '6203-MODIFICA-VALORES-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBP487'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2891, 2920, 2949, 2983, 3012, 3041], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '6203-MODIFICA-VALORES-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2751, 2771, 2790, 2829, 2848, 2882, 2911, 2940, 2974, 3003, 3032], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8501-ENVIA-PANTALLA-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4054], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8501-ENVIA-PANTALLA-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4029], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8501-ENVIA-PANTALLA-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4069], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8502-ENVIA-PANTALLA-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4105], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8502-ENVIA-PANTALLA-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4075], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8502-ENVIA-PANTALLA-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8503-ENVIA-PANTALLA-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4218], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8503-ENVIA-PANTALLA-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8503-ENVIA-PANTALLA-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4233], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8601-RECIBE-PANTALLA-1', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4247], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8602-RECIBE-PANTALLA-2', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4263], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8603-RECIBE-PANTALLA-3', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9205-GRABA-PROYECTO-RIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4396], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9206-INS-REG-ZMDT800', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4451], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9221-ABRE-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4646], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9222-FETCH-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4665], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9223-CLOSE-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4685], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9225-PROCESA-C-CUENTAS-ASOC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4720], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9226-GRABA-REG-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4786], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9227-INS-REG-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4940], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9227-UPD-REG-ZMDTRIC', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [4992], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBP487'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5138], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5090], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5097], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5104], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5118], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5132], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5076], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9230-GRABA-EXCEP-CTA-ISIN', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [5083], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [897], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'LINKAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [895], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'US-REG', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2063], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'US-REG', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2071, 2100, 2114], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'US-REG', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [2073, 2102, 2116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [499], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [504], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [557], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [569], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZCTLPROC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [565], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [573], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMGZ561'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [592], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMGZ562'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [677], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMGZM56'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [587], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBV487'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [493], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWBV492'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [432], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWLL005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [385], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWLV011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [57], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [473], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [478], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [483], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [488], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [427], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [462], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [444], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR055'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [456], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSR652'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [468], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSRARM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [527], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSRPRC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [524], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [450], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [561], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZZMDT800'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [581], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MGZ56'}), (b:Copybook {name: 'ZZMDTRIC'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MGZ56.cbl', evidenceLines: [577], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [191, 198], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [166], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3000-VALIDA-OPCION', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8400-INFORMACION-ENCABEZADOS', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [251], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-ENVIA-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [277], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8550-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [283], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8550-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [295], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [335], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [341], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [347], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [353], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [359], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [373], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [309, 367], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [323], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8600-RECIBE-PANTALLA', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [329], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [106], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [108], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMH5541'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [124], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [126], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [128], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [133], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [113], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [119], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH554'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH554.cbl', evidenceLines: [116], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [129], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [158], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [201], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [219, 249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [279], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [273], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [63], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [67], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [54], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMH5561'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [71], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [117], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [75], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [79], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [83], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [59], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [92], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [102], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH556'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH556.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [152], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [122], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [157], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [187], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [197], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [210], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [243], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [215, 249], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [255], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [261], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [267], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [281], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [275], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [237], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [56], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [60], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [33], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMH5651'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [64], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [110], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [68], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [72], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [76], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [52], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [100], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [85], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH565'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH565.cbl', evidenceLines: [90], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [186], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-INICIO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8000-TRANSFIERE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [191], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-RECIBE-PANTALLA', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [231], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8110-ENVIA-PANTALLA', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [244], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [264], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [249, 268], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC004'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [272], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [276], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [280], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [288], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [256], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8120-ENCABEZADO', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [260], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [91], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [95], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [55], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMH5661'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [99], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [145], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [103], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [107], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [111], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [115], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [87], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [135], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [120], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [130], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH566'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH566.cbl', evidenceLines: [125], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '0000-CONTROL', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [252], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '1000-INICIALIZA', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [304], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2000-ESTADO-01', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [337], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2060-EXI-CPTO-EMPRE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [498], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2060-EXI-CPTO-EMPRE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [500], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2100-VERIFICA-LLAVE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [379], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2100-VERIFICA-LLAVE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [381], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2110-SELECT-CONCEPT', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [537], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2121-SELECT-PARAM', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [588], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2131-SELECT-APLIDER', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [649], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2141-SELECT-PROMOT', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [717], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '2151-SELECT-CUENTA', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [770], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3311-CUSOR-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [874], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3321-CURSOR-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [970], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3331-CURSOR-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1010], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3500-LEE-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1031, 1039, 1047], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '3600-CLOSE-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1057, 1062, 1067], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '4000-ESTADO-02', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1081], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '4410-ATRAPA-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1276, 1284], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '4420-UPDATE-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1308], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '4430-CLOSE-SUSCRIP', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1315], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '7000-PREPARA-ENCAB-INICIAL', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1408], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8100-ENVIA-PANTALLA-INICIAL', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1438], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8500-JUSTIFICA-STRINGS', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1490, 1494, 1498, 1502, 1506, 1512, 1518], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8510-CAMPOS-NUMERICOS-EDO1', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1530, 1560, 1590, 1622, 1652], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '8700-JUSTIFICA-STRINGS-03', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1679], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC002'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1714], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC003'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1721], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC005'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1728], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC006'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1735], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC008'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1742], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1749], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC015'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1756], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC016'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1763], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM0'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1702], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: '9400-RETURN', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSCOM1'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [1708], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'DFHAID'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [172], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'DFHBMSCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [174], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'KAPLIDER'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [156], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'KCONCEPT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [153], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'KSUSCRIP'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [165], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'SQLCA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [147], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZCUENTA'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [162], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMW9401'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [176], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWCOM11'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [80], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC010'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [217], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC011'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [219], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC012'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [221], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC013'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [223], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC014'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [225], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSC017'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [227], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSG532'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [208], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSH940'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [97], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSR009'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [202], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSR432'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [199], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSR468'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [214], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSRA12'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [211], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZMWSZ403'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [205], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZPARAM'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [150], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

MATCH (a:Paragraph {name: 'WORKING-STORAGE', programName: 'ZM1MH940'}), (b:Copybook {name: 'ZPROMOT'})
MERGE (a)-[r:USES_COPYBOOK]->(b)
SET r += {evidenceFile: 'src/ZM1MH940.cbl', evidenceLines: [159], reviewRequired: true, reviewSource: 'auto-ingestion', reviewStatus: 'pending_human_review', runId: 'e2e-20260621T205945Z-zm1mgt20-zm1mgz11-zm1mgz12-zm1mgz18-zm1mgz56-zm1mh554-zm1mh556-zm1mh565-zm1mh566-zm1mh940'};

